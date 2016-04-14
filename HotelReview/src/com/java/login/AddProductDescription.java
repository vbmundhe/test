package com.java.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddProductDescription extends HttpServlet {
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);
		System.out.println("Add Product Description Servlet");
		try {
		System.out.println("Comment "+request.getParameter("Comment"));
		
		int maxNoInt=0;
		
		Connection con=Dbconn.conn();
		Statement maxNo=(Statement)con.createStatement();
		ResultSet ResmaxNo;
		ResmaxNo=maxNo.executeQuery("select count(*) from ProductDescription");
		if(ResmaxNo.next())
		{
			 maxNoInt=ResmaxNo.getInt(1)+1;
			System.out.println("maxNo "+maxNoInt);
			
		}
		String NOT="NOT";
		Statement st=con.createStatement();
		
		st.executeUpdate("insert into ProductDescription(ID,Comment,Process) values('"+maxNoInt+"', '" + request.getParameter("Comment") + "', '" + NOT + "'  )");
		RequestDispatcher rd = request.getRequestDispatcher("/Homepage.jsp");
		rd.include(request, response); 
		
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
