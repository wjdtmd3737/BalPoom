var headerHeight=document.getElementById("wrapper2");
var navbarHeight=document.getElementById("navbar");

//console.log(navbarHeight.offsetHeight);
var wrapper=headerHeight.offsetHeight;
var navbar=navbarHeight.offsetHeight;

//var follow=detailFollowHeight.offsetHeight;
//console.log(header);
 //headerHeight.style.height=screen.height-navbar;

$(document).ready(function(){
	if(window.pageYOffset > 800)
	{
		navbarHeight.style.position="fixed";
		navbarHeight.style.top="0px";
		navbarHeight.style.width="1205px";
			
	}
	
	else
	{
		navbarHeight.style.position="relative";
		
		navbarHeight.style.top="0px";
	}
		
})
window.addEventListener("scroll", stop);



//$('#pro_detail_follow').stick_in_parent({parent : '#followBox'});


//$(document).ready(function(){
//    $('[data-toggle="tooltip"]').tooltip();   
//});
//
//$(document).scroll(function(){
//	
//	var basketPosition = parseInt($("#pro_detail_follow").css("wrapper2"))
//	
//	var position = $(window).scrollTop();
//	
//	$("#pro_detail_follow").stop().animate({"top" : position + basketPosition + "px"},3000);
//	
//})




//
//
//
//$(document).ready(function(){
//	
//	var top = $('#pro_detail_follow').offset().top -
//				parseFloat($('#pro_detail_follow').css('marginTop').replace(/auto/,0));
//			  $(window).scroll(function (event){
//				
//				  var y = $(this).scrollTop();
//				  
//				  if(y>=top){
//					  $('#pro_detail_follow').addClass('fixed');
//					  
//				  }else{
//					  
//					  $('pro_detail_follow').removeClass('fixed');
//				  }
//			  })
//})


/*jQuery(function($){
	// Lined Tab Navigation
	var $tab_line = $('.navbar.navbar-default');
	$tab_line.removeClass('.nav.navber-nav').find('li li li').hide();
	$tab_line.find('li li li.active').parents('li').addClass('active');
	$tab_line.find('li.active>ul').show();
	function lineTabMenuToggle(event){
		var $this = $(this);
		$this.next('ul').show().parent('li').addClass('active').siblings('li').removeClass('active').find('>ul').hide();
		if($this.attr('href') === '#'){
			return false;
		}
	}
	function lineTabSubMenuActive(){
		$(this).parent('li').addClass('active').siblings('li').removeClass('active');
		if($this.attr('href') === '#'){
			return false;
		}
	}; 
	$tab_line.find('>li>a').click(lineTabMenuToggle).focus(lineTabMenuToggle);
	$tab_line.find('li li>a').click(lineTabSubMenuActive).focus(lineTabSubMenuActive);
});*/

/*$(function(){

	$("ul.inform li:not("+$("ul.nav navbar-nav li.active a.selected").attr("href")+")").hide()
	
	$("ul.nav navbar-nav li.active a").click(function(){
		//a에 있는 모든 클래스 selected 삭제
		$("ul.nav navbar-nav li.active a").removeClass("selected");

		//현재 요소에만 selected 클래스 추가
		$(this).addClass("selected");

		//탭 변경에 맞게 inform 표시 비표시
		$("ul.inform li").hide();

		//현재 클릭된 요소만 보여줌.
		$($(this).attr("href")).show();

		return false;
	});
});*/

/*$('.wrapper2 .container-fluid').click(function(){

    if ($(this).hasClass('pro_detail_img')) {
        $('.wrapper2 .container-fluid').removeClass('active');
        $(this).addClass('active');
        $('.fullBox').hide();
        $('pro_detail_img').show();
	} 
	 
    if ($(this).hasClass('pro_detail_review')) {
        $('.wrapper2 .container-fluid').removeClass('active');
        $(this).addClass('active');
        $('.fullBox').hide();
        $('pro_detail_review').show();
	}
	
	if ($(this).hasClass('pro_detail_qna')) {
        $('.wrapper2 .container-fluid').removeClass('active');
        $(this).addClass('active');
        $('.fullBox').hide();
        $('pro_detail_qna').show();
	}
	
	if ($(this).hasClass('pro_detail_change')) {
        $('.wrapper2 .container-fluid').removeClass('active');
        $(this).addClass('active');
        $('.fullBox').hide();
        $('pro_detail_change').show();
	}
});*/
// 스크립트 시작 -->
	var divid1 = document.getElementById("pro_detail_inform").id;
	var divid2 = document.getElementById("pro_detail_review").id;
	var divid3 = document.getElementById("pro_detail_qna").id;
	var divid4 = document.getElementById("pro_detail_change").id;
	var fullbox1 = document.getElementById("wrapper2").id;

	
	function div_OnOff(v) {
			// 라디오 버튼 value 값 조건 비교
	if(v=="1"){
		document.getElementById(divid1).style.display = ""; // 보여줌
		document.getElementById(divid2).style.display = "none"; // 숨김
		document.getElementById(divid3).style.display = "none"; // 숨김
		document.getElementById(divid4).style.display = "none"; // 숨김
		document.getElementById(fullbox1).style.height = ""; 
	}else if(v=="2"){
		document.getElementById(divid1).style.display = "none"; // 보여줌
		document.getElementById(divid2).style.display = ""; // 숨김
		document.getElementById(divid3).style.display = "none"; // 숨김
		document.getElementById(divid4).style.display = "none"; // 숨김
		document.getElementById(fullbox1).style.height = "800px"; // 숨김
	}else if(v=="3") {
		document.getElementById(divid1).style.display = "none"; // 보여줌
		document.getElementById(divid2).style.display = "none"; // 숨김
		document.getElementById(divid3).style.display = ""; // 숨김
		document.getElementById(divid4).style.display = "none"; // 숨김
		document.getElementById(fullbox1).style.height = "800px"; // 숨김
	}else if(v=="4"){
		document.getElementById(divid1).style.display = "none"; // 보여줌
		document.getElementById(divid2).style.display = "none"; // 숨김
		document.getElementById(divid3).style.display = "none"; // 숨김
		document.getElementById(divid4).style.display = ""; // 숨김
		document.getElementById(fullbox1).style.height = "3000px"; // 숨김
	}
}



/*$('.tabs .tab').click(function(){
    if ($(this).hasClass('signin')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signin-cont').show();
    } 
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});*/
