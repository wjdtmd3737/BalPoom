<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/master_header.css?ver=1">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>

<title>BalPoom</title>

<script type="text/javascript" src="./js/fitple_header.js?ver=2"></script>
</head>
<body>
	<div class="header_wraper">
		<div id="header_mySidenav" class="header_sidenav">
			<a href="javascript:void(0)" class="header_closebtn"
				onclick="closeNav()">&times;</a> <select id="header_choice">
				<option selected>Outer</option>
				<option>Top</option>
				<option>Bottom</option>
			</select><br>
			<form action="fitple.do" id="header_fitple-form" method="post"></form>
		</div>

		<span id="header_fitple" style="cursor: pointer" onclick="openNav()"><img
			src="./img/fitple.png" /></span>




		<div id="header_header">
			<center>
				<div id="header_logo">
					<a href="main.jsp"><img src="./img/logo_.jpg" /></a>
				</div>
			</center>
		</div>
		<div id="header_small_navbar">
			<ul>
				<c:if test="${ empty authMember }">
					<li><a href="agreePage.jsp" class="header_member">회원가입</a></li>
					<li style="width: 60px;"><a href="login.jsp"
						class="header_member">로그인</a></li>
					<li><a href="getNoticeList.do" class="header_member">공지사항</a></li>
				</c:if>
				<c:if test="${! empty authMember }">
					<li><a href="mypage.do" class="header_member">MyPage</a></li>
					<li style="width: 70px;"><a href="logout.do"
						class="header_member">LogOut</a></li>
					<li><a href="getNoticeList.do" class="header_member">공지사항</a></li>
				</c:if>
			</ul>
		</div>
		<div id="header_navbar">
			<center>
				<a href="getOveralls.do?p_type=Outer">
				<div id="header_outer" class="header_menu">
					<b>Outer</b><br>---<br>Coat&amp;Jackek
				</div>
				</a>
				<a href="getOveralls.do?p_type=Top">
				<div id="header_top" class="header_menu">
					<b>Top</b><br>---<br>Shirt&amp;Hoodie
				</div>
				</a>
				<a href="getOveralls.do?p_type=Bottom">
				<div id="header_bottom" class="header_menu">
					<b>Bottom</b><br>---<br>Jean&amp;Slacks
				</div>
				</a>
				<a href="getOveralls.do?p_type=Shoes">
				<div id="header_shoes" class="header_menu">
					<b>Shoes</b><br>---<br>Dress&amp;Running
				</div>
				</a>
			</center>
		</div>
	</div>
	<div id="header_submenu"class="submenu" style="height: 40px">
		<ul style="height: 40px">
		
		 	<li style="height: 40px" class="sub_Outer">
		 	<a href="getOverallsDetails.do?p_type=Outer&p_type_detail=Coat" style="padding:10px 135px;">
		 	Coat</a></li>
 			<li style="height: 40px" class="sub_Outer">
 			<a href="getOverallsDetails.do?p_type=Outer&p_type_detail=Jacket" style="padding:10px 135px;">
 			Jacket</a></li>
 			<li style="height: 40px" class="sub_Outer">
 			<a href="getOverallsDetails.do?p_type=Outer&p_type_detail=Bubble">
 			Bubble</a></li>
 			<li style="height: 40px" class="sub_Outer">
 			<a href="getOverallsDetails.do?p_type=Outer&p_type_detail=AndSoOn" style="padding:10px 115px;">
 			AndSoOn</a></li>
 			<li style="height: 40px" class="sub_Top">
 			<a href="getOverallsDetails.do?p_type=Top&p_type_detail=TShirt" style="padding:10px 135px;">
 			TShirt</a></li>
 			<li style="height: 40px" class="sub_Top">
 			<a href="getOverallsDetails.do?p_type=Top&p_type_detail=Shirt" style="padding:10px 135px;">
 			Shirt</a></li>
 			<li style="height: 40px" class="sub_Top">
 			<a href="getOverallsDetails.do?p_type=Top&p_type_detail=Hoody">
 			Hoody</a></li>
 			<li style="height: 40px" class="sub_Top">
 			<a href="getOverallsDetails.do?p_type=Top&p_type_detail=AndSoOn" style="padding:10px 115px;">
 			AndSoOn</a></li>
 			<li style="height: 40px" class="sub_Bottom">
 			<a href="getOverallsDetails.do?p_type=Bottom&p_type_detail=Jeans" style="padding:10px 135px;">
 			Jeans</a></li>
 			<li style="height: 40px" class="sub_Bottom">
 			<a href="getOverallsDetails.do?p_type=Bottom&p_type_detail=Slacks">
 			Slacks</a></li>
 			<li style="height: 40px" class="sub_Bottom">
 			<a href="getOverallsDetails.do?p_type=Bottom&p_type_detail=Cotton">
 			Cotton</a></li>
 			<li style="height: 40px" class="sub_Bottom">
 			<a href="getOverallsDetails.do?p_type=Bottom&p_type_detail=Training" style="padding:10px 120px;">
 			Training</a></li>
 			<li style="height: 40px" class="sub_Shoes">
 			<a href="getOverallsDetails.do?p_type=Shoes&p_type_detail=Running">
 			Running</a></li>
 			<li style="height: 40px" class="sub_Shoes">
 			<a href="getOverallsDetails.do?p_type=Shoes&p_type_detail=Sneakers">
 			Sneakers</a></li>
 			<li style="height: 40px" class="sub_Shoes">
 			<a href="getOverallsDetails.do?p_type=Shoes&p_type_detail=Sports">
 			Sports</a></li>
 			<li style="height: 40px" class="sub_Shoes">
 			<a href="getOverallsDetails.do?p_type=Shoes&p_type_detail=Classic" style="padding:10px 125px;">
 			Classic</a></li>
		</ul>
	</div>



	<script src="./js/sticky_header.js?ver=1"></script>
	<script src="./js/subMenu.js?ver=1"></script>
	<script>
		function openNav() {
			document.getElementById("header_mySidenav").style.width = "600px";
		}

		function closeNav() {
			document.getElementById("header_mySidenav").style.width = "0";
		}
	</script>
</body>
</html>