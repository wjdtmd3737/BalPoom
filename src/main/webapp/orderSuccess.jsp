<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>주문완료</title>
    <link rel="stylesheet" href="./css/orderSuccess.css">
</head>
<body>



<div id="osWrapper">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br><br><br><br><br><br><br><br>
    <div id="osBoxes">
        <p class="osMessage1">주문해주셔서 감사합니다!</p>
        <p class="osMessage2">주문이 성공적으로 접수되었습니다.</p>
        <p class="osMessage2">주문 처리는 근무일 기준으로 1~2일 가량 소요될 수 있습니다.</p>
        <div id="osBtnBox">
            <a href="main.jsp"><div class="osBtn" style=" cursor: pointer;"><p class="osBtnText">메인으로 가기</p></div></a>
            <a href="getOrderList.do"><div class="osBtn" style=" cursor: pointer;"><p class="osBtnText">주문내역</p></div></a>
        </div>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>