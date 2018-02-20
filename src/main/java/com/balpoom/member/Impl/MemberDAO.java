package com.balpoom.member.Impl;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.member.MemberVO;

@Repository("memberDAO")
//@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// CRUD 기능의 메소드 구현
	public void insertMember(MemberVO vo) {
		System.out.println("---> mybtis로 insertBoard() 기능 처리");
		mybatis.insert("MemberDAO.insertMember",vo);
	}

	public MemberVO getMember(MemberVO vo) {
		System.out.println("---> mybatis로 getMember() 기능 처리");
		return (MemberVO) mybatis.selectOne("MemberDAO.getMember",vo);
	}
	
	public void verifyMember(MemberVO vo){
		System.out.println("---> mybatis로 verifyMember() 기능처리");
		mybatis.update("MemberDAO.verifyMember",vo);
	}
	
	public int checkDuplicate(MemberVO vo){
		System.out.println("---> mybatis로 checkDuplicate() 기능처리");
		return mybatis.selectList("MemberDAO.checkDuplicate",vo).size();
	}
	
	public void updateMember(MemberVO vo){
		System.out.println("---> mybatis로 updateMember() 기능처리");
		mybatis.update("MemberDAO.updateMember",vo);
	}
	
	public MemberVO searchID(MemberVO vo){
		System.out.println("---> mybatis로 searchID() 기능 처리");
		return (MemberVO) mybatis.selectOne("MemberDAO.searchID",vo);
	}
	
	public void updatePW(MemberVO vo){
		System.out.println("---> mybatis로 searchID() 기능 처리");
		mybatis.update("MemberDAO.updatePW",vo);
	}

		
}
