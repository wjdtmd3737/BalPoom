package com.balpoom.inquery_reply.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.inquery_reply.Inquery_replyService;
import com.balpoom.inquery_reply.Inquery_replyVO;

@Service("inquery_replyService")
public class Inquery_replyServiceImpl implements Inquery_replyService{
	@Autowired
	private Inquery_replyDAO inquery_replyDAO;
	
	@Override
	public void insertInquery_reply(Inquery_replyVO vo){
		inquery_replyDAO.insertInquery_reply(vo);
	}

	@Override
	public void deleteInquery_reply(Inquery_replyVO vo) {
		inquery_replyDAO.deleteInquery_reply(vo);
		
	}

	@Override
	public List<Inquery_replyVO> getInquery_replyList(Inquery_replyVO vo) {
		return inquery_replyDAO.getInquery_replyList(vo);
	}

	@Override
	public void updateInquery_reply(Inquery_replyVO vo) {
		inquery_replyDAO.updateInquery_reply(vo);
		
	}
}
