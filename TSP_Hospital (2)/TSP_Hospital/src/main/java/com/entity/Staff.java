package com.entity;

public class Staff {
	private int id;
	private String fname;
	private String lname;
	private String uname;
	private String password;
	private String join_date;
	
	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Staff(String fname, String lname, String uname, String password, String join_date) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.uname = uname;
		this.password = password;
		this.join_date = join_date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}

}
