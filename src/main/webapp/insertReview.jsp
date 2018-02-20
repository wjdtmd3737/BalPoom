<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품후기</title>
<link rel="stylesheet" href="./css/insertBoard.css?ver=9">
<script type="text/javascript" src="./js/jquery-3.3.1.min.js" charset="utf-8"></script>

<script type="text/javascript">
$(document).ready(function today(){
	var date = new Date();
	var output="";
	output+=date.getFullYear()+''+(date.getMonth()+1)+''+date.getDate()+''+date.getHours()+''+date.getMinutes()+''+date.getSeconds();
	console.log(output);
	$("#date").val(output);
	document.get
});
	
</script>
</head>
<body>


	<br>
	<br>
	<br>
	<div id="insertBoard_wrapper">
		<p class="insertBoard_Title">상품 후기</p>
		<form action="insertReview.do" enctype="multipart/form-data" method="post">
		<input type="hidden" name="r_no" value="${r_no}" id ="r_no">
		<input type="hidden" id="date" name="fileName_date">
		<input type="hidden" id="m_id" name="m_id" value="${authMember.m_id }">
			<table>
				<tr>
					<td class="td1">제목</td>
					<td class="td1"><input type="text" name="re_title" class="inpt">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="m_name" class="writerbox" value="${authMember.m_name }" readOnly>
						<input type="hidden" name="m_no" value="${authMember.m_no }"> 
					</td>
				</tr>

				<tr>
					<td colspan="2" class="boardContent"><textarea name="re_content"
							class="content_inpt" rows="10" cols="30"></textarea></td>
				</tr>
				<tr>
					<td style="padding-bottom: 8px; padding-top: 8px;">사진 첨부<br><font style="font-size:12px; color:#F78181">사진은 수정이 불가하니<br>신중히 올려주세요</font></td>
					<td><input type="file" name="uploadFile" style="padding-top:20px; font-size: 13px;"></td>
				</tr>
			</table>
			<a href="getReviewList.do?r_no=${r_no }"><button  type="button" style="cursor: pointer" class="submit_btn1">목록</a>
			<button type="submit" class="submit_btn2" style="cursor: pointer">작성</button>
			
		</form>

	</div>
</body>
</html>