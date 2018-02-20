package com.balpoom.inquery.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.inquery.InqueryVO;



@Repository
public class InqueryDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 글 등록
	public void insertInquery(InqueryVO vo) {
		System.out.println("---> JDBC로 insertBoard() 기능 처리");
		
		mybatis.insert("InqueryDAO.insertInquery", vo);
	}

	
	// 글 수정
	public void updateInquery(InqueryVO vo) {
		System.out.println("---> JDBC로 updateBoard() 기능 처리");
			
		mybatis.update("InqueryDAO.updateInquery", vo);
	}
	
	// 글 삭제
	public void deleteInquery(InqueryVO vo) {
		System.out.println("---> JDBC로 deleteBoard() 기능 처리");

		mybatis.delete("InqueryDAO.deleteInquery", vo);
	}
		
	// 글 상세 조회
	public InqueryVO getInquery(InqueryVO vo) {
		System.out.println("---> JDBC로 getBoard() 기능 처리");
			
		return (InqueryVO) mybatis.selectOne("InqueryDAO.getInquery", vo);
	}
		
	// 글 목록 조회
	public List<InqueryVO> getInqueryList(InqueryVO vo) {
			
		System.out.println("---> JDBC로 getBoardList() 기능 처리");
			
		return mybatis.selectList("InqueryDAO.getInqueryList", vo);
	}
	
	//조회수
	public void updateCnt(InqueryVO vo){
		mybatis.update("InqueryDAO.updateCnt", vo);
	} 
	
	//마이페이지 글목록
	public List<InqueryVO> getMypageInqueryList(InqueryVO vo) {
		
		return mybatis.selectList("InqueryDAO.getInqueryMypageList", vo);
	}
	
	public int getCountTotalInquery(InqueryVO vo){
		List<InqueryVO> total = mybatis.selectList("InqueryDAO.getCountTotalInquery",vo);
		return total.size();
	}
}
