package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.StaffDao;
import com.db.DBConnect;
import com.entity.Staff;

@WebServlet("/staff_register")
public class StaffRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fname=req.getParameter("fname");
			String lname=req.getParameter("lname");
			String uname=req.getParameter("uname");
			String password=req.getParameter("password");
			String join_date=req.getParameter("join_date");
			
			Staff s=new Staff(fname,lname,uname,password,join_date);
			
			StaffDao dao=new StaffDao(DBConnect.getConn());
			
		    HttpSession session=req.getSession();
			boolean f=dao.staffRegister(s);
			if(f)
			{
				session.setAttribute("sucMsg", "Registered Successfully");
				resp.sendRedirect("addStaff.jsp");
			}else {
				session.setAttribute("errorMsg", "Something went wrong on server");
				resp.sendRedirect("addStaff.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
