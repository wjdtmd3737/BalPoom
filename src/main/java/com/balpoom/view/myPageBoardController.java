package com.balpoom.view;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.balpoom.inquery.InqueryService;
import com.balpoom.inquery.InqueryVO;
import com.balpoom.review.ReviewService;
import com.balpoom.review.ReviewVO;





@Controller
public class myPageBoardController {
	
	@Autowired
	private InqueryService inqueryService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value = "/myPageGetBoardList.do")
	public String myPageGetBaordList(InqueryVO ivo, ReviewVO rvo, Model model){
		System.out.println(inqueryService.getMypageInqueryList(ivo));
		model.addAttribute("InqueryList", inqueryService.getMypageInqueryList(ivo));
		model.addAttribute("ReviewList",reviewService.getMypageReviewList(rvo));		
		
		return "myPageGetBoardList.jsp";
	}
	
	
	
	
}
