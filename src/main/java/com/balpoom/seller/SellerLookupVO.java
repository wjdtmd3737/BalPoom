package com.balpoom.seller;

import java.util.Date;

public class SellerLookupVO {
	private int s_no;
	private int o_no;
	private Date o_date;
	private String p_total_identifier;
	private int p_price;
	private String p_size;
	private int c_cnt;
	private String sender_name;
	private String sender_cellphone1;
	private String sender_cellphone2;
	private String sender_cellphone3;
	private String m_address_postcode;
	private String m_address_primary;
	private String m_address_detail;
	private String receiver_name;
	private String receiver_address_postcode;
	private String receiver_address_primary;
	private String receiver_address_detail;
	private String receiver_cellphone1;
	private String receiver_cellphone2;
	private String receiver_cellphone3;
	private String receiver_requirement;
	
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public int getO_no() {
		return o_no;
	}
	public void setO_no(int o_no) {
		this.o_no = o_no;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	
	public String getP_total_identifier() {
		return p_total_identifier;
	}
	public void setP_total_identifier(String p_total_identifier) {
		this.p_total_identifier = p_total_identifier;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public int getC_cnt() {
		return c_cnt;
	}
	public void setC_cnt(int c_cnt) {
		this.c_cnt = c_cnt;
	}
	public String getSender_name() {
		return sender_name;
	}
	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	public String getSender_cellphone1() {
		return sender_cellphone1;
	}
	public void setSender_cellphone1(String sender_cellphone1) {
		this.sender_cellphone1 = sender_cellphone1;
	}
	public String getSender_cellphone2() {
		return sender_cellphone2;
	}
	public void setSender_cellphone2(String sender_cellphone2) {
		this.sender_cellphone2 = sender_cellphone2;
	}
	public String getSender_cellphone3() {
		return sender_cellphone3;
	}
	public void setSender_cellphone3(String sender_cellphone3) {
		this.sender_cellphone3 = sender_cellphone3;
	}
	public String getM_address_postcode() {
		return m_address_postcode;
	}
	public void setM_address_postcode(String m_address_postcode) {
		this.m_address_postcode = m_address_postcode;
	}
	public String getM_address_primary() {
		return m_address_primary;
	}
	public void setM_address_primary(String m_address_primary) {
		this.m_address_primary = m_address_primary;
	}
	public String getM_address_detail() {
		return m_address_detail;
	}
	public void setM_address_detail(String m_address_detail) {
		this.m_address_detail = m_address_detail;
	}
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}
	public String getReceiver_address_postcode() {
		return receiver_address_postcode;
	}
	public void setReceiver_address_postcode(String receiver_address_postcode) {
		this.receiver_address_postcode = receiver_address_postcode;
	}
	public String getReceiver_address_primary() {
		return receiver_address_primary;
	}
	public void setReceiver_address_primary(String receiver_address_primary) {
		this.receiver_address_primary = receiver_address_primary;
	}
	public String getReceiver_address_detail() {
		return receiver_address_detail;
	}
	public void setReceiver_address_detail(String receiver_address_detail) {
		this.receiver_address_detail = receiver_address_detail;
	}
	public String getReceiver_cellphone1() {
		return receiver_cellphone1;
	}
	public void setReceiver_cellphone1(String receiver_cellphone1) {
		this.receiver_cellphone1 = receiver_cellphone1;
	}
	public String getReceiver_cellphone2() {
		return receiver_cellphone2;
	}
	public void setReceiver_cellphone2(String receiver_cellphone2) {
		this.receiver_cellphone2 = receiver_cellphone2;
	}
	public String getReceiver_cellphone3() {
		return receiver_cellphone3;
	}
	public void setReceiver_cellphone3(String receiver_cellphone3) {
		this.receiver_cellphone3 = receiver_cellphone3;
	}
	public String getReceiver_requirement() {
		return receiver_requirement;
	}
	public void setReceiver_requirement(String receiver_requirement) {
		this.receiver_requirement = receiver_requirement;
	}
	
	@Override
	public String toString() {
		return "SellerLookupVO [s_no=" + s_no + ", o_no=" + o_no + ", o_date=" + o_date + ", p_total_identifier="
				+ p_total_identifier + ", p_price=" + p_price + ", p_size=" + p_size + ", c_cnt=" + c_cnt
				+ ", sender_name=" + sender_name + ", sender_cellphone1=" + sender_cellphone1 + ", sender_cellphone2="
				+ sender_cellphone2 + ", sender_cellphone3=" + sender_cellphone3 + ", m_address_postcode="
				+ m_address_postcode + ", m_address_primary=" + m_address_primary + ", m_address_detail="
				+ m_address_detail + ", receiver_name=" + receiver_name + ", receiver_address_postcode="
				+ receiver_address_postcode + ", receiver_address_primary=" + receiver_address_primary
				+ ", receiver_address_detail=" + receiver_address_detail + ", receiver_cellphone1="
				+ receiver_cellphone1 + ", receiver_cellphone2=" + receiver_cellphone2 + ", receiver_cellphone3="
				+ receiver_cellphone3 + ", receiver_requirement=" + receiver_requirement + "]";
	}
	
}
