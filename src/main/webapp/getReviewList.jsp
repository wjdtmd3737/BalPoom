<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품후기</title>
<link rel="stylesheet" href="./css/getReviewList.css?ver=2">
</head>

<body>
	<center>
		<br> <br> <br>
		<div id="productInquiryBoard_wrapper">
			<p class="pibTitle">상품 후기</p>
			<form action="getReviewList.do" method="post">

				<c:if test="${ ! empty authMember }">
					<a href="callInsertReviewForm.do?r_no=${r_no}"><p class="inquiryBtn"
							style="cursor: pointer">등록하기</p></a>
				</c:if>
				<input type="hidden" value="${r_no }" name="r_no">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>

					</tr>

					<c:forEach items="${ReviewPage.content}" var="review">

						<tr>
							<td>${review.re_no}</td>

							<td><a href="getReview.do?re_no=${review.re_no}">
									${review.re_title}</a></td>
							<td>${review.m_name}</td>
							<td>${review.reg_date}</td>

						</tr>
					</c:forEach>
					<c:if test="${ReviewPage.hasReviews() }">
						<tr>
							<td colspan="5"><c:if test="${ReviewPage.startPage > 5 }">
									<a class="paging"
										href="getReviewList.do?r_no=${r_no }&pNo=${ReviewPage.startPage -5 }">[이전]</a>
								</c:if> <c:forEach var="pNo" begin="${ReviewPage.startPage }"
									end="${ReviewPage.endPage }">
									<a class="paging"
										href="getReviewList.do?r_no=${r_no }&pNo=${pNo }">[${pNo }]</a>
								</c:forEach> <c:if test="${ReviewPage.endPage < ReviewPage.totalPages }">
									<a class="paging"
										href="getReviewList.do?r_no=${r_no }&pNo=${ReviewPage.startPage+5 }">[다음]</a>
								</c:if></td>
						</tr>
					</c:if>


				</table>
		</div>


		</form>
	</center>

</body>


</html>