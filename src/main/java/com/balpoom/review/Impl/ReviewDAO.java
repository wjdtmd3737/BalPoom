package com.balpoom.review.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.review.ReviewVO;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertReview(ReviewVO vo){
		
		mybatis.insert("ReviewDAO.insertReview", vo);
	}
	
	public void deleteReview(ReviewVO vo){
		
		mybatis.delete("ReviewDAO.deleteReview", vo);
	}
	
	public void updateReview(ReviewVO vo){
		
		mybatis.update("ReviewDAO.updateReview", vo);
	}
		
	public ReviewVO getReview(ReviewVO vo){
		
		return (ReviewVO) mybatis.selectOne("ReviewDAO.getReview", vo);
	}
	
	public List<ReviewVO> getReviewList(ReviewVO vo){
		System.out.println("후기 목록 불러오기");
		
		return mybatis.selectList("ReviewDAO.getReviewList", vo);
	}
	
	public List<ReviewVO> getMypageReviewList(ReviewVO vo){
		return mybatis.selectList("ReviewDAO.getReviewMypageList",vo);
	}
	
	public int getTotalReviewCount(ReviewVO vo){
		List<ReviewVO> total = mybatis.selectList("ReviewDAO.getTotalReviewCount",vo);
		return total.size();
	}
}
