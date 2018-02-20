package com.balpoom.product;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ProductService {

	List<ProductVO> getProduct(ProductVO pvo);
	ProductVO getProductGB(ProductVO pvo);
	List<ProductVO> getProductC(ProductVO pvo);
	List<ProductVO> getProductS(ProductVO pvo);
	
	List<OverallProductVO> getOveralls(OverallProductVO vo);
	List<OverallProductVO> getOverallsDetails(OverallProductVO vo);
	List<OverallProductVO> getBests(OverallProductVO vo);
	List<OverallProductVO> doFitple(OverallProductVO vo);
	
	List<OverallProductVO> getIndexBests(OverallProductVO vo);
	int getTotalOveralls(OverallProductVO vo);
	int getTotalOverallDetails(OverallProductVO vo);
	int getTotalFitple(OverallProductVO vo);
	
	void insertProduct(ProductVO pvo);	
	void insertRegister(RegisterVO rvo);
	RegisterVO getRegister(RegisterVO rvo);
	
	void updateSellerProduct(ProductVO pvo); //효림 수량변경
	List<ProductVO> getSellerProductList(ProductVO pvo); //효림 수량변경
	int getChangeCnt(ProductVO pvo); //효림 수량변경

}
