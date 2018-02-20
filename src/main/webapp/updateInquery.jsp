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
		<p class="insertBoard_Title">상품 문의</p>
		<form action="updateInquery.do" method="post">
			<table>
			<tr>
					<td class="td1">글번호</td>
					<td class="td1"><input type="text" name="inqu_no" class="writerbox" value="${Inquery.inqu_no }" readonly="readonly"></td>
				</tr>
				<tr>
					<td >제목</td>
					<td><input type="text" name="inqu_title" class="inpt" value="${Inquery.inqu_title}">
					</td>
				</tr>
 				<tr>
					<td>작성자</td>
					<td><input type="text" name="m_name" class="writerbox" value="${Inquery.m_name}" readonly="readonly"></td>
				</tr>
				

				<tr>
					<td colspan="2" class="boardContent"><textarea name="inqu_content"
							class="content_inpt" rows="10" cols="30" >${Inquery.inqu_content}</textarea></td>
				</tr>
				
			</table>
			
			<a href="getInqueryList.do?r_no=${Inquery.r_no }"><button  style="cursor: pointer" type="button" class="submit_btn1">목록</a>
			<button type="submit" class="submit_btn2" style="cursor: pointer">작성</button>
		</form>

	</div>
</body>
</html>