package com.balpoom.product.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.product.OverallProductVO;
import com.balpoom.product.ProductVO;
import com.balpoom.product.RegisterVO;

@Repository
public class ProductDAO {
		
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductVO> getProduct(ProductVO pvo){
		
		System.out.println("상품 불러오기");
		return mybatis.selectList("ProductDAO.getProduct", pvo);
	}
	public ProductVO getProductGB(ProductVO pvo){
		System.out.println("상품 그룹지어서 이름이랑 프라이스만 블러온다 시뱅아");
		return mybatis.selectOne("ProductDAO.getProductGB",pvo);
	}
	
	public List<ProductVO> getProductC(ProductVO pvo){
		
		return mybatis.selectList("ProductDAO.getProductC",pvo);
		
	}
	
	public List<ProductVO> getProductS(ProductVO pvo){
		
		return mybatis.selectList("ProductDAO.getProductS",pvo);
	}
	
	public List<OverallProductVO> getOveralls(OverallProductVO vo){
		System.out.println(vo.getP_type()+"들 가져오기");
		return mybatis.selectList("ProductDAO.getOveralls",vo);
	}
	
	public List<OverallProductVO> getOverallsDetails(OverallProductVO vo){
		System.out.println(vo.getP_type_detail()+"들 가져오기");
		return mybatis.selectList("ProductDAO.getOverallsDetails",vo);
	}
	
	public List<OverallProductVO> getBests(OverallProductVO vo){
		System.out.println(vo.getP_type()+"들 가져오기");
		return mybatis.selectList("ProductDAO.getBests",vo);
	}
	
	public List<OverallProductVO> doFitple(OverallProductVO vo){
		System.out.println(vo.getP_type()+"fitple기능");
		return mybatis.selectList("ProductDAO.doFitple",vo);
	}
	
	public void insertProduct(ProductVO pvo){
		mybatis.insert("ProductDAO.insertProduct",pvo);
	}
	
	public void insertRegister(RegisterVO rvo){
		mybatis.insert("ProductDAO.insertRegister",rvo);
	}
	
	public RegisterVO getRegister(RegisterVO rvo){
		return (RegisterVO)mybatis.selectOne("ProductDAO.getRegister",rvo);
	}
	
	public void updateSellerProduct(ProductVO pvo) {//효림 수량변경
		System.out.println("---> 상품 수량 업데이트 처리");
		mybatis.update("ProductDAO.updateSellerProduct", pvo);
		
	}

	public int getChangeCnt(ProductVO pvo){//효림 수량변경
		ProductVO vo = (ProductVO)mybatis.selectOne("ProductDAO.getChangeCnt", pvo);
		return vo.getP_cnt();
	}
	public List<ProductVO> getSellerProductList(ProductVO pvo){//효림 수량변경
		
		return mybatis.selectList("ProductDAO.getSellerProductList", pvo);
		
	}
	
	public List<OverallProductVO> getIndexBests(OverallProductVO vo){
		return mybatis.selectList("ProductDAO.getIndexBests",vo);
	}
	
	public int getTotalOveralls(OverallProductVO vo){
		List<OverallProductVO> total = mybatis.selectList("ProductDAO.getTotalOveralls", vo);
		return total.size();
	}
	
	public int getTotalOverallDetails(OverallProductVO vo){
		List<OverallProductVO> total = mybatis.selectList("ProductDAO.getTotalOverallDetails",vo);
		return total.size();
	}
	
	public int getTotalFitple(OverallProductVO vo){
		List<OverallProductVO> total = mybatis.selectList("ProductDAO.getTotalFitple",vo);
		return total.size();
	}
}
