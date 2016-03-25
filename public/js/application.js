$(document).ready( function() {

	$('#image1').mouseenter( function() {
		$(this).animate( {
			'height': '+=5%',
			'width': '+=5%'
		});
		$('#t01').fadeTo(500, 0);
		$('.url_form').fadeTo(500, 0);
		$('#intro').animate({'font-size': '24px'});
	});

	$('#image1').mouseleave( function() {
		$(this).animate( {
			'height': '-=5%',
			'width': '-=5%'
		});
		$('#t01').fadeTo(500, 1);
		$('.url_form').fadeTo(500, 1);
		$('#intro').animate({'font-size': '18px'});
	});
});