package com.balpoom.view;

import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.cart.BasketService;
import com.balpoom.cart.BasketVO;
import com.balpoom.member.MemberVO;

@Controller
@SessionAttributes("basket")
public class BasketController {
	
	@Autowired
	private BasketService basketService;
	
	@RequestMapping("/addBasket.do")
	public String addBasket(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO curLogin = (MemberVO) session.getAttribute("authMember");
		BasketVO vo = new BasketVO();
		vo.setM_no(curLogin.getM_no());	
		System.out.println(curLogin.getM_no());
		
		/////////////////////////////////////////////////////////////////////////////////////
		int[] c_cnt = new int[Integer.parseInt(request.getParameter("index"))];
		String[] p_identifier = new String[Integer.parseInt(request.getParameter("index"))];
		
		for (int i = 0; i < Integer.parseInt(request.getParameter("index")); i++) {
			p_identifier[i] = request.getParameter("p_identifier" + i);
			c_cnt[i] = Integer.parseInt(request.getParameter("c_cnt" + i));		
			System.out.println(request.getParameter("c_cnt" + i));
			vo.setC_cnt(c_cnt[i]);
			vo.setP_identifier(p_identifier[i]);
			basketService.addBasket(vo);
		}
		////////////////////////////////////////////////////////////////////////////////////
		return "getBasketList.do";
	}
	
	@RequestMapping("/deleteBasket.do")
	public String deleteNotice(BasketVO vo) {
		basketService.deleteBasket(vo);
		
		System.out.println(basketService.getBasketList(vo));
		return "getBasketList.do";
	}
	
	@RequestMapping(value = "/getBasketList.do")
	public String getBasketList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO curLogin = (MemberVO) session.getAttribute("authMember");
		BasketVO vo = new BasketVO();
		vo.setM_no(curLogin.getM_no());

		System.out.println(curLogin.getM_no());

		model.addAttribute("basketList", basketService.getBasketList(vo));
		model.addAttribute("basketListsize", basketService.getBasketList(vo).size()); // 장바구니
																						// 상품
																						// 유무
		System.out.println(basketService.getBasketList(vo));
		return "basket.jsp";

	}

	@RequestMapping("/orderForm.do")
	public String order_basket_list(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO curLogin = (MemberVO) session.getAttribute("authMember");
		BasketVO vo = new BasketVO();
		vo.setM_no(curLogin.getM_no());

		System.out.println(curLogin.getM_no());

		model.addAttribute("basketList", basketService.getBasketList(vo));

		return "orderForm.jsp";
	}
}
