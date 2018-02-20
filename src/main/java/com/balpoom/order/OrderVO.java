package com.balpoom.order;

import java.util.Date;

public class OrderVO {
	private int o_no;
	private Date o_date;
	private String p_total_identifier;
	private int m_no;
	private String sender_name;
	private String sender_email_id;
	private String sender_email_domain;
	private String sender_cellphone1;
	private String sender_cellphone2;
	private String sender_cellphone3;
	private String receiver_address_postcode;
	private String receiver_address_primary;
	private String receiver_address_detail;
	private String receiver_name;
	private String receiver_cellphone1;
	private String receiver_cellphone2;
	private String receiver_cellphone3;
	private String receiver_requirement;
	private String payment_type;
	private int total_price;
	private int o_cnt;
	
	
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
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getSender_name() {
		return sender_name;
	}
	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	public String getSender_email_id() {
		return sender_email_id;
	}
	public void setSender_email_id(String sender_email_id) {
		this.sender_email_id = sender_email_id;
	}
	public String getSender_email_domain() {
		return sender_email_domain;
	}
	public void setSender_email_domain(String sender_email_domain) {
		this.sender_email_domain = sender_email_domain;
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
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
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
	public String getPayment_type() {
		return payment_type;
	}
	public void setPayment_type(String payment_type) {
		this.payment_type = payment_type;
	}
	
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public int getO_cnt() {
		return o_cnt;
	}
	public void setO_cnt(int o_cnt) {
		this.o_cnt = o_cnt;
	}
	
	@Override
	public String toString() {
		return "OrderVO [o_no=" + o_no + ", o_date=" + o_date + ", p_total_identifier=" + p_total_identifier + ", m_no="
				+ m_no + ", sender_name=" + sender_name + ", sender_email_id=" + sender_email_id
				+ ", sender_email_domain=" + sender_email_domain + ", sender_cellphone1=" + sender_cellphone1
				+ ", sender_cellphone2=" + sender_cellphone2 + ", sender_cellphone3=" + sender_cellphone3
				+ ", receiver_address_postcode=" + receiver_address_postcode + ", receiver_address_primary="
				+ receiver_address_primary + ", receiver_address_detail=" + receiver_address_detail + ", receiver_name="
				+ receiver_name + ", receiver_cellphone1=" + receiver_cellphone1 + ", receiver_cellphone2="
				+ receiver_cellphone2 + ", receiver_cellphone3=" + receiver_cellphone3 + ", receiver_requirement="
				+ receiver_requirement + ", payment_type=" + payment_type + ", total_price=" + total_price + ", o_cnt="
				+ o_cnt + "]";
	}
}
