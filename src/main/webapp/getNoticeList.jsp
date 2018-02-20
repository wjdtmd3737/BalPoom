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
<title>공지사항</title>
<link rel="stylesheet" href="./css/getNoticeList.css?ver=4">
</head>
<body>
	<div class="wraper">
		<jsp:include page="header.jsp"></jsp:include>
		<br> <br> <br>
		<div id="noticeList_wrapper">
			<p class="pibTitle">공지사항</p>
			<form action="getNoticeList.do" method="post">
				<div class="selectDiv">

					<select id="selectBox" name="searchCondition">
						<c:forEach items="${conditionMap }" var="option">
							<option value="${option.value }">${option.key }
						</c:forEach>
					</select> <input id="selectText" name="searchKeyword" type="text"> <input
						id="selectBtn" type="submit" value="검색" style="cursor: pointer">

				</div>

				<c:if test="${! empty authMember }">
					<c:if test="${authMember.m_id eq 'ndgndg91' }">
						<a href="./insertNotice.jsp"><p class="inquiryBtn"
								style="cursor: pointer">공지하기</p></a>
					</c:if>
				</c:if>

				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>

					<c:if test="${noticePage.hasNoNotices() }">
						<tr>
							<td colspan="5">공지사항이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach items="${noticePage.content}" var="notice">

						<tr>
							<td>${notice.notice_no}</td>
							<td><a id="notice_title" href="getNotice.do?notice_no=${notice.notice_no}">${notice.notice_title}</a></td>
							<td>관리자</td>
							<td>${notice.reg_date}</td>
							<td>${notice.notice_cnt }</td>
						</tr>
					</c:forEach>
					<c:if test="${noticePage.hasNotices() }">
						<tr>
							<td colspan="5">
								<c:if test="${noticePage.startPage > 5 }">
									<a class="paging"href="getNoticeList.do?pNo=${noticePage.startPage -5 }">[이전]</a>
								</c:if>
								<c:forEach var="pNo" begin="${noticePage.startPage }" end="${noticePage.endPage }">
									<a class="paging"href="getNoticeList.do?pNo=${pNo }">[${pNo }]</a>
								</c:forEach>
								<c:if test="${noticePage.endPage < noticePage.totalPages }">
									<a class="paging"href="getNoticeList.do?pNo=${noticePage.startPage+5 }">[다음]</a>
								</c:if>
							</td>
						</tr>
					</c:if>
					<!--<c:forEach items="${noticeList}" var="notice">

						<tr>
							<td>${notice.notice_no}</td>
							<td><a href="getNotice.do?notice_no=${notice.notice_no}">${notice.notice_title}<img
									src="./img/lock.png"></a></td>
							<td>관리자</td>
							<td>${notice.reg_date}</td>
							<td>${notice.notice_cnt }</td>
						</tr>
					</c:forEach>-->

				</table>
			</form>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</html>