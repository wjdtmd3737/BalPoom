package com.balpoom.product;

import java.util.List;

public class IndexBests {
	private List<OverallProductVO> outer_best;
	private List<OverallProductVO> top_best;
	private List<OverallProductVO> bottom_best;
	private List<OverallProductVO> shoes_best;
	public List<OverallProductVO> getOuter_best() {
		return outer_best;
	}
	public void setOuter_best(List<OverallProductVO> outer_best) {
		this.outer_best = outer_best;
	}
	public List<OverallProductVO> getTop_best() {
		return top_best;
	}
	public void setTop_best(List<OverallProductVO> top_best) {
		this.top_best = top_best;
	}
	public List<OverallProductVO> getBottom_best() {
		return bottom_best;
	}
	public void setBottom_best(List<OverallProductVO> bottom_best) {
		this.bottom_best = bottom_best;
	}
	public List<OverallProductVO> getShoes_best() {
		return shoes_best;
	}
	public void setShoes_best(List<OverallProductVO> shoes_best) {
		this.shoes_best = shoes_best;
	}
	@Override
	public String toString() {
		return "IndexBests [outer_best=" + outer_best + ", top_best=" + top_best + ", bottom_best=" + bottom_best
				+ ", shoes_best=" + shoes_best + "]";
	}
	
	

}
