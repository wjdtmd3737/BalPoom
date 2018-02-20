<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>공지사항</title>
<link rel="stylesheet" href="./css/getNotice.css?ver=2">
</head>
<body>
	<div class="wraper">
	<jsp:include page="header.jsp"></jsp:include>
		<br> <br> <br>
		<div id="getNotice_wrapper">
			<p class="pibTitle">공지사항</p>
			<form action="" method="post">
				<table>
					<tr>
						<td>NO.${notice.notice_no }</td><td></td>
						
					</tr>
					<tr>
						<td>제목</td>
						<td>${notice.notice_title }</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>${notice.reg_date }</td>
					</tr>
					<tr>
						<td>조회수</td>
						<td>${notice.notice_cnt }</td>
					</tr>
					<tr>
						<td colspan="2" class="boardContent">${notice.notice_content }</td>
					</tr>
				</table>
			</form>

			<a href="getNoticeList.do"><p class="listbtn"
					style="cursor: pointer">목록</p></a>
			<c:if test="${! empty authMember }">
				<c:if test="${authMember.m_id eq 'ndgndg91' }">
					<a href="updateNotice.jsp"><p class="listbtn"
							style="cursor: pointer">수정</p></a>
					<a href="deleteNotice.do?notice_no=${notice.notice_no }"><p
							class="listbtn" style="cursor: pointer">삭제</p></a>
				</c:if>
			</c:if>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>


</body>
</html>