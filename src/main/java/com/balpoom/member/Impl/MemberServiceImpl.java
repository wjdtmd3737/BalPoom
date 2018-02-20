package com.balpoom.member.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.member.MemberService;
import com.balpoom.member.MemberVO;


@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		
	}

	@Override
	public void verifyMember(MemberVO vo) {
		memberDAO.verifyMember(vo);
	}

	@Override
	public int checkDuplicate(MemberVO vo) {
		int rowcount = memberDAO.checkDuplicate(vo);
		return rowcount;
	}

	@Override
	public MemberVO searchID(MemberVO vo) {
		return memberDAO.searchID(vo);
	}

	@Override
	public void updatePW(MemberVO vo) {
		memberDAO.updatePW(vo);
	}

}
