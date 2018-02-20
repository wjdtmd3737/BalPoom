package com.balpoom.order;

import java.util.List;


public interface OrderService {
	void addOrder(OrderVO vo);
	
	List<OrderVO> getOrderList(OrderVO vo);
}
