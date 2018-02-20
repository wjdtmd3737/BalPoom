package com.balpoom.cart;

public class BasketVO {
	private int c_no;
	private int m_no;
	private String p_name;
	private int c_cnt;
	private int p_price;
	private String p_identifier;
	private int validity;
	
	
	public String getP_identifier() {
		return p_identifier;
	}
	public void setP_identifier(String p_identifier) {
		this.p_identifier = p_identifier;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getC_cnt() {
		return c_cnt;
	}
	public void setC_cnt(int c_cnt) {
		this.c_cnt = c_cnt;
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
	
	public int getValidity() {
		return validity;
	}
	public void setValidity(int validity) {
		this.validity = validity;
	}
	@Override
	public String toString() {
		return "BasketVO [c_no=" + c_no + ", m_no=" + m_no + ", p_name=" + p_name + ", c_cnt=" + c_cnt + ", p_price="
				+ p_price + ", p_identifier=" + p_identifier + "]";
	}

    
}