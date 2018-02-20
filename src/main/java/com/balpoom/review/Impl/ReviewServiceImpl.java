package com.balpoom.review.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.review.ReviewService;
import com.balpoom.review.ReviewVO;

@Repository
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO ReviewDAO;
	

	public void insertReview(ReviewVO vo){
		ReviewDAO.insertReview(vo);
	}
	
	public void deleteReview(ReviewVO vo){
		
		ReviewDAO.deleteReview(vo);
	
	}
	
	public void updateReview(ReviewVO vo){
		
		ReviewDAO.updateReview(vo);
	}
	
	public ReviewVO getReview(ReviewVO vo){
		
		return ReviewDAO.getReview(vo);
	}
	
	public List<ReviewVO> getReviewList(ReviewVO vo){
		return ReviewDAO.getReviewList(vo);
	}
	public List<ReviewVO> getMypageReviewList(ReviewVO vo){
		return ReviewDAO.getMypageReviewList(vo);
	}

	@Override
	public int getTotalReviewCount(ReviewVO vo) {
		return ReviewDAO.getTotalReviewCount(vo);
	} 
	
}
