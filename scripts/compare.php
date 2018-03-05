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

// Получение покемонов
function getGoods($goods, $conn) {
    $query = "
        select
            p.id as good_id,
            p.name as name,
            t.type as type,
            p.height as height,
            p.weight as weight,
            p.photo as photo
        from
            pokemons as p,
            type as t
        where
            p.id in ($goods) and
            p.brand_id = t.id
    ";

    $data = $conn->query($query);
    return $data->fetch_all(MYSQLI_ASSOC);
}

// Получение свойств покемонов
function getProps($goods, $conn) {
    $query = "
        select
            pp.good_id as good_id,
            pp.prop as prop,
            pp.value as value
        from
            pokemons_props as pp
        where
            pp.good_id in ($goods)
    ";

    $data = $conn->query($query);
    return $data->fetch_all(MYSQLI_ASSOC);
}

// Получение всех данных для сравнения покемонов
function getData($goods, $conn) {
    $result = array(
        'goods' => getGoods($goods, $conn),
        'props' => getProps($goods, $conn)
    );

    return $result;
}


try {
    // Подключаемся к базе данных
    $conn = connectDB();

    // Получаем покемонов
    $data = getData(urldecode($_GET['goods']), $conn);

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
