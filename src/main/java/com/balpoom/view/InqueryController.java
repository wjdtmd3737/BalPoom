package com.balpoom.view;

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
import org.springframework.web.servlet.ModelAndView;

import com.balpoom.inquery.InqueryPage;
import com.balpoom.inquery.InqueryService;
import com.balpoom.inquery.InqueryVO;

@Controller
@SessionAttributes("Inquery")
public class InqueryController {
	@Autowired
	private InqueryService InqueryService;
	Logger logger = Logger.getLogger(this.getClass());
	private final int size = 10;
	private final Calendar cal = Calendar.getInstance();
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	// 글 등록페이지 불러오기
	@RequestMapping(value = "/callInsertForm.do")
	public String callInsertForm(HttpServletRequest request, Model model) {
		int r_no = Integer.parseInt(request.getParameter("r_no"));
		model.addAttribute("r_no", r_no);

		return "insertInquery.jsp";
	}

	@RequestMapping(value = "/insertInquery.do")
	public ModelAndView insertInquery(InqueryVO vo, HttpServletRequest request) throws IOException {

		System.out.println(4);
		int r_no = Integer.parseInt(request.getParameter("r_no"));
		System.out.println(r_no);
		// System.out.println("글 등록 처리");
		logger.debug("[LOG] 글 등록 처리");
		System.out.println(vo.getInqu_title());
		System.out.println(vo.getM_no());
		System.out.println(vo.getInqu_content());

		vo.setR_no(r_no);

		InqueryService.insertInquery(vo);
		System.out.println(vo.toString());

		ModelAndView mav = new ModelAndView();
		mav.setViewName("getInqueryList.do");

		return mav;
	}

	// 글 수정
	@RequestMapping(value = "/updateInquery.do")
	public String updateInquery(InqueryVO vo) {

		// System.out.println("글 수정 처리");
		logger.debug("[LOG] 글 수정 처리");

		System.out.println("번호 : " + vo.getInqu_no());
		System.out.println("제목 : " + vo.getInqu_title());
		System.out.println("작성자 : " + vo.getM_no());
		System.out.println("내용 : " + vo.getInqu_content());
		System.out.println("등록일 : " + vo.getInqu_reg());
		System.out.println("조회수 : " + vo.getInqu_cnt());
		InqueryService.updateInquery(vo);

		return "getInquery.do";
	}

	// 글 삭제
	@RequestMapping(value = "/deleteInquery.do")
	public String deleteInquery(InqueryVO vo,@RequestParam String inqu_no,@RequestParam String r_no) {

		// System.out.println("글 삭제 처리");
		logger.debug("[LOG] 글 삭제  처리");
		InqueryService.deleteInquery(vo);

		return "getInqueryList.do?r_no="+r_no;
	}

	// 글 상세 조회
	@RequestMapping(value = "/getInquery.do")
	public String getInquiryInquery(InqueryVO vo, Model model) {

		// System.out.println("글 상세 조회 처리");
		logger.debug("[LOG] 글 상세 조회 처리");
		InqueryService.updateCnt(vo);

		InqueryVO timeModify = InqueryService.getInquery(vo);
		Date date = timeModify.getInqu_reg();
		cal.setTime(date);

		timeModify.setReg_date(sdf.format(cal.getTime()));
		model.addAttribute("Inquery", timeModify);
		return "getInquery.jsp";

	}

	// 글 목록 검색
	@RequestMapping(value = "/getInqueryList.do")
	public String getInquiryInqueryList(InqueryVO vo, Model model,
			@RequestParam(value = "pNo", defaultValue = "1", required = false) int pNo) {

		logger.debug("[LOG] 글 목록 검색");
		// NULL Check

		vo.setStartRow((pNo - 1) * size);
		vo.setSize(size);
		if (vo.getSearchCondition() == null)
			vo.setSearchCondition("TITLE");
		if (vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		int forTotal = InqueryService.getCountTotalInquery(vo);
		List<InqueryVO> timeModify = InqueryService.getInqueryList(vo);
		for (InqueryVO inquery : timeModify) {
			Date date = inquery.getInqu_reg();
			cal.setTime(date);

			inquery.setReg_date(sdf.format(cal.getTime()));
		}
		InqueryPage page = new InqueryPage(forTotal, pNo, size, timeModify);
		// model.addAttribute("InqueryList", timeModify);
		model.addAttribute("InqueryPage", page);
		model.addAttribute("r_no", vo.getR_no());
		// Model 정보 저장
		// Model
		// 정보
		// 저장
		return "getInqueryList.jsp";
	}

	@RequestMapping(value = "/getInquery_mypage.do")
	public String getInquiry_mypage(InqueryVO vo, Model model) {
		// System.out.println("글 상세 조회 처리");
		logger.debug("[LOG] 글 상세 조회 처리");
		InqueryService.updateCnt(vo);

		model.addAttribute("Inquery", InqueryService.getInquery(vo));
		return "getInqueryMypage.jsp";
	}

}
