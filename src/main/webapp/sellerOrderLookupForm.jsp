<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/sellerOrderLookup.css?ver=2">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문관리</title>
</head>
<body>
	
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		<thead style="height: 150px;">
			<tr>
				<!-- <th scope="col" style="width: 13%">주문번호</th>
				<th scope="col" style="width: 14%">주문날짜</th> -->
				<th scope="col" style="width: 40%">상품이름</th>
				<th scope="col" style="width: 14%">가격</th>
				<th scope="col" style="width: 10%">사이즈</th>
				<th scope="col" style="width: 10%">수량</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${sellerOrderLookup}" var="sellerlist">
				<tr>
					<%-- <td class="orderLookup" align="center" scope="row" style="width: 13%;height: 50px" onmouseover="view(true)" onmouseout="view(false)">${sellerlist.o_no}</td>
					<td align="center" scope="row" style="width: 14%;height: 50px">${sellerlist.o_date}</td> --%>
					<td align="center" scope="row" style="width: 40%;height: 50px">${sellerlist.p_total_identifier}</td>
					<td align="center" scope="row" style="width: 14%;height: 50px">${sellerlist.p_price}</td>
					<td align="center" scope="row" style="width: 10%;height: 50px">${sellerlist.p_size}</td>
					<td align="center" scope="row" style="width: 10%;height: 50px">${sellerlist.c_cnt}</td>
				</tr>
			<%-- <div class="detailOrder">
				${sellerlist.p_size}
			</div> --%>
			</c:forEach>			
		</tbody>
	</table>
	
</body>
<script>
function view(opt) {
    if(opt) {
    	$(function(){
    	    
            /* 클릭 클릭시 클릭을 클릭한 위치 근처에 레이어가 나타난다. */
            $('.orderLookup').hover(function(e)
            {
                var sWidth = window.innerWidth;
                var sHeight = window.innerHeight;
    
                var oWidth = $('.detailOrder').width();
                var oHeight = $('.detailOrder').height();
    
                // 레이어가 나타날 위치를 셋팅한다.
                var divLeft = e.clientX -200;
                var divTop = e.clientY -200;
    
                // 레이어가 화면 크기를 벗어나면 위치를 바꾸어 배치한다.
                if( divLeft + oWidth > sWidth ) divLeft -= oWidth;
                if( divTop + oHeight > sHeight ) divTop -= oHeight;
    
                // 레이어 위치를 바꾸었더니 상단기준점(0,0) 밖으로 벗어난다면 상단기준점(0,0)에 배치하자.
                if( divLeft < 0 ) divLeft = 0;
                if( divTop < 0 ) divTop = 0;
    
                $('.detailOrder').css({
                    "top": divTop,
                    "left": divLeft,
                    "position": "absolute"
                }).show();
            });
    
        });
    }
    else {
    	detailOrder.style.display = "none";  //마우스아웃시 닫힘
    }
  }
</script>

</html>