package com.balpoom.review;

import java.util.List;



public class ReviewPage {
	private int total; // 총 글 글개수
	private int currentPage; //사용자가 요청한 페이지 번호를 보관
	private List<ReviewVO> content; //화면에 출력할 게시글 목록 보관
	private int totalPages; // 전체 페이지개수
	private int startPage; // 화면 하단에 보여줄 이동 링크 시작 번호
	private int endPage;//화면 하단에 보여줄 이동 링크 끝 번호

	
	public ReviewPage(int total, int currentPage, int size, List<ReviewVO> content){
		this.total = total;
		this.currentPage = currentPage;
		this.content = content;
		if(total == 0){
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		} else { 
			totalPages = total / size;
			if(total % size > 0){
				totalPages++;
			}
			int modVal = currentPage % 5;
			startPage = currentPage / 5 *5+1;
			if(modVal == 0 )startPage -=5;
			
			endPage = startPage +4;
			if(endPage > totalPages) endPage = totalPages;
		}
	}
	public int getTotal(){
		return total;
	}
	
	public boolean hasNoReviews(){
		return total==0;
	}
	
	public boolean hasReviews(){
		return total > 0;
	}
	
	public int getCurrentPage(){
		return currentPage;
	}
	
	public int getTotalPages(){
		return totalPages;
	}
	
	public List<ReviewVO> getContent(){
		return content;
	}
	
	public int getStartPage(){
		return startPage;
	}
	
	public int getEndPage(){
		return endPage;
	}
}
