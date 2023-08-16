package model;

import java.sql.Date;

public class Board {
	 private int b_no;
	 private String b_writer;
	 private String b_subject;
	 private String b_img1;
	 private String b_img2;
	 private String b_img3;
	 private String b_content;
	 private String b_pass;
	 private Date b_reg_date;
	 private String b_del;
	 private int b_readcount;
	 private String User_ID;
	 
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public String getB_subject() {
		return b_subject;
	}
	public void setB_subject(String b_subject) {
		this.b_subject = b_subject;
	}
	public String getB_img1() {
		return b_img1;
	}
	public void setB_img1(String b_img1) {
		this.b_img1 = b_img1;
	}
	public String getB_img2() {
		return b_img2;
	}
	public void setB_img2(String b_img2) {
		this.b_img2 = b_img2;
	}
	public String getB_img3() {
		return b_img3;
	}
	public void setB_img3(String b_img3) {
		this.b_img3 = b_img3;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_pass() {
		return b_pass;
	}
	public void setB_pass(String b_pass) {
		this.b_pass = b_pass;
	}
	public Date getB_reg_date() {
		return b_reg_date;
	}
	public void setB_reg_date(Date b_reg_date) {
		this.b_reg_date = b_reg_date;
	}
	public String getB_del() {
		return b_del;
	}
	public void setB_del(String b_del) {
		this.b_del = b_del;
	}
	public int getB_readcount() {
		return b_readcount;
	}
	public void setB_readcount(int b_readcount) {
		this.b_readcount = b_readcount;
	}
	public String getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(String user_ID) {
		User_ID = user_ID;
	}
}
