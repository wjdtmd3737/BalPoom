package com.balpoom.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.balpoom.member.MemberVO;
import com.balpoom.seller.SellerLookupVO;
import com.balpoom.seller.SellerService;
import com.balpoom.seller.SellerVO;

@Controller
public class SellerController {

	@Autowired
	private SellerService sellerService;

	@RequestMapping("/sellerLogin.do")
	public ModelAndView sellerLogin(HttpServletRequest request, MemberVO vo) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		SellerVO sellerVo = new SellerVO();
		sellerVo.setS_id(vo.getM_id());
		sellerVo.setS_password(vo.getM_password());
		SellerVO loginSeller = sellerService.getSeller(sellerVo);
		if (loginSeller != null) {
			session.setAttribute("authSeller", loginSeller);
			mav.setViewName("sellerIndex.jsp");
			return mav;
		} else {
			mav.setViewName("login.jsp");
			mav.addObject("notExist", true);
			return mav;
		}
	}
	
	@RequestMapping("/getSellerOrderLookup.do")
	public String getSellerOrderLookup(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		SellerVO sellerno = (SellerVO) session.getAttribute("authSeller");
		SellerLookupVO vo = new SellerLookupVO();
		vo.setS_no(sellerno.getS_no());

		System.out.println(sellerno.getS_no());

		model.addAttribute("sellerOrderLookup", sellerService.getSellerOrderLookup(vo));
		System.out.println(sellerService.getSellerOrderLookup(vo));
		return "sellerOrderLookupForm.jsp";
	}

}
