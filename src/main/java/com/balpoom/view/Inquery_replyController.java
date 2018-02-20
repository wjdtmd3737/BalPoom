package com.balpoom.view;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.inquery_reply.Inquery_replyService;
import com.balpoom.inquery_reply.Inquery_replyVO;

@Controller
@SessionAttributes("Inquery_reply")
public class Inquery_replyController {
	@Autowired
	private Inquery_replyService Inquery_replyService;

	// 리플 등록
	@RequestMapping("/insertInquery_reply.do")
	public void insertInquery_reply(Inquery_replyVO vo) {
		Inquery_replyService.insertInquery_reply(vo);

		// return "getInquery.do";
	}

	// 리플 리스트
	@ResponseBody
	@RequestMapping("/getInquery_replyList.do")
	public List<Inquery_replyVO> getInquery_replyList(Inquery_replyVO vo, Model model) {
		System.out.println(1);
		System.out.println(vo.toString());
		return Inquery_replyService.getInquery_replyList(vo);

	}

	@RequestMapping(value = "/deleteInquery_reply.do", method = RequestMethod.GET)
	public String deleteInquery_reply(HttpServletRequest request) {
		int no = Integer.parseInt(request.getParameter("inqu_reply_no"));
		System.out.println(no);
		System.out.println("댓글 지우기 기능 시작!");
		Inquery_replyVO vo = new Inquery_replyVO();
		vo.setInqu_reply_no(no);
		Inquery_replyService.deleteInquery_reply(vo);
		System.out.println("댓글 지우기 끝");
		return "getInquery_replyList.do";
	}

	@RequestMapping(value = "/updateInquery_reply.do", method = RequestMethod.GET)
	public String updateInquery_reply(HttpServletRequest request) {
		int no = Integer.parseInt(request.getParameter("inqu_reply_no"));
		String updateReply = request.getParameter("inqu_reply_content");
		System.out.println(no);
		System.out.println(updateReply);

		System.out.println("댓글 수정 시작!");
		Inquery_replyVO vo = new Inquery_replyVO();
		System.out.println(1);
		vo.setInqu_reply_no(no);
		vo.setInqu_reply_content(updateReply);
		System.out.println(2);
		Inquery_replyService.updateInquery_reply(vo);
		System.out.println(3);
		return "getInquery_replyList.do";
	}

}
