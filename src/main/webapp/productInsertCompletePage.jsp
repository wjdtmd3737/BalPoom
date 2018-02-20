<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Balpoom</title>
    <link rel="stylesheet" href="./css/sellerIndex1.css?ver=17">
    <link rel="stylesheet" href="./css/master_footer.css?ver=5">

<style>
	.comple{
		
		font-size: 70px;
		text-align: center;
		height: 130px;
	
	}
	
	.aTag{
		text-decoration:none;
	}
	
	.middle{
		height:300px;
	}
	
	.comple_imgBox{	
		
		text-align: center;
  		margin:auto;
		height: 170px;
		vertical-align: middle;
		
	}	
	.comple_img{
	
		width:150px;
		height:150px;
	}
	.linkWraper{
		
		
		
		display:inline-block;
		vertical-align : middle;
		width:150px;
		height:170px;
		
		
	}
	.linkWraper > p{
	width:100%;
	font-weight: 600;
	font-size: 20px;
	color: black;
	
	}
</style>
</head>

<body>

        <div class="middle">
        	
        	<h1 class="comple">상품 등록이 완료되었습니다 !</h1>
        	<div class="comple_imgBox">
        	<a class="aTag" href="sellerIndex.jsp"><div class="linkWraper" style="margin-left:60px;"><img class="comple_img"  src = "./img/house.png" ><p style="height:30px;">판매자 메인</p></div></a>
        	</div>
        </div>
        
   
      
    
</body>
</html>