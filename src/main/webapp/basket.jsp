<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/basket.css?ver=2">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="./js/jquery.innerfade_basket.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>

</head>
<body>

<div id="basket">
	<jsp:include page="header.jsp"/>	
	
	<div id="bkTitle">
		<p id="bktext1">BALPOOM</p> <p id="bktext2">CART</p>
		
		<hr id="t">
	</div>
	
	<form action="getBasketList.do" method="post">
	
	<div class="cart_list_table">
		<table width="100%" border="1" cellpadding="0" cellspacing="0">
			<thead style="height: 150px;">
				<tr>
					<th scope="col" style="width: 50%">
						<span>상품</span>
					</th>
					<th scope="col" style="width: 10%">
						<span>수량</span>
					</th>
					<th scope="col" style="width: 14%">
						<span>가격</span>
					</th>
					<th scope="col" style="width: 13%">
						<span>배송정보</span>
					</th>
					<th scope="col" style="width: 5%">
						
					</th>
				</tr>
			</thead>
			
			
			<tbody style="border-left-color: white; border-right-color: white;">
			
				<c:choose>
					<c:when test="${basketListsize == 0 }">
						<tr>
							<td colspan="5">
								<p class="text_font">장바구니에 담겨있는 상품이 없습니다.</p>
							</td>
						</tr>
					</c:when>
					
					<c:when test="${basketListsize != 0 }">
						<c:forEach items="${basketList}" var="basket">
							<tr>
								<td id="test" align="center" scope="row" style="width: 50%;height: 50px">${basket.p_name} : ${basket.p_identifier }</td>
								<td align="center" scope="row" style="width: 10%;height: 50px">${basket.c_cnt}개</td>
								<td align="center" scope="row" style="width: 14%;height: 50px">${basket.p_price}원</td>
								<td align="center" scope="row" style="width: 13%;height: 50px">
									<c:choose>
										<c:when test="${basket.p_price >= 35000}">무료</c:when>
										<c:when test="${basket.p_price < 35000}">2500원</c:when>
									</c:choose>
								</td>
										
								<td align="center" scope="row" style="width: 5%;height: 50px">
								<div id="tx_btn_bor">
									<a class="delete_btn" href="deleteBasket.do?c_no=${basket.c_no}">삭제</a>
								</div>
								</td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
				</tbody>
		</table>
	</div>
	
	<hr id="hr2">
	
	<div class="pay_section">
		<div class="lt_article">
			<div class="benerfit">
				<strong>구매 후 추가혜택</strong>
				<dl>
					<dt class="ng_a_scope1">상품명 작성하면</dt>
					<dd class="ng_a_scope2">Balpoom Point</dd>
					<dt class="ng_b_scope1">포토상품평 작성하면</dt>
					<dd class="ng_b_scope2">최대 Balpoom Point 200 P</dd>
					<dt class="ng_c_scope1">상품평 작성 제휴포인트 추가혜택</dt>
					<dd class="ng_c_scope2">Balpoom VIP회원</dd>
				</dl>
			</div>
		</div>
		
		<div class="paylist">
			<div class="total_bx">
				<h4 class="cp_title">
					<span>결제 예정금액</span>
				</h4>
				<ul class="bs_list">
					<li>
						<dl>
							<dt>상품가격</dt>
							<dd>
								<span class="number">
									<c:set var="p_sum" value="0"/>
									<c:if test="${basketListsize == 0 }">
										${p_sum}
									</c:if>
									
									<c:if test="${basketListsize != 0 }">
										<c:forEach items="${basketList}" var="basket">
											<c:set var="p_sum" value="${p_sum + (basket.p_price*basket.c_cnt)}"/>
										</c:forEach>${p_sum}
									
									</c:if>
								</span>
								<span class="won">원</span>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>할인 가격</dt>
							<dd>
								<span class="number">
									<c:set var="sel_price" value="0"/>
									<c:if test="${basketListsize == 0 }">
										${sel_price}
									</c:if>
									<c:if test="${basketListsize != 0 }">
										<c:set var="sel_price" value="2000"/>
										${sel_price}								
									</c:if>
								</span>
								<span class="won">원</span>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>배송비</dt>
							<dd>
								<span class="number">
									<c:set var="delivery_fee" value="0"/>
									<c:if test="${basketListsize == 0 }">
										${delivery_fee}
									</c:if>
									
									<c:if test="${basketListsize != 0 }">
										<c:choose>
											<c:when test="${p_sum >= 40000}">
												${delivery_fee}
											</c:when>
											
											<c:when test="${p_sum < 40000}">
												<c:set var="delivery_fee" value="2500"/>${delivery_fee}
											</c:when>
										</c:choose>
									</c:if>
								</span>
								<span class="won">원</span>
							</dd>
						</dl>
						
					</li>
				</ul>
				<dl class="result_list">
					<dd>
						<span class="rs_number">
							<c:set var="rs_price" value="${p_sum - sel_price + delivery_fee}"/>
							<c:choose>
								<c:when test="${rs_price >= 0}">
									${rs_price}
								</c:when>
								
								<c:when test="${rs_price < 0}">
									<c:set var="rs_price" value="0"/>${rs_price}
								</c:when>
							</c:choose>
							
						</span>
						<span class="rs_won">원</span>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	
	</form>
	
	<form action="orderForm.do" method="post">
	<input type="hidden" name="rs_price" value="${rs_price}">
	<input type="hidden" name="sel_price" value="${sel_price}">
	<input type="hidden" name="delivery_fee" value="${delivery_fee}">
	
	<div class="order_btn">
		<button class="im_btn" style="cursor:pointer;" onclick="test()">주문결제</button>
	</div>
	</form>
</div>

<div class="footer">
	 <jsp:include page="footer.jsp"/>
</div>

<script type="text/javascript">
	function test() {
		if($("#test").val() == null){
			alert('장바구니에 상품이 없습니다.');
			event.preventDefault();
		}
	}
</script>


</body>
</html>