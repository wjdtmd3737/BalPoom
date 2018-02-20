<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품문의</title>
<link rel="stylesheet" href="./css/myPageGetBoardList.css?ver=4">
</head>

<body>
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<br> <br> <br>
		<div id="productInquiryBoard_wrapper">
			<p class="pibTitle">${authMember.m_name }님의상품 문의</p>
			<div class="ListDiv">
				<form action="getInqueryList.do" method="post">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>

					<c:forEach items="${InqueryList}" var="InqueryList">

						<tr>
							<td>${InqueryList.inqu_no}</td>
							<td><a
								href="getInquery_mypage.do?inqu_no=${InqueryList.inqu_no}"><b>${InqueryList.p_common_name }</b><br>&nbsp;&nbsp;&nbsp;&nbsp;-
									${InqueryList.inqu_title}</a></td>
							<td>${InqueryList.inqu_reg}</td>
						</tr>
					</c:forEach>
				</table>
			</form>
			</div>
		<div class="ListDiv">
			<form action="getReviewList.do" method="post">
				<br> <br>
				<p class="pibTitle">${authMember.m_name }님의상품 후기</p>
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${ReviewList}" var="ReviewList">
						<tr>
							<td>${ReviewList.re_no}</td>
							<td><a href="getReview_mypage.do?re_no=${ReviewList.re_no}"><b>${ReviewList.p_common_name }</b><br>&nbsp;&nbsp;&nbsp;&nbsp;-
									${ReviewList.re_title}</a></td>
							<td>${ReviewList.re_reg}</td>
						</tr>
					</c:forEach>

				</table>
			</form>
		</div>
		</div>
		<div class="Forfooter">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>

</html>