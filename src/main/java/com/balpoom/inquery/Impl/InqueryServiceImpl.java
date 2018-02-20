package com.balpoom.inquery.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.inquery.InqueryService;
import com.balpoom.inquery.InqueryVO;




@Service("boardService")
public class InqueryServiceImpl implements InqueryService {
	@Autowired
	private InqueryDAO InqueryDAO;
	
	public void insertInquery(InqueryVO vo) {
		InqueryDAO.insertInquery(vo);
	}
	
	public void updateInquery(InqueryVO vo) {
		InqueryDAO.updateInquery(vo);
	}

	public void deleteInquery(InqueryVO vo) {
		InqueryDAO.deleteInquery(vo);
	}

	public InqueryVO getInquery(InqueryVO vo) {
		return InqueryDAO.getInquery(vo);
	}

	public List<InqueryVO> getInqueryList(InqueryVO vo) {
		return InqueryDAO.getInqueryList(vo);
	}

	@Override
	public void updateCnt(InqueryVO vo) {
		InqueryDAO.updateCnt(vo);
	}

	@Override
	public List<InqueryVO> getMypageInqueryList(InqueryVO vo) {
		return InqueryDAO.getMypageInqueryList(vo);
	}

	@Override
	public int getCountTotalInquery(InqueryVO vo) {
		return InqueryDAO.getCountTotalInquery(vo);
	}

	
	
}
