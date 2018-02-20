package com.balpoom.view;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.notice.NoticePage;
import com.balpoom.notice.NoticeService;
import com.balpoom.notice.NoticeVO;

@Controller
@SessionAttributes("notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	private final int size = 10;
	private final Calendar cal = Calendar.getInstance();
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy년-MM월-dd일 kk시mm분");

	@RequestMapping("/insertNotice.do")
	public String insertNotice(NoticeVO vo) {
		if (vo.getNotice_title() == null || vo.getNotice_title().equals("")) {
			throw new NullPointerException("제목을 입력하세요");
		}
		noticeService.insertNotice(vo);
		return "getNoticeList.do";
	}

	@RequestMapping("/updateNotice.do")
	public String updateNotice(@ModelAttribute("notice") NoticeVO vo) {

		System.out.println("번호 : " + vo.getNotice_no());
		System.out.println("제목 : " + vo.getNotice_title());
		System.out.println("내용 : " + vo.getNotice_content());
		System.out.println("등록일 : " + vo.getNotice_reg());
		System.out.println("조회수 : " + vo.getNotice_cnt());
		noticeService.updateNotice(vo);
		return "getNotice.jsp";
	}

	@RequestMapping("/deleteNotice.do")
	public String deleteNotice(NoticeVO vo) {
		noticeService.deleteNotice(vo);
		System.out.println();
		return "getNoticeList.do";
	}

	@RequestMapping("/getNotice.do")
	public String getNotice(NoticeVO vo, Model model) {

		noticeService.updateCnt(vo);
		NoticeVO timeModify = noticeService.getNotice(vo);
		Date date = timeModify.getNotice_reg();
		cal.setTime(date);

		timeModify.setReg_date(sdf.format(cal.getTime()));
		model.addAttribute("notice", timeModify);
		return "getNotice.jsp";
	}

	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}

	@RequestMapping("/getNoticeList.do")
	public String getNoticeList(
			@RequestParam(value = "searchCondition", defaultValue = "TITLE", required = false) String condition,
			@RequestParam(value = "searchKeyword", defaultValue = "", required = false) String keyword,
			@RequestParam(value = "pNo", defaultValue = "1", required = false) int pNo, NoticeVO vo, Model model) {
		System.out.println(condition);
		System.out.println(keyword);
		vo.setSearchKeyword("%" + keyword + "%");
		vo.setStartRow((pNo - 1) * size);
		vo.setSize(size);
		System.out.println(vo);
		int forTotal = noticeService.getCountTotalNotice(vo);
		if (condition.equals("TITLE") && !keyword.equals("") && keyword != null) {
			List<NoticeVO> timeModify = noticeService.getNoticeListByTitle(vo);
			for (NoticeVO notice : timeModify) {
				Date date = notice.getNotice_reg();
				cal.setTime(date);

				notice.setReg_date(sdf.format(cal.getTime()));
			}
			NoticePage page = new NoticePage(forTotal, pNo, size, timeModify);
			model.addAttribute("noticePage", page);
			// model.addAttribute("noticeList", timeModify);
			System.out.println(noticeService.getNoticeList(vo));
		} else if (condition.equals("CONTENT") && !keyword.equals("") && keyword != null) {
			List<NoticeVO> timeModify = noticeService.getNoticeListByContent(vo);
			for (NoticeVO notice : timeModify) {
				Date date = notice.getNotice_reg();
				cal.setTime(date);

				notice.setReg_date(sdf.format(cal.getTime()));
			}
			NoticePage page = new NoticePage(forTotal, pNo, size, timeModify);
			model.addAttribute("noticePage", page);
			// model.addAttribute("noticeList", timeModify);
			System.out.println(noticeService.getNoticeList(vo));
		} else if (keyword.equals("") || keyword == null || keyword.equals("%%")) {
			List<NoticeVO> timeModify = noticeService.getNoticeList(vo);
			for (NoticeVO notice : timeModify) {
				Date date = notice.getNotice_reg();
				cal.setTime(date);

				notice.setReg_date(sdf.format(cal.getTime()));
			}
			NoticePage page = new NoticePage(forTotal, pNo, size, timeModify);
			model.addAttribute("noticePage", page);
			// model.addAttribute("noticeList", timeModify);
			System.out.println(noticeService.getNoticeList(vo));
		}
		return "getNoticeList.jsp";
	}

}
