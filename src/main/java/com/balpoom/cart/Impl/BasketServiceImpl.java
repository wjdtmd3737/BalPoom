package com.balpoom.cart.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.cart.BasketService;
import com.balpoom.cart.BasketVO;

@Service("basketService")
public class BasketServiceImpl implements BasketService{
	
	@Autowired
	private BasketDAO basketDAO;
	
	@Override
	public void addBasket(BasketVO vo) {
		basketDAO.addBasket(vo);
	}

	@Override
	public void deleteBasket(BasketVO vo) {
		basketDAO.deleteBasket(vo);
	}

	@Override
	public List<BasketVO> getBasketList(BasketVO vo) {
		return basketDAO.getBasketList(vo);
	}

	@Override
	public void order_rs_cart_del(BasketVO vo) {
		basketDAO.order_rs_cart_del(vo);
	}

	@Override
	public void best_rs_product_number(BasketVO vo) {
		basketDAO.best_rs_product_number(vo);
	}

	@Override
	public void order_after_delete(BasketVO vo) {
		basketDAO.order_after_delete(vo);
	}
	
}
