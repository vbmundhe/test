package com.java.login;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.Statement;

public class checking {

	public static void main(String[] args) {
		checking checking=new checking();
		checking.insertdata();
	}
	
	
	public void insertdata()
	{
		
		// TODO Auto-generated method stub
				BufferedReader br = null;

				try {
					int i=0;
					File directory = new File("E:\\Review");
	                File[] myarr;
	                myarr = new File[1000];
	                myarr = directory.listFiles();
	                for(int j =0;j<myarr.length;j++){
	                System.out.println("-----------"+myarr[j]); 
	                
					
					String sCurrentLine;

					br = new BufferedReader(new FileReader(myarr[j]));
					String Author=null; 
					String Content=null; 
					String Date=null; 
					String NoReader=null; 
					String NoHelpful=null; 
					String Overall=null; 
					String Value=null; 
					String Rooms=null; 
					String Location=null; 
					String Cleanliness=null; 
					String Checkin=null; 
					String Service=null; 
					String Businessservice=null; 
					Connection conn=Dbconn.conn();
					Statement st=conn.createStatement();
					
					while ((sCurrentLine = br.readLine()) != null) {
						//System.out.println(sCurrentLine);
						
						if(sCurrentLine.contains("URL"))
						{
							
							i++;
							System.out.println(" --------- URL ------------ "+sCurrentLine);
							
							String arr[]=sCurrentLine.split("-");
							System.out.println(" --------- URL ------------ "+arr[0]);
							System.out.println(" --------- URL ------------ "+arr[1]);
							System.out.println(" --------- URL ------------ "+arr[2]);
							System.out.println(" --------- URL ------------ "+arr[3]);
							System.out.println(" --------- URL ------------ "+arr[4]);
							System.out.println(" --------- URL ------------ "+arr[5]);
							
							String arr1[]=arr[5].split("\\.");
							System.out.println(" --------- Hotel Name ------------ "+arr1[0]);
							st.executeUpdate("insert into hotelinfo values('" +i 	+ "','" +arr[4] 	+ "','" +arr1[0] 	+ "'  )");
							System.out.println("Register Sucessfully");
							//Author=sCurrentLine.replace("<Author>", "");
						}
						
						if(sCurrentLine.contains("Author"))
						{
							Author=sCurrentLine.replace("<Author>", "");
							Author=Author.replace("'", "");
						}
						if(sCurrentLine.contains("Content"))
						{
							Content=sCurrentLine.replace("<Content>", "");
							Content=Content.replace("'", "");
						}
						if(sCurrentLine.contains("Date"))
						{
							Date=sCurrentLine.replace("<Date>", "");
						}
						if(sCurrentLine.contains("No. Reader"))
						{
							NoReader=sCurrentLine.replace("<No. Reader>", "");
						}
						if(sCurrentLine.contains("No. Helpful"))
						{
							NoHelpful=sCurrentLine.replace("<No. Helpful>", "");
						}
						if(sCurrentLine.contains("Overall"))
						{
							Overall=sCurrentLine.replace("<Overall>", "");
						}
						if(sCurrentLine.contains("Value"))
						{
							Value=sCurrentLine.replace("<Value>", "");
						}
						if(sCurrentLine.contains("Rooms"))
						{
							Rooms=sCurrentLine.replace("<Rooms>", "");
						}
						if(sCurrentLine.contains("Location"))
						{
							Location=sCurrentLine.replace("<Location>", "");
						}
						if(sCurrentLine.contains("Cleanliness"))
						{
							Cleanliness=sCurrentLine.replace("<Cleanliness>", "");
						}
						if(sCurrentLine.contains("Check in / front desk"))
						{
							Checkin=sCurrentLine.replace("<Check in / front desk>", "");
						}
						if(sCurrentLine.contains("Service"))
						{
							Service=sCurrentLine.replace("<Service>", "");
						}
						if(sCurrentLine.contains("Business service"))
						{
							Businessservice=sCurrentLine.replace("<Business service>", "");
						}
						
						 
						
						if(Author!=null && Content!=null&&  Date!=null&&NoReader!=null&& NoHelpful!=null&& Overall!=null&&Value!=null&& 
						 Rooms!=null&& Location!=null&& Cleanliness!=null&& Checkin!=null&& Service!=null&& Businessservice!=null )
						{
							System.out.println("----------- "+Author);
							System.out.println("----------- "+Content);
							System.out.println("----------- "+Date);
							System.out.println("----------- "+NoReader);
							System.out.println("----------- "+NoHelpful);
							System.out.println("----------- "+Overall);
							System.out.println("----------- "+Value);
							System.out.println("----------- "+Rooms);
							System.out.println("----------- "+Location);
							System.out.println("----------- "+Cleanliness);
							System.out.println("----------- "+Checkin);
							System.out.println("----------- "+Service);
							System.out.println("----------- "+Businessservice);
							
							st.executeUpdate("insert into productdescription values('" +i 	+ "','" +Author 	+ "' , '" + Content + "'  , '" + Date + "' , '" + 	NoReader+ "' ,'" + NoHelpful + "','" + Overall + "','" + Value + "', '" + Rooms + "'  , '" + Location + "' , '" + Cleanliness	+ "' ,'" + Checkin + "','" + Service + "','" + Businessservice + "' )");
							System.out.println("Register Sucessfully");
							
							 Author=null; 
							 Content=null; 
							 Date=null; 
							 NoReader=null; 
							 NoHelpful=null; 
							 Overall=null; 
							 Value=null; 
							 Rooms=null; 
							 Location=null; 
							 Cleanliness=null; 
							 Checkin=null; 
							 Service=null; 
							 Businessservice=null; 
							
						}
					}
	                }

				} catch (Exception e) {
					e.printStackTrace();
				} 
	}
	

}
