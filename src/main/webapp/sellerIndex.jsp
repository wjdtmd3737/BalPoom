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
    <title>판매자센터</title>
    <link rel="stylesheet" href="./css/sellerIndex1.css?ver=1">

</head>

<body>
    <div class="sellerIndex_wrapper" >
        <div class="sellerIndex_header">
            <img class="sellerheaderimg" src="./img/sellerpageLogo1.png"><p class="headerTitle1">판매자센터</p>
            
            <c:if test="${! empty authSeller }">
            <a href="logout.do"><p class="seller_logoutBtn">로그아웃</p></a>
            <p class="seller_headerText1"><font style="font-weight:bold;">${authSeller.s_busi_name }</font>님 환영합니다</p>
            </c:if>
        </div>
        <div class="tab">
                <p class="tablinks" onclick="openPage(event, 'Home')" id="defaultOpen" style="border-top-left-radius: 4px;">판매자센터 홈</p>
                <p class="tablinks" onclick="openPage(event, 'Product')">상품등록</p>
                <p class="tablinks" onclick="openPage(event, 'Product2')">상품수량</p>
                <p class="tablinks" onclick="openPage(event, 'Order')" >주문관리</p>
                <!-- <p class="tablinks" onclick="openPage(event, 'Inquiry')" style="border-top-right-radius: 4px;">문의관리</p> -->
            </div>
            <div id="Home" class="tabcontent">
                    
                    <p>홈 화면입니다.</p>
                    
                  </div>
                  
                  <div id="Product" class="tabcontent">
                    
                    <!-- <p>상품등록화면 입니다.</p> -->
                    <jsp:include page="sellerProductInsertForm.jsp"></jsp:include> 
                  </div>
                  <div id="Product2" class="tabcontent">
                  	<jsp:include page="getSellerProductList.do">
                  		<jsp:param value="${authSeller.s_no }" name="s_no"/>
                  	</jsp:include>
                  </div>
                  
                  <div id="Order" class="tabcontent">
                    
                    <!-- <p>주문관리화면 입니다.</p> -->
                    <jsp:include page="getSellerOrderLookup.do"></jsp:include> 
                  </div>
                  <div id="Inquiry" class="tabcontent">
                        
                     <p>문의관리화면입니다.</p>
                  </div>
        </div>
        

<script>
function openPage(evt, pageName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(pageName).style.display = "block";
    evt.currentTarget.className += " active";
}

document.getElementById("defaultOpen").click();
</script>    
    
</body>
</html>