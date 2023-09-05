package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Staff;
import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;

public class StaffDao {
    private Connection conn;

	public StaffDao(Connection conn) {
		super();
		this.conn = conn;
	}
    
	public boolean staffRegister(Staff s) {
		boolean f=false;
		try {
			String sql="insert into staff(fname,lname,uname,password,join_date) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, s.getFname());
			ps.setString(2, s.getLname());
			ps.setString(3, s.getUname());
			ps.setString(4, s.getPassword());
			ps.setString(5, s.getJoin_date());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public Staff login(String uname,String password) {
		Staff s=null;
		try {
			String sql="select * from staff where uname=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,uname);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				s=new Staff();
				s.setId(rs.getInt(1));
				s.setFname(rs.getString(2));
				s.setLname(rs.getString(3));
				s.setUname(rs.getString(4));
				s.setPassword(rs.getString(5));
				s.setJoin_date(rs.getString(6));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	}
	
}
