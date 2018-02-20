<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="./css/sellerProductList.css?ver=11">
<title>상품목록</title>

</head>
<body>
	<div id="sellerProduct_wrapper">
		<div id="sellerProduct_header">

			<p class="spl_title">
				<font style="font-size: 35px;">${authSeller.s_busi_name }</font>님의
				상품목록
			</p>
			

			<div class="selectDiv" style="float:right;width:350px;">

					 <input id="selectText" name="searchKeyword" type="text" placeholder="상품명"> <input
						id="selectBtn" type="submit" value="검색" style="cursor: pointer">

				</div>
		</div>
		<input type="hidden" name="s_no" value="1">

		<table class="listTable">
			<tr>
				<td>등록번호</td>
				<td>상품타입-종류</td>
				<td>상품명</td>
				<td>옵션</td>
				<td>사이즈</td>
				<td>현재수량</td>
				<td>수량변경</td>
			</tr>

			<c:forEach items="${SellerProductList}" var="SellerProduct">
				

				<tr>
					<td>${SellerProduct.r_no}<input type="hidden"
						name="p_identifier" id="p_identifier"
						value="${SellerProduct.p_identifier}"></td>

					<td>${SellerProduct.p_type}-${SellerProduct.p_type_detail}</td>
					<td>${SellerProduct.p_name}</td>
					<td>${SellerProduct.p_color}</td>
					<td>${SellerProduct.p_size}</td>
					<td class="product_cnt${SellerProduct.p_identifier}">${SellerProduct.p_cnt}</td>
					<td><input type="text" name="${SellerProduct.p_identifier}" id="p_cnt"
						class="changecntText">
					<button type="button" class="cntchangeBtn" id="${SellerProduct.p_identifier}"  onclick="change_cnt(this.id)">변경</button></td>
				</tr>

			</c:forEach>
		</table>
		
	</div>
	<script>
	function change_cnt(id){
		var p_identifier = id;
		var cnt = $('input[name='+id+']').val();
		console.log(p_identifier);
		console.log(cnt);
		$.ajax({
			url : '/biz/updateCnt.do',
			type : 'post',
			data : {
				
				"p_identifier":p_identifier,
				"p_cnt":$('input[name='+id+']').val()
				
			},
			success : function(data) {
				if($.trim(data)){
					$('.product_cnt'+id+'').text(data);
					$('input[name='+id+']').val('');
					
				}
			}
		});
		
	}

	</script>
</body>
</html>