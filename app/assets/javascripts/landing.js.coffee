# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->	
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

		$('#myCarousel11').carousel({
			interval: 10000
		})
					

