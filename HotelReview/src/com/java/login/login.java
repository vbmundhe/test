package com.java.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.channels.SeekableByteChannel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;



public class login extends HttpServlet {
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);
System.out.println("Login Servlet");
		
		System.out.println("user_email "+request.getParameter("usrname"));
		System.out.println("user_password "+request.getParameter("passwd"));
		if(request.getParameter("usrname").equals("admin") && request.getParameter("passwd").equals("admin"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("/AdminHomePage.jsp");
			rd.include(request, response); 
		}
		else
		{
		Connection con;
		try {
			con = Dbconn.conn();
			
			Statement stRegister=con.createStatement();
			ResultSet rsLogin;
			rsLogin=stRegister.executeQuery("select * from register where Username='" +request.getParameter("usrname")+ "' and Password='"+request.getParameter("passwd")+"'");
			if(rsLogin.next())
			{
				System.out.println("OK ");
				session.setAttribute("name", request.getParameter("usrname"));
				RequestDispatcher rd = request.getRequestDispatcher("/Homepage.jsp");
				rd.include(request, response); 
				
				
			}
			else
			{
				session.setAttribute("wrong", "wrong");
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.include(request, response); 
			}
			
		}  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 
		}
		}
	}
}
