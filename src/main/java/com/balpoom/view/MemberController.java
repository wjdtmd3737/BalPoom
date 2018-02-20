package com.balpoom.view;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.balpoom.member.MailHandler;
import com.balpoom.member.MemberService;
import com.balpoom.member.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Inject
	private JavaMailSender mailSender;

	@RequestMapping("/registerMember.do")
	public String insertMember(MemberVO vo) throws MessagingException, UnsupportedEncodingException {
		System.out.println("---> mybatis로 insertMember() 기능 처리 및 해당 이메일로 이메일 발송");
		memberService.insertMember(vo);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[이메일 인증]");
		sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
				.append("발품에 가입해주셔서 감사합니다.<br><a href='http://localhost:8080/biz/verify.do?m_email_id=" + vo.getM_email_id()
						+ "&m_email_domain=" + vo.getM_email_domain())
				.append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("balpoom@balpoom.com", "발품");
		sendMail.setTo(vo.getM_email_id() + "@" + vo.getM_email_domain());
		sendMail.send();
		return "signConfirm.jsp";
	}

	@RequestMapping(value = "/verify.do", method = RequestMethod.GET)
	public String signSuccess(@RequestParam String m_email_id, @RequestParam String m_email_domain) {
		System.out.println("이메일 인증기능 처리");
		// System.out.println(m_email_id);
		// System.out.println(m_email_domain);
		MemberVO vo = new MemberVO();
		vo.setM_email_id(m_email_id);
		vo.setM_email_domain(m_email_domain);
		memberService.verifyMember(vo);
		return "signSuccess.jsp";
	}

	@RequestMapping("/login.do")
	public ModelAndView login(MemberVO vo, HttpServletRequest request) {
		System.out.println("로그인 인증 처리...");
		System.out.println(vo.getM_id().trim().substring(0, 1));
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		if (vo.getM_id().trim().substring(0, 1).equals("@")) {
			mav.setViewName("sellerLogin.do");
			mav.addObject(vo);
			return mav;
		} else {
			MemberVO mem = memberService.getMember(vo);
			if (mem != null) {
				if (mem.getM_verify() == 'y') {
					session.setAttribute("authMember", mem);
					mav.setViewName("index.jsp");
					return mav;
				} else
					mav.setViewName("login.jsp");
				mav.addObject("notVerify", true);
				return mav;
			} else
				mav.setViewName("login.jsp");
			mav.addObject("notExist", true);
			return mav;
		}
	}

	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("로그아웃 처리");

		// 1. 브라우저와 연결된 세션 객체를 강제로 종료한다.
		HttpSession session = request.getSession();
		session.invalidate();

		return "index.jsp";

	}

	@ResponseBody
	@RequestMapping(value = "/duplicate.do", method = RequestMethod.POST)
	public String checkDuplicate(HttpServletRequest request) {
		System.out.println("---> mybatis로 checkDuplicate() 기능 처리");
		String m_id = request.getParameter("m_id");
		System.out.println(m_id);
		if(m_id.contains("@")){
			return "@";
		}else if(m_id.trim().length()== 0){
			return "blank";
		}
		else{
			MemberVO vo = new MemberVO();
			vo.setM_id(m_id);
			int rowcount = memberService.checkDuplicate(vo);
			System.out.println(rowcount);
			return String.valueOf(rowcount);
		}

	}

	@RequestMapping("/mypage.do")
	public ModelAndView goMypage(HttpServletRequest request) {
		System.out.println("마이페이지로 이동");
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("authMember");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage.jsp");
		mav.addObject("authMember", vo);
		return mav;
	}

	@RequestMapping("/updateMember.do")
	public String updateMember(MemberVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		memberService.updateMember(vo);
		MemberVO mem = memberService.getMember(vo);
		// ModelAndView mav = new ModelAndView();
		// mav.addObject("authMember", mem);
		// mav.setViewName("mypage.jsp");
		session.setAttribute("authMember", mem);
		return "mypage.jsp";
	}

	@ResponseBody
	@RequestMapping(value = "/searchID.do", method = RequestMethod.POST)
	public String searchID(HttpServletRequest request) {
		String m_name = request.getParameter("m_name");
		String m_email_id = request.getParameter("m_email_id");
		String m_email_domain = request.getParameter("m_email_domain");
		System.out.println(m_name);
		System.out.println(m_email_id);
		System.out.println(m_email_domain);
		MemberVO vo = new MemberVO();
		vo.setM_name(m_name);
		vo.setM_email_id(m_email_id);
		vo.setM_email_domain(m_email_domain);
		MemberVO search = memberService.searchID(vo);
		if (search != null) {
			return search.getM_id();
		} else {
			return "x";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/searchPW.do", method = RequestMethod.POST)
	public void searchPW(HttpServletRequest request) throws MessagingException, UnsupportedEncodingException {
		String m_id = request.getParameter("m_id");
		String m_email_id = request.getParameter("m_email_id");
		String m_email_domain = request.getParameter("m_email_domain");
		System.out.println(m_id);
		System.out.println(m_email_id);
		System.out.println(m_email_domain);
		MemberVO vo = new MemberVO();
		vo.setM_id(m_id);
		vo.setM_email_id(m_email_id);
		vo.setM_email_domain(m_email_domain);
		String temp_pw = "te" + m_id + "mp";
		vo.setM_password(temp_pw);
		memberService.updatePW(vo);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[비밀번호 찾기]");
		sendMail.setText(
				new StringBuffer().append("<h1>임시 비밀번호 발급</h1>").append("<b>임시 비밀번호 발급 : " + temp_pw + "</b><br>")
						.append("<a href='http://localhost:8080/biz/index.jsp")
						.append("' target='_blenk'>발품에서 로그인 하기</a>").toString());
		sendMail.setFrom("balpoom@balpoom.com", "발품");
		sendMail.setTo(vo.getM_email_id() + "@" + vo.getM_email_domain());
		sendMail.send();
	}

}
