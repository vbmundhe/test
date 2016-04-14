package com.java.login;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProcessServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	System.out.println("In Doget Method");
	HttpSession session=request.getSession(true);
	//String Author=request.getParameter("u");
//	System.out.println("In Doget Method"+Author);
	int pos=0,neg=0;
	try {
		Connection con = Dbconn.conn();
		
		Statement stUpdate=con.createStatement();
		
	//	stUpdate.executeUpdate("update productdescription set Process='OK' where ID='"+id+"'");
		
		Statement sttruncate=con.createStatement();
		sttruncate.executeUpdate("truncate table stemmeddata");
		String Aspect="",Stemmed="";
		Statement stSelect=con.createStatement();
		Statement stInsert=con.createStatement();
		ResultSet rsProcess;
		rsProcess=stSelect.executeQuery("select * from productdescription");  // where Author='" +Author+ "'
		while(rsProcess.next())
		{
			
			String CommentedText=rsProcess.getString("Content");
			String id=rsProcess.getString("id");
			StringTokenizer st = new StringTokenizer(CommentedText,"."); //Tokenization
			while (st.hasMoreTokens()) {  
		        String FirstToken=st.nextToken();  
		     
			
			
			RemoveStopwords rmst=new RemoveStopwords();
			String stopwordless=rmst.RemoveWords(FirstToken);
			
			
			
			Stemmer ss = new Stemmer();
			 String fname="E:\\StemmerInput.txt";
	        
	           Writer writer = null;
	           writer = new BufferedWriter(new OutputStreamWriter(
	           new FileOutputStream(fname), "utf-8"));
	           writer.append(stopwordless);
	           writer.close();
	           Stemmed="";
	             Stemmed=ss.GetData(fname);
	           System.out.println("Final Data after Stemmed: - \t"+Stemmed);
	            Aspect="";
	           if(Stemmed.contains("staff")||Stemmed.contains("Staff "))
	           {
	        	   Aspect="Staff";
	           }
	           if(Stemmed.contains("food")||Stemmed.contains("Food"))
	           {
	        	   Aspect="Food";
	           }
	          /* if(Stemmed.contains("location")||Stemmed.contains("Location"))
	           {
	        	   Aspect="Location";
	           }*/
	           if(Stemmed.contains("Hotel")||Stemmed.contains("hotel"))
	           {
	        	   Aspect="Hotel";
	           }
	           if(Stemmed.contains("park")||Stemmed.contains("Park"))
	           {
	        	   Aspect="Parking";
	           }
	           if(Stemmed.contains("room")||Stemmed.contains("Room"))
	           {
	        	   Aspect="Room";
	           }
	           if(Stemmed.contains("service")||Stemmed.contains("Service"))
	           {
	        	   Aspect="Service";
	           }
	           if(Stemmed.contains("special")||Stemmed.contains("Special"))
	           {
	        	   Aspect="Special";
	           }
	           
	           
	          
	           
	           calculateScore calculateScore=new calculateScore();
	           //calculateScore.Calcscore(Stemmed);
	           String score = calculateScore.Calcscore(Stemmed);
               System.out.println(score);
               pos=0;neg=0;
               String[] parts = score.split("\t");
                 pos = Integer.parseInt(parts[0]);
                 neg = Integer.parseInt(parts[1]);
                
                System.out.println("Postive words:- " +pos);
                System.out.println("Negetive words:- " +neg);
	           if(!Aspect.equals(""))
	           stInsert.executeUpdate("insert into stemmeddata values('" + id	+ "','" + Stemmed	+ "','" + pos	+ "','" + neg	+ "' ,'" + Aspect	+ "' )");
	           
	          /* String UpdateQuery="";
	           if(Stemmed.contains("Screen")||Stemmed.contains("screen"))
	           {
	        	    UpdateQuery="update reviewdetails set Screen='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Camera")||Stemmed.contains("camera"))
	           {
	        	    UpdateQuery="update reviewdetails set Camera='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Battery")||Stemmed.contains("battery"))
	           {
	        	    UpdateQuery="update reviewdetails set Battery='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Ram")||Stemmed.contains("ram"))
	           {
	        	    UpdateQuery="update reviewdetails set Ram='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Processor")||Stemmed.contains("processor"))
	           {
	        	    UpdateQuery="update reviewdetails set Processor='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Speed")||Stemmed.contains("speed"))
	           {
	        	    UpdateQuery="update reviewdetails set Speed='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Memory")||Stemmed.contains("memory"))
	           {
	        	    UpdateQuery="update reviewdetails set Memory='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Sound")||Stemmed.contains("sound"))
	           {
	        	    UpdateQuery="update reviewdetails set Sound='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("Weight")||Stemmed.contains("weight"))
	           {
	        	    UpdateQuery="update reviewdetails set Weight='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           if(Stemmed.contains("OS")||Stemmed.contains("os"))
	           {
	        	    UpdateQuery="update reviewdetails set OS='"+Stemmed+"' where UserCommented='"+name+"'";
	           }
	           
	          System.out.println(" Query for update is "+UpdateQuery); 
	           Statement stSelectUpdate=con.createStatement();
	   		Boolean ResultUpdate=false;
	   		ResultSet rsSelectUpdate;
	   		rsSelectUpdate=stSelectUpdate.executeQuery("select * from reviewdetails where UserCommented='" +name+ "'");
	   		if(rsSelectUpdate.next())
	   		{
	   			ResultUpdate=true;
	   			Statement st1Update=con.createStatement();
	   			st1Update.executeUpdate(UpdateQuery);
	   		}
	          if(!ResultUpdate)
	          {
	        	  Statement st1=con.createStatement();
	      		
	      		st1.executeUpdate("insert into reviewdetails(UserCommented) values('" + name	+ "'  )");
	      		Statement st1Update=con.createStatement();
	   			st1Update.executeUpdate(UpdateQuery);
	      		
	          } */   
			} 	
		}
		
		/*String query="select  SUM(pos),SUM(neg) from stemmeddata ";

		PreparedStatement st = con.prepareStatement(query);
		   ResultSet rs1 =st.executeQuery();
		   
		   if(rs1.next()){
				
				pos = rs1.getInt(1);
				neg = rs1.getInt(2);
				System.out.println(" ----- pos --- "+pos+" ---- neg --- "+neg);
				session.setAttribute("pos", pos);
		           session.setAttribute("neg", neg);
				
			}else{
				
				
				pos = 0;
				neg=0;
				
				
				
			}
*/
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/DisplayStemmedData.jsp");
		rd.include(request, response); 
		
	}  catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
	}
	
	
	
}
}
