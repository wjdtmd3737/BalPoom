package com.balpoom.inquery_reply;

import java.util.List;




public interface Inquery_replyService {
	void insertInquery_reply(Inquery_replyVO vo);
	
	void deleteInquery_reply(Inquery_replyVO vo);	
	
	List<Inquery_replyVO> getInquery_replyList(Inquery_replyVO vo);
	
	void updateInquery_reply(Inquery_replyVO vo);

	
}
