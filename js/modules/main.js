'use strict';

// Модуль приложения
var app = (function($) {

		var $body = $('body'),
				page = $body.data('page');
				
		function init() {
				if (page === 'catalogPag') {
					catalogPag.init();
					compare.init();
				}
				if (page === 'compare') {
					compare.init();
				}
				compare.updateCompareTab();
		}
		
		return {
			init: init
		}    

})(jQuery);

jQuery(document).ready(app.init);