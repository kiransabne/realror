# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$("#carousel").carouFredSel({
		circular: false,
		infinite: true,
		auto 	: false,
		prev	: {	
			button	: "#carousel_prev",
			key		: "left"
		},
		next	: { 
			button	: "#carousel_next",
			key		: "right"
		},
		pagination	: "#foo2_page"
		items   : 4,
		height  : 300,
		width   : 900
	});