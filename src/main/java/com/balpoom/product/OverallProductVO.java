package com.balpoom.product;

import java.util.Date;

public class OverallProductVO {
	
	private String p_name;
	private int p_price;
	private String s_busi_name;
	private String p_type;
	private String p_type_detail;
	private String p_common_name;
	private Date r_reg;
	
	private String modify_date;
	
	private int p_s1;
	private int p_s2;
	private int p_s3;
	private int p_s4;
	private int p_s5;
	
	private int r_no;
	
	private int startRow;
	private int size;
	
	
	
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getModify_date() {
		return modify_date;
	}
	public void setModify_date(String modify_date) {
		this.modify_date = modify_date;
	}
	public String getP_common_name() {
		return p_common_name;
	}
	public void setP_common_name(String p_common_name) {
		this.p_common_name = p_common_name;
	}
	public Date getR_reg() {
		return r_reg;
	}
	public void setR_reg(Date r_reg) {
		this.r_reg = r_reg;
	}
	
	public String getP_type_detail() {
		return p_type_detail;
	}
	public void setP_type_detail(String p_type_detail) {
		this.p_type_detail = p_type_detail;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getS_busi_name() {
		return s_busi_name;
	}
	public void setS_busi_name(String s_busi_name) {
		this.s_busi_name = s_busi_name;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public int getP_s1() {
		return p_s1;
	}
	public void setP_s1(int p_s1) {
		this.p_s1 = p_s1;
	}
	public int getP_s2() {
		return p_s2;
	}
	public void setP_s2(int p_s2) {
		this.p_s2 = p_s2;
	}
	public int getP_s3() {
		return p_s3;
	}
	public void setP_s3(int p_s3) {
		this.p_s3 = p_s3;
	}
	public int getP_s4() {
		return p_s4;
	}
	public void setP_s4(int p_s4) {
		this.p_s4 = p_s4;
	}
	public int getP_s5() {
		return p_s5;
	}
	public void setP_s5(int p_s5) {
		this.p_s5 = p_s5;
	}
	@Override
	public String toString() {
		return "OverallProductVO [p_name=" + p_name + ", p_price=" + p_price + ", s_busi_name=" + s_busi_name
				+ ", p_type=" + p_type + ", p_type_detail=" + p_type_detail + ", p_common_name=" + p_common_name
				+ ", r_reg=" + r_reg + ", modify_date=" + modify_date + ", p_s1=" + p_s1 + ", p_s2=" + p_s2 + ", p_s3="
				+ p_s3 + ", p_s4=" + p_s4 + ", p_s5=" + p_s5 + ", r_no=" + r_no + ", startRow=" + startRow + ", size="
				+ size + "]";
	}





	
	

}
