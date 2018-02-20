package com.balpoom.order.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.cart.BasketVO;
import com.balpoom.order.OrderVO;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void addOrder(OrderVO vo) {
		mybatis.insert("OrderDAO.addOrder",vo);
	}
	
	public List<OrderVO> getOrderList(OrderVO vo) {
		
		System.out.println("---> mybatis로 getOrderList() 기능 처리");
		return mybatis.selectList("OrderDAO.getOrderList",vo);
	}
}
