$(window).on('scroll', function() {
	if ($(this).scrollTop() > 500) {
		$(".goto-top").show();
	} else {
		$(".goto-top").hide();
	}
});


$(".goto-top").on('click', function() {
	$(window).scrollTop(0);
});