
$(document).ready(function() {

	$("#index_slider").owlCarousel({
		autoPlay	: true,
		stopOnHover	: true,
		pagination	: true,
		singleItem	: true,
		autoHeight	: true
	});
	
	
	/*
	*		메인 슬라이더
	*/
/*
	var currentNum = 0; //★
	var $mainSliderList = $("#main_slider ul");
	var $mainSliderBtnList = $("#main_slider_number ul").children();
    var itemAmt = 5; //★

	$mainSliderBtnList.on('click', function(){
		currentNum = $mainSliderBtnList.index(this);

		$mainSliderList.children().fadeOut();
		$mainSliderList.children().eq(currentNum).fadeIn();

		var srcOff = $mainSliderBtnList.find("img").attr("src").replace("on", "off");
		$mainSliderBtnList.find("img").attr("src", srcOff);

		var srcOn = $(this).find("img").attr("src").replace("off", "on");
		$(this).find("img").attr("src", srcOn);
	});
    */
 /*   
    //★
    function cycleItems() {
        $mainSliderList.children().fadeOut();
		$mainSliderList.children().eq(currentNum).fadeIn();
        //console.log(currentNum);
        
        var t = $mainSliderBtnList.eq(currentNum);
        var srcOff = $mainSliderBtnList.find("img").attr("src").replace("on", "off");
		$mainSliderBtnList.find("img").attr("src", srcOff);

		var srcOn = t.find("img").attr("src").replace("off", "on");
		t.find("img").attr("src", srcOn);

    }
    
    //★
    var autoSlide = setInterval(function() {
        currentNum += 1;
        if (currentNum > itemAmt - 1) {
            currentNum = 0;
        }
        cycleItems();
    }, 3000);
    */
});
