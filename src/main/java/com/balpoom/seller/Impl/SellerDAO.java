package com.balpoom.seller.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.seller.SellerLookupVO;
import com.balpoom.seller.SellerVO;

@Repository("sellerDAO")
public class SellerDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public SellerVO getSeller(SellerVO vo){
		System.out.println("---> mybatis로 getSeller() 기능 처리");
		return (SellerVO) mybatis.selectOne("SellerDAO.getSeller",vo);
	}
	
	public List<SellerLookupVO> getSellerOrderLookup(SellerLookupVO vo) {
		System.out.println("---> mybatis로 getSellerOrderLookup() 기능 처리");
		return mybatis.selectList("SellerDAO.getSellerOrderLookup",vo);
	}

}
