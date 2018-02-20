package com.balpoom.cart;

import java.util.List;

import org.springframework.stereotype.Service;

import com.balpoom.notice.NoticeVO;

@Service("basketService")
public interface BasketService {
	
	void addBasket(BasketVO vo);
	
	void deleteBasket(BasketVO vo);
	
	void order_rs_cart_del(BasketVO vo);
	
	List<BasketVO> getBasketList(BasketVO vo);
	
	void best_rs_product_number(BasketVO vo);
	
	void  order_after_delete(BasketVO vo);
	
}
