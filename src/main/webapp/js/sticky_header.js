var headerHeight=document.getElementById("header_header");
var navbarHeight=document.getElementById("header_navbar");
var submenu=document.getElementById("header_submenu");

//var header_header=headerHeight.offsetHeight;
//var header_navbar=navbarHeight.offsetHeight;


function stop(){
	if(window.pageYOffset > 130)
	{
		navbarHeight.style.position="fixed";
		submenu.style.position="fixed";
		navbarHeight.style.top="0px";
		submenu.style.top="123px";
	}
	else
	{
		navbarHeight.style.position="static";
		submenu.style.position="static";
		navbarHeight.style.top="0px";
		submenu.style.top="0";
	}
}
window.addEventListener("scroll", stop);
