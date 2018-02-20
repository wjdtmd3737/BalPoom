<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/Order_Lookup.css?ver=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 조회</title>
</head>
<body>
	<div id="order_lookup">
	<jsp:include page="header.jsp"/>
		<div class="titleArea">
			<h2>
				<img src="./img/order_lookup.gif" alt="주문조회">
			</h2>
		</div>
		
		<form action="getOrderList.do" method="post">
			<div class="table_list">
				<table width="100%" border="1" cellpadding="0" cellspacing="0">
					<thead style="height: 150px;">
						<tr>
							<th scope="col" style="width: 13%">
								<div class="tb-center">주문일자</div>
							</th>
							<th scope="col"  style="width: 50%">
								<div class="tb-center">상품명</div>
							</th>
							<th scope="col"  style="width: 14%">
								<div class="tb-center">결제금액</div>
							</th>
							<th scope="col"  style="width: 13%">
								<div class="tb-center">주문상세</div>
							</th>
							<th scope="col"  style="width: 13%">
								<div class="tb-center">배송현황</div>
							</th>
						</tr>
					</thead>
					
					<tbody style="border-left-color: white; border-right-color: white;">
						<c:choose>
							<c:when test="${orderListsize == 0}">
								<tr>
									<td colspan="5" scope="row">
										주문내역이 존재하지 않습니다.
									</td>
								</tr>
							</c:when>
							
							<c:when test="${orderListsize != 0}">
								<c:forEach items="${orderList}" var="order">
									<tr>
										<td align="center" scope="row" style="width: 13%;height: 50px">${order.o_date}</td>
										<td align="center" scope="row" style="width: 50%;height: 50px">${order.p_total_identifier}</td>
										<td align="center" scope="row" style="width: 14%;height: 50px;font-weight: bold;">${order.total_price}</td>
										<td align="center" scope="row" style="width: 13%;height: 50px">
											<div id="tx_btn_order_detail">
												<a class="order_detail" href="#">조회</a>
											</div>
										</td>
										<td align="center" scope="row" style="width: 13%;height: 50px">
											<div id="tx_btn_delivery_status">
												<a class="delivery_status" href="#">조회</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:when>
						
						</c:choose>
					</tbody>
				</table>
				
				<div class="recommendation">
					<div class="recommendation_title">
						고객님만을 위한 맞춤 상품!!
					</div>
					<div class="list_recommendation">
						추천 상품들
					</div>
				
				</div>
				
			</div>
		</form>
		
	</div>
	
	<div class="footer">
	 <jsp:include page="footer.jsp"/>
	</div>
</body>
</html>