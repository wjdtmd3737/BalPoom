package com.balpoom.review;

import java.util.List;

public interface ReviewService {
	
	void insertReview(ReviewVO vo);
	
	void deleteReview(ReviewVO vo);
	
	void updateReview(ReviewVO vo);
	
	ReviewVO getReview(ReviewVO vo);
	
	List<ReviewVO> getReviewList(ReviewVO vo);
	
	List<ReviewVO> getMypageReviewList(ReviewVO vo);
	
	int getTotalReviewCount(ReviewVO vo);
	
}
