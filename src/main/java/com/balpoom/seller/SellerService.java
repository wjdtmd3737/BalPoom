package com.balpoom.seller;

import java.util.List;

public interface SellerService {

	SellerVO getSeller(SellerVO vo);
	List<SellerLookupVO> getSellerOrderLookup(SellerLookupVO vo);
}
