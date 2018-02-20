package com.balpoom.seller.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.seller.SellerLookupVO;
import com.balpoom.seller.SellerService;
import com.balpoom.seller.SellerVO;

@Service("sellerService")
public class SellerServiceImpl implements SellerService {
	
	@Autowired
	private SellerDAO sellerDAO;

	@Override
	public SellerVO getSeller(SellerVO vo) {
		return sellerDAO.getSeller(vo);
	}

	@Override
	public List<SellerLookupVO> getSellerOrderLookup(SellerLookupVO vo) {
		return sellerDAO.getSellerOrderLookup(vo);
	}

}
