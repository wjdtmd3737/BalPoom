var headerHeight=document.getElementById("header");
var navbarHeight=document.getElementById("navbar");
//console.log(navbarHeight.offsetHeight);
var header=headerHeight.offsetHeight;
var navbar=navbarHeight.offsetHeight;
//console.log(header);
 //headerHeight.style.height=screen.height-navbar;

function stop(){
	if(window.pageYOffset > header)
	{
		navbarHeight.style.position="fixed";
		navbarHeight.style.top="0px";
	}
	else
	{
		navbarHeight.style.position="static";
		navbarHeight.style.top="0px";
	}
}
window.addEventListener("scroll", stop);
