package com.balpoom.product;

public class RegisterVO {

	private String r_reg;
	private int r_no;
	private String p_common_name;
	private int s_no;
	private String fileNameDate;
	

	public String getFileNameDate() {
		return fileNameDate;
	}

	public void setFileNameDate(String fileNameDate) {
		this.fileNameDate = fileNameDate;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public String getR_reg() {
		return r_reg;
	}

	public void setR_reg(String r_reg) {
		this.r_reg = r_reg;
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


	@Override
	public String toString() {
		return "RegisterVO [r_reg=" + r_reg + ", r_no=" + r_no + ", p_common_name=" + p_common_name + ", s_no=" + s_no
				+ ", fileNameDate=" + fileNameDate + "]";
	}

	public RegisterVO(String r_reg, String p_common_name, int s_no,String fileNameDate) {
		super();
		this.r_reg = r_reg;
		this.p_common_name = p_common_name;
		this.s_no = s_no;
		this.fileNameDate = fileNameDate;
	}
	public RegisterVO() {
		// TODO Auto-generated constructor stub
	}


}
