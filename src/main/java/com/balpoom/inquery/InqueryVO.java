package com.balpoom.inquery;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class InqueryVO {

	private int inqu_no;
	private String inqu_title;
	private Date inqu_reg;
	private int inqu_cnt;
	private String inqu_content;
	private String searchCondition;
	private String searchKeyword;
	private int m_no;
	private int p_no;
	private String m_name;
	private String m_id;
	private String fileName_date;
	private String reg_date;
	
	private String p_common_name;
	private int s_no;
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

	public String getP_common_name() {
		return p_common_name;
	}

	public void setP_common_name(String p_common_name) {
		this.p_common_name = p_common_name;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_o) {
		this.s_no = s_no;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	private MultipartFile uploadFile;

	public String getFileName_date() {
		return fileName_date;
	}

	public void setFileName_date(String fileName_date) {
		this.fileName_date = fileName_date;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public int getInqu_no() {
		return inqu_no;
	}

	public void setInqu_no(int inqu_no) {
		this.inqu_no = inqu_no;
	}

	public String getInqu_title() {
		return inqu_title;
	}

	public void setInqu_title(String inqu_title) {
		this.inqu_title = inqu_title;
	}

	public Date getInqu_reg() {
		return inqu_reg;
	}

	public void setInqu_reg(Date inqu_reg) {
		this.inqu_reg = inqu_reg;
	}

	public int getInqu_cnt() {
		return inqu_cnt;
	}

	public void setInqu_cnt(int inqu_cnt) {
		this.inqu_cnt = inqu_cnt;
	}

	public String getInqu_content() {
		return inqu_content;
	}

	public void setInqu_content(String inqu_content) {
		this.inqu_content = inqu_content;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	@Override
	public String toString() {
		return "InqueryVO [inqu_no=" + inqu_no + ", inqu_title=" + inqu_title + ", inqu_reg=" + inqu_reg + ", inqu_cnt="
				+ inqu_cnt + ", inqu_content=" + inqu_content + ", searchCondition=" + searchCondition
				+ ", searchKeyword=" + searchKeyword + ", m_no=" + m_no + ", p_no=" + p_no + ", m_name=" + m_name
				+ ", m_id=" + m_id + ", fileName_date=" + fileName_date + ", reg_date=" + reg_date + ", p_common_name="
				+ p_common_name + ", s_no=" + s_no + ", r_no=" + r_no + ", startRow=" + startRow + ", size=" + size
				+ ", uploadFile=" + uploadFile + "]";
	}






	

	

}
