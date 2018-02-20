package com.balpoom.product;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {

	private String p_identifier;
	private int r_no;
	private String p_name;
	private String p_type;
	private int p_price;
	private int p_cnt;
	private int p_s1;
	private int p_s2;
	private int p_s3;
	private int p_s4;
	private int p_s5;
	private String p_color;
	private String p_size;
	private String r_date;
	private String p_common_name;
	private String p_type_detail;
	private String s_busi_name; //효림 수량변경
	private int s_no;
	private String fileNameDate;
	private MultipartFile main_img1;
	private MultipartFile main_img2;
	private MultipartFile detail_img1;
	private MultipartFile detail_img2;
	private MultipartFile detail_img3;
	private MultipartFile detail_img4;

	public String getFileNameDate() {
		return fileNameDate;
	}

	public void setFileNameDate(String fileNameDate) {
		this.fileNameDate = fileNameDate;
	}

	public String getS_busi_name() {
		return s_busi_name;
	}

	public void setS_busi_name(String s_busi_name) {
		this.s_busi_name = s_busi_name;
	}

	public MultipartFile getMain_img1() {
		return main_img1;
	}

	public void setMain_img1(MultipartFile main_img1) {
		this.main_img1 = main_img1;
	}

	public MultipartFile getMain_img2() {
		return main_img2;
	}

	public void setMain_img2(MultipartFile main_img2) {
		this.main_img2 = main_img2;
	}

	public MultipartFile getDetail_img1() {
		return detail_img1;
	}

	public void setDetail_img1(MultipartFile detail_img1) {
		this.detail_img1 = detail_img1;
	}

	public MultipartFile getDetail_img2() {
		return detail_img2;
	}

	public void setDetail_img2(MultipartFile detail_img2) {
		this.detail_img2 = detail_img2;
	}

	public MultipartFile getDetail_img3() {
		return detail_img3;
	}

	public void setDetail_img3(MultipartFile detail_img3) {
		this.detail_img3 = detail_img3;
	}

	public MultipartFile getDetail_img4() {
		return detail_img4;
	}

	public void setDetail_img4(MultipartFile detail_img4) {
		this.detail_img4 = detail_img4;
	}

	public MultipartFile getDetail_img5() {
		return detail_img5;
	}

	public void setDetail_img5(MultipartFile detail_img5) {
		this.detail_img5 = detail_img5;
	}

	private MultipartFile detail_img5;

	public ProductVO(String p_identifier, int r_no, String p_name, String p_type, int p_price, int p_s1, int p_s2,
			int p_s3, int p_s4, int p_s5, String p_color, String p_size, String p_common_name,int s_no, String p_type_detail) {
		super();
		this.p_identifier = p_identifier;
		this.r_no = r_no;
		this.p_name = p_name;
		this.p_type = p_type;
		this.p_price = p_price;
		this.p_s1 = p_s1;
		this.p_s2 = p_s2;
		this.p_s3 = p_s3;
		this.p_s4 = p_s4;
		this.p_s5 = p_s5;
		this.p_color = p_color;
		this.p_size = p_size;
		this.p_common_name = p_common_name;
		this.s_no = s_no;
		this.p_type_detail = p_type_detail;
	}

	public String getP_type_detail() {
		return p_type_detail;
	}

	public void setP_type_detail(String p_type_detail) {
		this.p_type_detail = p_type_detail;
	}

	public String getP_identifier() {
		return p_identifier;
	}

	public void setP_identifier(String p_identifier) {
		this.p_identifier = p_identifier;
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

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_cnt() {
		return p_cnt;
	}

	public void setP_cnt(int p_cnt) {
		this.p_cnt = p_cnt;
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

	public String getP_color() {
		return p_color;
	}

	public void setP_color(String p_color) {
		this.p_color = p_color;
	}

	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}



	@Override
	public String toString() {
		return "ProductVO [p_identifier=" + p_identifier + ", r_no=" + r_no + ", p_name=" + p_name + ", p_type="
				+ p_type + ", p_price=" + p_price + ", p_cnt=" + p_cnt + ", p_s1=" + p_s1 + ", p_s2=" + p_s2 + ", p_s3="
				+ p_s3 + ", p_s4=" + p_s4 + ", p_s5=" + p_s5 + ", p_color=" + p_color + ", p_size=" + p_size
				+ ", r_date=" + r_date + ", p_common_name=" + p_common_name + ", p_type_detail=" + p_type_detail
				+ ", s_busi_name=" + s_busi_name + ", s_no=" + s_no + ", fileNameDate=" + fileNameDate + ", main_img1="
				+ main_img1 + ", main_img2=" + main_img2 + ", detail_img1=" + detail_img1 + ", detail_img2="
				+ detail_img2 + ", detail_img3=" + detail_img3 + ", detail_img4=" + detail_img4 + ", detail_img5="
				+ detail_img5 + "]";
	}

	public ProductVO() {
		// TODO Auto-generated constructor stub
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

}
