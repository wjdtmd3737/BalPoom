<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품문의</title>
<link rel="stylesheet" href="./css/insertBoard.css?ver=5">
</head>
<body>


	<br>
	<br>
	<br>
	<div id="insertBoard_wrapper">
		<p class="insertBoard_Title">보드에따라 달라짐</p>
		<form action="updateNotice.do" enctype="multipart/form-data"
			method="post">
			<table>
				<tr>
					<td>글번호</td>
					<td>${notice.notice_no }</td>
				</tr>
				<tr>
					<td class="td1">제목</td>
					<td class="td1"><input type="text" name="notice_title"
						class="inpt" value="${notice.notice_title }"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td></td>
				</tr>

				<tr>
					<td colspan="2" class="boardContent"><textarea
							name="notice_content" class="content_inpt" rows="10" cols="30">${notice.notice_content }</textarea></td>
				</tr>
				<tr>
					<td>이미지 청부</td>
					<td><input type="file" name="img_upload" class="inputImg"></td>
				</tr>
			</table>
			<button type="submit" class="submit_btn">수정</button>
			<a href="getNoticeList.do">두두두</a>
		</form>

	</div>
</body>
</html>