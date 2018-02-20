package com.balpoom.inquery_reply;

import java.util.Date;

public class Inquery_replyVO {
	private int inqu_reply_no ;
	private Date inqu_reply_reg;
	private String inqu_reply_content;
	private int inqu_no;
	private int s_no;
	public int getInqu_reply_no() {
		return inqu_reply_no;
	}
	public void setInqu_reply_no(int inqu_reply_no) {
		this.inqu_reply_no = inqu_reply_no;
	}
	public Date getInqu_reply_reg() {
		return inqu_reply_reg;
	}
	public void setInqu_reply_reg(Date inqu_reply_reg) {
		this.inqu_reply_reg = inqu_reply_reg;
	}
	public String getInqu_reply_content() {
		return inqu_reply_content;
	}
	public void setInqu_reply_content(String inqu_reply_content) {
		this.inqu_reply_content = inqu_reply_content;
	}
	public int getInqu_no() {
		return inqu_no;
	}
	public void setInqu_no(int inqu_no) {
		this.inqu_no = inqu_no;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	@Override
	public String toString() {
		return "Inquery_replyVO [inqu_reply_no=" + inqu_reply_no + ", inqu_reply_reg=" + inqu_reply_reg
				+ ", inqu_reply_content=" + inqu_reply_content + ", inqu_no=" + inqu_no + ", s_no=" + s_no + "]";
	}
	
	
	
}
