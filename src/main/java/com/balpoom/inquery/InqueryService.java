package com.balpoom.inquery;

import java.util.List;




public interface InqueryService {

	void insertInquery(InqueryVO vo);
	
	void updateInquery(InqueryVO vo);
	
	void deleteInquery(InqueryVO vo);
	
	void updateCnt(InqueryVO vo);
	
	InqueryVO getInquery(InqueryVO vo);
	
	List<InqueryVO> getInqueryList(InqueryVO vo);
	
	List<InqueryVO> getMypageInqueryList(InqueryVO vo);
	
	int getCountTotalInquery(InqueryVO vo);
}
