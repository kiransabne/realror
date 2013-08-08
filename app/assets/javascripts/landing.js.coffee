# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

		$(".carousel").carouFredSel({
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
			items   : 4,
			height  : 300,
			width   : 900
		});

		$('.product').click -> 
			$('#myModal').modal('show')
			largephoto= $(this).attr('largeurl')
			$.ajax
				type: 'get'
				url: '/products/'+$(this).attr('productid')
				dataType: 'json'
				success: (json) ->
					$('#myModalLabel').text(json.name)
					#$('.modal-body').text(json.description)
					$('#imageshowlarge').attr('src', largephoto)
					

