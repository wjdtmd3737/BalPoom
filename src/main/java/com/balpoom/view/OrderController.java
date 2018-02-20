package com.balpoom.view;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.cart.BasketService;
import com.balpoom.cart.BasketVO;
import com.balpoom.member.MemberVO;
import com.balpoom.order.OrderService;
import com.balpoom.order.OrderVO;

@Controller
@SessionAttributes("order")
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private BasketService basketService;

	
	@RequestMapping("/detailaddOrder.do")
	public String detailaddOrder(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO curLogin = (MemberVO) session.getAttribute("authMember");
		OrderVO vo = new OrderVO();
		vo.setM_no(curLogin.getM_no());	
		System.out.println(curLogin.getM_no());
		
		return "detail_orderForm.jsp";
	}
	
	@RequestMapping("/addOrder.do")
	public String addOrder(BasketVO vo1, OrderVO vo, Model model,HttpServletRequest request) throws IOException {
		if (vo.getSender_name() == null || vo.getSender_name().equals("")) {
			throw new NullPointerException("주문자 이름을 입력하세요.");
		}
		if (vo.getSender_email_id() == null || vo.getSender_email_domain() == null || vo.getSender_email_id().equals("")
				|| vo.getSender_email_domain().equals("")) {
			throw new NullPointerException("이메일을 올바르게 입력해주세요.");
		}
		if (vo.getSender_cellphone1() == null || vo.getSender_cellphone2() == null || vo.getSender_cellphone3() == null
				|| vo.getSender_cellphone1().equals("") || vo.getSender_cellphone2().equals("")
				|| vo.getSender_cellphone3().equals("")) {
			throw new NullPointerException("주문자 정보의 연락처를 올바르게 입력해주세요.");
		}
		if (vo.getReceiver_address_postcode() == null || vo.getReceiver_address_primary() == null
				|| vo.getReceiver_address_detail() == null || vo.getReceiver_address_postcode().equals("")
				|| vo.getReceiver_address_primary().equals("") || vo.getReceiver_address_detail().equals("")) {
			throw new NullPointerException("수령자의 주소를 올바르게 입력해주세요.");
		}
		if (vo.getReceiver_name() == null || vo.getReceiver_name().equals("")) {
			throw new NullPointerException("받는 사람의 이름을 입력하세요.");
		}
		if (vo.getReceiver_cellphone1() == null || vo.getReceiver_cellphone2() == null
				|| vo.getReceiver_cellphone3() == null || vo.getReceiver_cellphone1().equals("")
				|| vo.getReceiver_cellphone2().equals("") || vo.getReceiver_cellphone3().equals("")) {
			throw new NullPointerException("받는 사람의 연락처를 입력하세요.");
		}

		/*basketService.best_rs_product_number(vo1);*/ // 인기 상품 카운트

		/*basketService.order_rs_cart_del(vo1); */// 주문후 장바구니 내역에서 제거
		/*basketService.order_after_delete(vo1);*/
		System.out.println(request.getParameter("index"));
		
		if(!request.getParameter("index").equals("-1")) {
			String[] test =  request.getParameterValues("c_cnt");
			int[] o_cnt = new int[Integer.parseInt(request.getParameter("index"))];
			
			for (int i = 0; i < Integer.parseInt(request.getParameter("index")); i++) {
				o_cnt[i] = Integer.parseInt(test[i]);
				vo.setO_cnt(o_cnt[i]);
				if(vo.getO_no()!=0) {
					vo.setO_no(vo.getO_no());
				}
				/*System.out.println("index  받아 온 값 : "+request.getParameter("index"));
				System.out.println("테스트 값 : "+o_cnt[i]);*/
				orderService.addOrder(vo);
			}
		}else if(request.getParameter("index").equals("-1")){
			String[] test =  request.getParameterValues("c_cnt");
			int[] o_cnt = new int[test.length];
			
			basketService.best_rs_product_number(vo1);
			basketService.order_rs_cart_del(vo1); 
			/*basketService.order_after_delete(vo1);*/
			
			for (int i = 0; i < o_cnt.length; i++) {
				System.out.println(test[i]);
				o_cnt[i] = Integer.parseInt(test[i]);
				vo.setO_cnt(o_cnt[i]);
				orderService.addOrder(vo);							
			}
		}

		return "orderSuccess.jsp";
	}

	@RequestMapping("/getOrderList.do")
	public String getBasketList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO curLogin = (MemberVO) session.getAttribute("authMember");
		OrderVO vo = new OrderVO();
		vo.setM_no(curLogin.getM_no());

		System.out.println(curLogin.getM_no());

		model.addAttribute("orderList", orderService.getOrderList(vo));
		model.addAttribute("orderListsize", orderService.getOrderList(vo).size());
		System.out.println(orderService.getOrderList(vo));
		return "Order_Lookup.jsp";
	}

}
