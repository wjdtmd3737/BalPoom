package com.balpoom.notice.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.notice.NoticeService;
import com.balpoom.notice.NoticeVO;

@Service("noticeService")
public class NoticeServiceImpl  implements NoticeService{
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public void insertNotice(NoticeVO vo) {
		noticeDAO.insertNotice(vo);
	}

	@Override
	public void updateNotice(NoticeVO vo) {
		noticeDAO.updateNotice(vo);
	}

	@Override
	public void deleteNotice(NoticeVO vo) {
		noticeDAO.deleteNotice(vo);
	}

	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		return noticeDAO.getNotice(vo);
	}

	@Override
	public List<NoticeVO> getNoticeList(NoticeVO vo) {
		return noticeDAO.getNoticeList(vo);
	}

	@Override
	public void updateCnt(NoticeVO vo) {
		noticeDAO.updateCnt(vo);
	}

	@Override
	public List<NoticeVO> getNoticeListByTitle(NoticeVO vo) {
		return noticeDAO.getNoticeListByTitle(vo);
	}

	@Override
	public List<NoticeVO> getNoticeListByContent(NoticeVO vo) {
		return noticeDAO.getNoticeListByContent(vo);
	}

	@Override
	public int getCountTotalNotice(NoticeVO vo) {
		List<NoticeVO> total = noticeDAO.getCountTotalNotice(vo);
		return total.size();
	}

}
