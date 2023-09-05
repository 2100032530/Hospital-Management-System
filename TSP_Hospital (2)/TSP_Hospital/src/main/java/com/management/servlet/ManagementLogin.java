package com.management.servlet;

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

@WebServlet("/managementlogin")
public class ManagementLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String uname=req.getParameter("uname");
			String password=req.getParameter("password");
			
			HttpSession session=req.getSession();
			
			if("tsp".equals(uname) && "tsp".equals(password)) {
				session.setAttribute("managementObj", new Staff());
				resp.sendRedirect("management_home.jsp");
			}else {
				session.setAttribute("errorMsg","invalid username or password");
				resp.sendRedirect("management_login.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
