package model;

import java.sql.Date;

public class Cafe_re {
	 private int r_no;
	 private String r_content;
	 private Date r_reg_date;
	 private String r_del;
	 private Date r_del_date;
	 private String user_id;
	 private int c_no;
	 
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public Date getR_reg_date() {
		return r_reg_date;
	}
	public void setR_reg_date(Date r_reg_date) {
		this.r_reg_date = r_reg_date;
	}
	public String getR_del() {
		return r_del;
	}
	public void setR_del(String r_del) {
		this.r_del = r_del;
	}
	public Date getR_del_date() {
		return r_del_date;
	}
	public void setR_del_date(Date r_del_date) {
		this.r_del_date = r_del_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setuser_ID(String user_id) {
		user_id = user_id;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
}