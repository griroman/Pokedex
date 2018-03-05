<?php

// Объявляем нужные константы
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'pokedex');

// Подключаемся к базе данных
function connectDB() {
    $errorMessage = 'Невозможно подключиться к серверу базы данных';
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    if (!$conn)
        throw new Exception($errorMessage);
    else {
        $query = $conn->query('set names utf8');
        if (!$query)
            throw new Exception($errorMessage);
        else
            return $conn;
    }
}

// Получение данных из массива _GET
function getOptions() {
    $categoryId = (isset($_GET['category'])) ? (int)$_GET['category'] : 0;
    $page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;
    $limit = (isset($_GET['limit'])) ? (int)$_GET['limit'] : 5;

    return array(
        'category_id' => $categoryId,
        'page' => $page,
        'limit' => $limit
    );
}


function getGoods($options, $conn) {
    // Вычисляем номер страницы и параметры для sql limit
    $page = $options['page'];
    $limit = (int)$options['limit'];
    $start = ($page - 1) * $limit;

    // Заготовка запроса, на нем базируется запрос с общим количеством покемонов и запрос с сортировками и страницами
    $queryBase = "
        select
            p.id as good_id,
            p.name as name,
            p.category_id as category_id,
            t.type as type,
            p.height as height,
            p.weight as weight,
            p.photo as photo
        from
            pokemons as p,
            type as t
        where
            $categoryWhere
            p.brand_id = t.id
    ";

    // Запрос на общее количество покемонов с указанной категорией
    $queryCountAll = 'select count(*) count_all from (' . $queryBase . ') as tmp';
    $data = $conn->query($queryCountAll);
    $row = $data->fetch_assoc();
    $countAll = (int)$row['count_all'];

    // Запрос с итоговыми данными
    $queryTotal = $queryBase . "
            order by height asc
            limit $start, $limit
        ";
    $data = $conn->query($queryTotal);
    $goods = $data->fetch_all(MYSQLI_ASSOC);

    // Возвращаем результат
    return array(
        'countAll' => $countAll,
        'goods' => $goods
    );
}


try {
    // Подключаемся к базе данных
    $conn = connectDB();

    // Получаем данные от клиента
    $options = getOptions();

    // Получаем покемонов
    $data = getGoods($options, $conn);

    // Возвращаем клиенту успешный ответ
    echo json_encode(array(
        'code' => 'success',
        'data' => $data
    ));
}
catch (Exception $e) {
    // Возвращаем клиенту ответ с ошибкой
    echo json_encode(array(
        'code' => 'error',
        'message' => $e->getMessage()
    ));
}
