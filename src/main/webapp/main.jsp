<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/master.css?ver=3">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="./js/bestProd.js?ver=1"></script>
<title>BalPoom</title>

<script type="text/javascript">
	var list = {
		1 : "Outer",
		2 : "Top",
		3 : "Bottom",
		4 : "Shoes"
	};
	var insertHTML = "";
	$(document)
			.ready(
					function() {
						$
								.ajax({
									type : 'POST',
									url : '/biz/getMainOveralls.do',
									data : list,
									success : function(data) {
										for (var i = 0; i < 3; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.outer_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.outer_best[i].modify_date+'/'+data.outer_best[i].p_common_name+'/'+data.outer_best[i].modify_date+'_'+data.outer_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.outer_best[i].modify_date+'/'+data.outer_best[i].p_common_name+'/'+data.outer_best[i].modify_date+'_'+data.outer_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.outer_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.outer_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.outer_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line1")
													.append(insertHTML);
											insertHTML = "";
										}
										for (var i = 3; i < 6; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.outer_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.outer_best[i].modify_date+'/'+data.outer_best[i].p_common_name+'/'+data.outer_best[i].modify_date+'_'+data.outer_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.outer_best[i].modify_date+'/'+data.outer_best[i].p_common_name+'/'+data.outer_best[i].modify_date+'_'+data.outer_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.outer_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.outer_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.outer_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line2")
													.append(insertHTML);
											insertHTML = "";
										}
										//outer
										for (var i = 0; i < 3; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.top_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.top_best[i].modify_date+'/'+data.top_best[i].p_common_name+'/'+data.top_best[i].modify_date+'_'+data.top_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.top_best[i].modify_date+'/'+data.top_best[i].p_common_name+'/'+data.top_best[i].modify_date+'_'+data.top_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.top_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.top_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.top_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line3")
													.append(insertHTML);
											insertHTML = "";
										}
										for (var i = 3; i < 6; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.top_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.top_best[i].modify_date+'/'+data.top_best[i].p_common_name+'/'+data.top_best[i].modify_date+'_'+data.top_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.top_best[i].modify_date+'/'+data.top_best[i].p_common_name+'/'+data.top_best[i].modify_date+'_'+data.top_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.top_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.top_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.top_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line4")
													.append(insertHTML);
											insertHTML = "";
										}
										//top
										for (var i = 0; i < 3; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.bottom_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.bottom_best[i].modify_date+'/'+data.bottom_best[i].p_common_name+'/'+data.bottom_best[i].modify_date+'_'+data.bottom_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.bottom_best[i].modify_date+'/'+data.bottom_best[i].p_common_name+'/'+data.bottom_best[i].modify_date+'_'+data.bottom_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.bottom_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.bottom_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.bottom_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line5")
													.append(insertHTML);
											insertHTML = "";
										}
										for (var i = 3; i < 6; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.bottom_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.bottom_best[i].modify_date+'/'+data.bottom_best[i].p_common_name+'/'+data.bottom_best[i].modify_date+'_'+data.bottom_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.bottom_best[i].modify_date+'/'+data.bottom_best[i].p_common_name+'/'+data.bottom_best[i].modify_date+'_'+data.bottom_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.bottom_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.bottom_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.bottom_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line6")
													.append(insertHTML);
											insertHTML = "";
										}
										//bottom
										for (var i = 0; i < 3; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.shoes_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.shoes_best[i].modify_date+'/'+data.shoes_best[i].p_common_name+'/'+data.shoes_best[i].modify_date+'_'+data.shoes_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.shoes_best[i].modify_date+'/'+data.shoes_best[i].p_common_name+'/'+data.shoes_best[i].modify_date+'_'+data.shoes_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.shoes_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.shoes_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.shoes_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line7")
													.append(insertHTML);
											insertHTML = "";
										}
										for (var i = 3; i < 6; i++) {
											insertHTML += '<a href="getProduct.do?r_no='+data.shoes_best[i].r_no+'"><div class="bestOuter">';
											insertHTML += '<div id=divImg>';
											insertHTML += '<img class="img1" src="./product_img/'+data.shoes_best[i].modify_date+'/'+data.shoes_best[i].p_common_name+'/'+data.shoes_best[i].modify_date+'_'+data.shoes_best[i].p_common_name+'0.jpg"> <img';
					insertHTML +=	'	class="img2" src="./product_img/'+data.shoes_best[i].modify_date+'/'+data.shoes_best[i].p_common_name+'/'+data.shoes_best[i].modify_date+'_'+data.shoes_best[i].p_common_name+'1.jpg">';
											insertHTML += '</div>';
											insertHTML += '<div id=divText>';
											insertHTML += '	<p id="storeName">'
													+ data.shoes_best[i].s_busi_name
													+ '</p>';
											insertHTML += '	<p id="productName">'
													+ data.shoes_best[i].p_name
													+ '</p>';
											insertHTML += '	<p id="price">'
													+ data.shoes_best[i].p_price
													+ '</p>';
											insertHTML += '</div>';
											insertHTML += '</div></a>';
											$("#outer_line8")
													.append(insertHTML);
											insertHTML = "";
										}
									}
								});
					});
</script>
</head>
<body>
	<div class="wraper">
		<jsp:include page="header.jsp"></jsp:include>

		<div id=slide_container>
			<div class="slides">
				<img src="./img/slide1.jpg" />
			</div>
			<div class="slides">
				<img src="./img/slide2.jpg" />
			</div>
			<div class="slides">
				<img src="./img/slide3.jpg" />
			</div>
			<div class="slides">
				<img src="./img/slide4.jpg" />
			</div>
		</div>
		<br>
		<div id="dot_group" style="text-align: center">
			<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
			<span class="dot"></span>
		</div>

		<div id="left">
			<img src="./img/leftfoot.png" />
		</div>
		<div id="right">
			<img src="./img/rightfoot.png" />
		</div>
		<div id="best_pro_div">
			<div class="frame">
					<p id="boTitle">OUTER BEST</p>
					<div class="line1" id="outer_line1"></div>
					<br><br>
					<div class="line2" id="outer_line2"></div>

			</div>
			<div class="frame">
					<p id="boTitle">TOP BEST</p>
					<div class="line1" id="outer_line3"></div>
					<br><br>
					<div class="line2" id="outer_line4"></div>

			</div>
			<div class="frame">
					<p id="boTitle">BOTTOM BEST</p>
					<div class="line1" id="outer_line5"></div>
					<br><br>
					<div class="line2" id="outer_line6"></div>

			</div>
			<div class="frame">
					<p id="boTitle">SHOES BEST</p>
					<div class="line1" id="outer_line7"></div>
					<br><br>
					<div class="line2" id="outer_line8"></div>

			</div>
			<div id="btn_group">
				<button id="btn_move1" class="button_move" onclick="fnMove('1')"></button>
				&nbsp;&nbsp;
				<button id="btn_move2" class="button_move" onclick="fnMove('2')"></button>
				&nbsp;&nbsp;
				<button id="btn_move3" class="button_move" onclick="fnMove('3')"></button>
				&nbsp;&nbsp;
				<button id="btn_move4" class="button_move" onclick="fnMove('4')"></button>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<script type="text/javascript" src="./js/slideshow.js"></script>

</body>
</html>