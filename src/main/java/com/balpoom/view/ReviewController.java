package com.balpoom.view;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.balpoom.review.ReviewPage;
import com.balpoom.review.ReviewService;
import com.balpoom.review.ReviewVO;

@Controller
@SessionAttributes("Review")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	private final int size = 10;
	private final Calendar cal = Calendar.getInstance();
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Logger logger = Logger.getLogger(this.getClass());

	@RequestMapping("/deleteReview.do")
	public String deleteReview(ReviewVO vo,@RequestParam String re_no,@RequestParam String r_no) {

		reviewService.deleteReview(vo);

		System.out.println(vo.toString());

		return "getReviewList.do?r_no="+r_no;
	}

	@RequestMapping("/updateReview.do")
	public String updateReview(ReviewVO vo) {

		reviewService.updateReview(vo);

		return "getReview.do";
	}

	// 글 등록페이지 불러오기
	@RequestMapping(value = "/callInsertReviewForm.do")
	public String callInsertForm(HttpServletRequest request, Model model) {
		int r_no = Integer.parseInt(request.getParameter("r_no"));
		model.addAttribute("r_no", r_no);

		return "insertReview.jsp";
	}

	@RequestMapping("/insertReview.do")
	public ModelAndView insertReview(ReviewVO vo, HttpServletRequest request) throws IOException {
		System.out.println(1);
		ModelAndView mav = new ModelAndView();
		String fileName_date = request.getParameter("fileName_date");

		System.out.println(2);
		File dir = new File("D:\\choongang\\Spring\\springworkspace\\balpoom0129\\src\\main\\webapp\\uploadimg",
				vo.getM_id());
		System.out.println(2);
		if (!dir.exists()) {
			dir.mkdir();
			System.out.println(dir);
		}

		MultipartFile uploadFile = vo.getUploadFile();
		System.out.println(3);
		if (!uploadFile.isEmpty()) {

			uploadFile.transferTo(
					new File("D:\\choongang\\Spring\\springworkspace\\balpoom0129\\src\\main\\webapp\\uploadimg/"
							+ vo.getM_id() + "//" + fileName_date + ".png"));

		}
		System.out.println(4);

		// System.out.println("글 등록 처리");
		logger.debug("[LOG] 글 등록 처리");
		System.out.println(vo.getRe_no());
		System.out.println(vo.getM_no());
		System.out.println(vo.getRe_content());
		System.out.println(vo.toString());
		int r_no = Integer.parseInt(request.getParameter("r_no"));
		vo.setR_no(r_no);
		reviewService.insertReview(vo);
		mav.setViewName("getReviewList.do");
		
		return mav;
	}

	@RequestMapping("/getReview.do")
	public String getReview(ReviewVO vo, Model model) {

		ReviewVO timeModify = reviewService.getReview(vo);
		Date date = timeModify.getRe_reg();
		cal.setTime(date);

		timeModify.setReg_date(sdf.format(cal.getTime()));
		model.addAttribute("Review", timeModify);
		return "getReview.jsp";
	}

	@RequestMapping("/getReviewList.do")
	public String getReviewList(ReviewVO vo, Model model,
			@RequestParam(value = "pNo", defaultValue = "1", required = false) int pNo) {
		System.out.println(vo.toString());
		vo.setStartRow((pNo - 1) * size);
		vo.setSize(size);
		List<ReviewVO> timeModify = reviewService.getReviewList(vo);
		int total = reviewService.getTotalReviewCount(vo);
		for (ReviewVO review : timeModify) {
			Date date = review.getRe_reg();
			cal.setTime(date);

			review.setReg_date(sdf.format(cal.getTime()));
		}
		ReviewPage page = new ReviewPage(total, pNo, size, timeModify);
		// model.addAttribute("getReviewList", timeModify);
		model.addAttribute("ReviewPage", page);
		model.addAttribute("r_no", vo.getR_no());

		System.out.println(vo.toString());

		return "getReviewList.jsp";

	}

	@RequestMapping("/getReview_mypage.do")
	public String getReview_mypage(ReviewVO vo, Model model) {
		model.addAttribute("Review", reviewService.getReview(vo));

		return "getReviewMypage.jsp";
	}
}
