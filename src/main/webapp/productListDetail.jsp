<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품리스트</title>
<link rel="stylesheet" href="./css/productCss.css?ver=1">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
		<div id="title1">
			<div id="boTitle">
				<p id="boTitle">${p_type}BEST</p>
			</div>
			<c:forEach var="best" items="${best}">
				<a href="getProduct.do?r_no=${best.r_no }">
					<div id="outer">
						<div id=divImg>
							<img id="img1"
								src="./product_img/${best.modify_date }/${best.p_common_name}/${best.modify_date}_${best.p_common_name}0.jpg">
							<img id="img2"
								src="./product_img/${best.modify_date }/${best.p_common_name}/${best.modify_date}_${best.p_common_name}1.jpg">
						</div>
						<div id=divText>
							<p class="storeName">${best.s_busi_name }</p>
							<p class="productName">${best.p_name}</p>
							<p class="price">${best.p_price }원</p>
						</div>
					</div>
				</a>
			</c:forEach>

		</div>
		<div id="title2">
			<div id="outerMenu">
				<ul>
					<li>All</li>
					<c:forEach items="${smallCategory }" var="category">
						<li><a
							href="getOverallsDetails.do?p_type=${p_type }&p_type_detail=${category }"
							style="color: black;">${category }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div id=list>
			<div id="productMiniMenu">
				<ul>
					<li>신상품</li>
					<li>|</li>
					<li>인기상품</li>
					<li>|</li>
					<li>낮은가격</li>
					<li>|</li>
					<li>높은가격</li>
				</ul>
			</div>
			<div id="product">
				<c:forEach var="over" items="${overall.content}">
					<a href="getProduct.do?r_no=${over.r_no }">
						<div id="outer">
							<div id=divImg>
								<img id="img1"
									src="./product_img/${over.modify_date }/${over.p_common_name}/${over.modify_date}_${over.p_common_name}0.jpg">
								<img id="img2"
									src="./product_img/${over.modify_date }/${over.p_common_name}/${over.modify_date}_${over.p_common_name}1.jpg">
							</div>
							<div id=divText>
								<p class="storeName">${over.s_busi_name }</p>
								<p class="productName">${over.p_name}</p>
								<p class="price">${over.p_price }원</p>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
			<!-- <div id=pagebutton>
				<div id=btimg>
					<img src="./img/btn_page_first.PNG">
				</div>
				<div id=btimg>
					<img src="./img/btn_page_prev.PNG">
				</div>

				<table>
					<tr>

						<td id="pagebtn"
							onMouseOver="this.style.backgroundColor='#F2F2F2'; "
							onMouseOut="this.style.backgroundColor='#FFFFFF'"
							style="cursor: pointer;"
							onclick="location.href='productList.html';">1</td>
						<td onMouseOver="this.style.backgroundColor='#F2F2F2'; "
							onMouseOut="this.style.backgroundColor='#FFFFFF'"
							style="cursor: pointer;"
							onclick="location.href='productList2.html';">2</td>
						<td onMouseOver="this.style.backgroundColor='#F2F2F2'; "
							onMouseOut="this.style.backgroundColor='#FFFFFF'"
							style="cursor: pointer;"
							onclick="location.href='productList3.html';">3</td>
						<td onMouseOver="this.style.backgroundColor='#F2F2F2'; "
							onMouseOut="this.style.backgroundColor='#FFFFFF'"
							style="cursor: pointer;"
							onclick="location.href='productList4.html';">4</td>

					</tr>
				</table>


				<div id=btimg>
					<img src="./img/btn_page_next.PNG">
				</div>
				<div id=btimg>
					<img src="./img/btn_page_last.PNG">
				</div>


			</div> -->
		</div>
		<c:if test="${overall.hasOveralls() }">
					<center>
					<c:if test="${overall.startPage > 5 }">
						<a class="paging"
							href="getOverallsDetails.do?p_type_detail=${p_type_detail}&p_type=${p_type}&pNo=${overall.startPage -5 }">[이전]</a>
					</c:if>
					<c:forEach var="pNo" begin="${overall.startPage }"
						end="${overall.endPage }">
						<a class="paging" href="getOverallsDetails.do?p_type_detail=${p_type_detail}&p_type=${p_type}&pNo=${pNo }">[${pNo }]</a>
					</c:forEach>
					<c:if test="${overall.endPage < overall.totalPages }">
						<a class="paging"
							href="getOverallsDetails.do?p_type_detail=${p_type_detail}&p_type=${p_type}&pNo=${overall.startPage+5 }">[다음]</a>
					</c:if>
					</center>
				</c:if>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>


</body>
</html>