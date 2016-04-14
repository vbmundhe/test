package com.java.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddDbServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection conn=Dbconn.conn();
			Statement st=conn.createStatement();
			st.executeUpdate("truncate productdescription");
			st.executeUpdate("truncate hotelinfo");
			checking checking=new checking();
			checking.insertdata();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		RequestDispatcher rd = request.getRequestDispatcher("/AdminHomePage.jsp");
		rd.include(request, response); 
	}
}
