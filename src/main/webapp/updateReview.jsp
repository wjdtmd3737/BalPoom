<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품후기</title>
<link rel="stylesheet" href="./css/insertBoard.css?ver=5">
</head>
<body>
	<br>
	<br>
	<br>
	<div id="insertBoard_wrapper">
		<p class="insertBoard_Title">상품 후기</p>
		<form action="updateReview.do" method="post">
			<table>
				<tr>
					<td class="td1">글번호</td>
					<td class="td1"><input type="text" name="re_no" class="writerbox" value="${Review.re_no}" readonly="readonly"></td>
				</tr>
				<tr>
					<td >제목</td>
					<td ><input type="text" name="re_title" class="inpt" value="${Review.re_title}">
					</td>
				</tr>
 				<tr>
					<td>작성자</td>
					<td><input type="text" name="m_name" class="writerbox" value="${Review.m_name}" readonly="readonly"></td>
				</tr>
				

				<tr>
					<td colspan="2" class="boardContent"><textarea name="re_content"
							class="content_inpt" rows="10" cols="30" >${Review.re_content}</textarea></td>
				</tr>
				
			</table>
			<a href="getReviewList.do?r_no=${Review.r_no }"><button type="button" class="submit_btn1" style="cursor: pointer">목록</a>
			<button type="submit" class="submit_btn2" style="cursor: pointer" style="cursor: pointer">작성</button>
		</form>

	</div>
</body>
</html>