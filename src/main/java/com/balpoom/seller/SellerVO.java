package com.balpoom.seller;

import java.util.Date;

public class SellerVO {
	private int s_no;
	private String s_name;
	private String s_password;
	private String s_id;
	private Date s_reg;
	private String s_tel;
	private String s_address;
	private String s_busi_name;
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_password() {
		return s_password;
	}
	public void setS_password(String s_password) {
		this.s_password = s_password;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public Date getS_reg() {
		return s_reg;
	}
	public void setS_reg(Date s_reg) {
		this.s_reg = s_reg;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getS_address() {
		return s_address;
	}
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}
	public String getS_busi_name() {
		return s_busi_name;
	}
	public void setS_busi_name(String s_busi_name) {
		this.s_busi_name = s_busi_name;
	}
	@Override
	public String toString() {
		return "Seller [s_no=" + s_no + ", s_name=" + s_name + ", s_password=" + s_password + ", s_id=" + s_id
				+ ", s_reg=" + s_reg + ", s_tel=" + s_tel + ", s_address=" + s_address + ", s_busi_name=" + s_busi_name
				+ "]";
	}
	
	
}
