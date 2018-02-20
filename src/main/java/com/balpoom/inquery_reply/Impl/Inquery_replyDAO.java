package com.balpoom.inquery_reply.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.inquery_reply.Inquery_replyVO;

@Repository
public class Inquery_replyDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	//리플 등록
	public void insertInquery_reply(Inquery_replyVO vo){
		mybatis.insert("Inquery_replyDAO.insertInquery_reply", vo);
	}
	//리플 삭제
	public void deleteInquery_reply(Inquery_replyVO vo){
		mybatis.delete("Inquery_replyDAO.deleteInquery_reply", vo);
	}
	//리플 불러오기
	public List<Inquery_replyVO> getInquery_replyList(Inquery_replyVO vo){
//		System.out.println(mybatis.selectList("Inquery_replyDAO.getInquery_replyList", vo));
		return mybatis.selectList("Inquery_replyDAO.getInquery_replyList", vo);
	}
	
	public void updateInquery_reply(Inquery_replyVO vo) {
		mybatis.update("Inquery_replyDAO.updateInquery_reply", vo);
	}
}
