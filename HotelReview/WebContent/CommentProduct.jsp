<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.java.login.Dbconn"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Hotel Review</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>




<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page1" onload="new ElementMaxHeight();">
	<div id="main">
		<!-- header -->
		<div id="header">
			<div class="row-1">
				<div class="wrapper">
					<div class="logo">
						<h2>
							<a href="#">Sentence Compression For Product Base Sentiment
								Analysis</a>
						</h2>
					</div>

				</div>
			</div>
			<div class="row-2">
				<div class="indent">
					<!-- header-box begin -->
					<div class="header-box">
						<div class="inner">
							<ul class="nav">

								<li><a href="Homepage.jsp">Home page</a></li>
								<li><a href="#" class="current">Search</a></li>
								<li><a href="Logout.jsp">Log out </a></li>

							</ul>
						</div>
					</div>
					<!-- header-box end -->
				</div>
			</div>
		</div>
		<!-- content -->
		<div id="content">
			<div class="wrapper">
				<div class="aside maxheight">
					<!-- box begin -->

					<!-- box end -->
				</div>
				<div class="content">
					<div class="indent">

						<%
							int maxNoInt = 0;
						System.out.println(""+request.getParameter("selectionHotel"));
						System.out.println(""+request.getParameter("selectionStaff"));
						System.out.println(""+request.getParameter("selectionFood"));
						System.out.println(""+request.getParameter("selectionParking"));
						System.out.println(""+request.getParameter("selectionRoom"));
						System.out.println(""+request.getParameter("selectionService"));
						System.out.println(""+request.getParameter("selectionSpecial"));
						
						String selectionHotel=request.getParameter("selectionHotel");
						String selectionStaff=request.getParameter("selectionStaff");
						String selectionFood=request.getParameter("selectionFood");
						String selectionParking=request.getParameter("selectionParking");
						String selectionRoom=request.getParameter("selectionRoom");
						String selectionService=request.getParameter("selectionService");
						String selectionSpecial=request.getParameter("selectionSpecial");
						
						Connection conn=Dbconn.conn();
						//Statement st=conn.createStatement();
						String Hotelcount="";
						String hotelsum="";
						String Staffcount="";
						String Staffsum="";
						String Foodcount="";
						String Foodsum="";
						
						String Parkingcount="";
						String Parkingsum="";
						String Roomcount="";
						String Roomsum="";
						String Servicecount="";
						String Servicesum="";
						String Specialcount="";
						String Specialsum="";
						float Hotelcount1=0;
						float hotelsum1=0;
						float Staffcount1=0;
						float Staffsum1=0;
						float Foodcount1=0;
						float Foodsum1=0;
						
						float Parkingcount1=0;
						float Parkingsum1=0;
						float Roomcount1=0;
						float Roomsum1=0;
						float Servicecount1=0;
						float Servicesum1=0;
						float Specialcount1=0;
						float Specialsum1=0;
						
						float arr[][]=new float[18][3];
						
						Statement st = conn.createStatement();
						Statement st2 = conn.createStatement();
						Statement st3 = conn.createStatement();
						ResultSet rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8,rs9,rs10,rs11,rs12;
						out.println("<html><body>");
						out.println("<CENTER><br><table cellspacing='5' cellpadding='5' border='1' >");
						out.println("<tr>");
						out.println("<td><b>File Name</b></td>");
						out.println("</tr>");
						for(int i=1;i<=18;i++)
						{
							 Hotelcount="select  count(*) from stemmeddata where Aspect='Hotel' and id='"+i+"'";
							 hotelsum="select  SUM(pos) from stemmeddata where Aspect='Hotel' and id='"+i+"'";
							 Staffcount="select  count(*) from stemmeddata where Aspect='Staff' and id='"+i+"'";
							 Staffsum="select  SUM(pos) from stemmeddata where Aspect='Staff' and id='"+i+"'";
							 Foodcount="select  count(*) from stemmeddata where Aspect='Food' and id='"+i+"'";
							 Foodsum="select  SUM(pos) from stemmeddata where Aspect='Food' and id='"+i+"'";
							 
							 Parkingcount="select  count(*) from stemmeddata where Aspect='Parking' and id='"+i+"'";
							 Parkingsum="select  SUM(pos) from stemmeddata where Aspect='Parking' and id='"+i+"'";
							 Roomcount="select  count(*) from stemmeddata where Aspect='Room' and id='"+i+"'";
							 Roomsum="select  SUM(pos) from stemmeddata where Aspect='Room' and id='"+i+"'";
							 Servicecount="select  count(*) from stemmeddata where Aspect='Service' and id='"+i+"'";
							 Servicesum="select  SUM(pos) from stemmeddata where Aspect='Service' and id='"+i+"'";
							 Specialcount="select  count(*) from stemmeddata where Aspect='Special' and id='"+i+"'";
							 Specialsum="select  SUM(pos) from stemmeddata where Aspect='Special' and id='"+i+"'";
							 
							 rs1 =st.executeQuery(Hotelcount);
							   
							   if(rs1.next()){
								   Hotelcount1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Hotelcount1);
								}
							   rs1 =st.executeQuery(hotelsum);
							 //  int pos=0;
							   if(rs1.next()){
								   hotelsum1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+hotelsum1);
								}
							   rs1 =st.executeQuery(Staffcount);
							 //  int pos=0;
							   if(rs1.next()){
								   Staffcount1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Staffcount1);
								}
							   rs1 =st.executeQuery(Staffsum);
							//   int pos=0;
							   if(rs1.next()){
								   Staffsum1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Staffsum1);
								}
							   rs1 =st.executeQuery(Foodcount);
							 //  int pos=0;
							   if(rs1.next()){
								   Foodcount1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Foodcount1);
								}
							   rs1 =st.executeQuery(Foodsum);
							//   int pos=0;
							   if(rs1.next()){
								   Foodsum1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Foodsum1);
								}
							   
							   
							   
 							rs1 =st.executeQuery(Parkingcount);
							   
							   if(rs1.next()){
								   Parkingcount1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Parkingcount1);
								}
							   rs1 =st.executeQuery(Parkingsum);
							 //  int pos=0;
							   if(rs1.next()){
								   Parkingsum1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Parkingsum1);
								}
							   rs1 =st.executeQuery(Roomcount);
							 //  int pos=0;
							   if(rs1.next()){
								   Roomcount1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Roomcount1);
								}
							   rs1 =st.executeQuery(Roomsum);
							//   int pos=0;
							   if(rs1.next()){
								   Roomsum1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Roomsum1);
								}
							   rs1 =st.executeQuery(Servicecount);
							 //  int pos=0;
							   if(rs1.next()){
								   Servicecount1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Servicecount1);
								}
							   rs1 =st.executeQuery(Servicesum);
							//   int pos=0;
							   if(rs1.next()){
								   Servicesum1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Servicesum1);
								}
							   rs1 =st.executeQuery(Specialcount);
							   
							   if(rs1.next()){
								   Specialcount1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Specialcount1);
								}
							   rs1 =st.executeQuery(Specialsum);
							//   int pos=0;
							   if(rs1.next()){
								   Specialsum1 = rs1.getInt(1);
									System.out.println(" ----- pos --- "+Specialsum1);
								}
							   
							   
							   
							   float resultHotel=0,resultStaff=0,resultFood=0,resultParking=0,resultRoom=0,resultService=0,resultSpecial=0;
							   if(hotelsum1!=0)
							   {
								   
								   System.out.println(" ----- pos --- "+Hotelcount1+" ----- pos --- "+hotelsum1);
								   System.out.println("---java---"+(double)Hotelcount1/(double)hotelsum1);
							    resultHotel=(Hotelcount1/hotelsum1);
							    arr[i-1][0]=resultHotel;
							    System.out.println(" ----- resultHotel --- "+resultHotel);
							   }
							   else
							   {
								   arr[i-1][0]=resultHotel;
							   }
							   if(Staffsum1!=0)
							   {
								   
								 resultStaff=(Staffcount1/Staffsum1);
								 arr[i-1][1]=resultStaff;
								 System.out.println(" ----- resultStaff --- "+resultStaff);
							   } else
							   {
								   arr[i-1][1]=Staffsum1;
							   }
							   if(Foodsum1!=0)
							   {
								   System.out.println(" ----- pos --- "+Foodcount1+" ----- pos --- "+Foodsum1);
								 resultFood=(Foodcount1/Foodsum1);
								 arr[i-1][2]=resultFood;
								 System.out.println(" ----- resultFood --- "+resultFood);
							   } else
							   {
								   arr[i-1][2]=Foodsum1;
							   }
							   
							   
							   
							   if(Parkingsum1!=0)
							   {
								   
								   System.out.println(" ----- pos --- "+Parkingcount1+" ----- pos --- "+Parkingsum1);
								   System.out.println("---java---"+(double)Parkingcount1/(double)Parkingsum1);
							    resultParking=(Parkingcount1/Parkingsum1);
							    arr[i-1][0]=resultParking;
							    System.out.println(" ----- resultHotel --- "+resultParking);
							   }
							   else
							   {
								   arr[i-1][0]=resultParking;
							   }
							   if(Roomsum1!=0)
							   {
								   
								 resultRoom=(Roomcount1/Roomsum1);
								 arr[i-1][1]=resultRoom;
								 System.out.println(" ----- resultStaff --- "+resultRoom);
							   } else
							   {
								   arr[i-1][1]=Roomsum1;
							   }
							   if(Servicesum1!=0)
							   {
								   System.out.println(" ----- pos --- "+Servicecount1+" ----- pos --- "+Servicesum1);
								 resultService=(Servicecount1/Servicesum1);
								 arr[i-1][2]=resultService;
								 System.out.println(" ----- resultFood --- "+resultService);
							   } else
							   {
								   arr[i-1][2]=Servicesum1;
							   }
							   if(Specialsum1!=0)
							   {
								   System.out.println(" ----- pos --- "+Specialcount1+" ----- pos --- "+Specialsum1);
								 resultSpecial=(Specialcount1/Specialsum1);
								 arr[i-1][2]=resultSpecial;
								 System.out.println(" ----- resultFood --- "+resultSpecial);
							   } else
							   {
								   arr[i-1][2]=Specialsum1;
							   }
							   
							   
							   if(Integer.parseInt(selectionHotel)>(double)resultHotel&&Integer.parseInt(selectionStaff)>(double)resultStaff&&Integer.parseInt(selectionFood)>(double)resultFood     && Integer.parseInt(selectionParking)>(double)resultParking&&Integer.parseInt(selectionRoom)>(double)resultRoom&&Integer.parseInt(selectionService)>(double)resultService &&Integer.parseInt(selectionSpecial)>(double)resultSpecial)
							   {
								   ResultSet rr=st3.executeQuery("select hotelname,id from hotelinfo where id='"+i+"'");
								   if(rr.next())
								   {
									  
											out.println("<tr onclick=document.location.href='hotelinfo.jsp?u="
													+ rr.getString(2) + "'>");
											/* System.out
													.println("<tr onclick=document.location.href='DBFileDownloadServlet?u="
															+ rs.getString(1) + "'>"); */
											out.println("<td style='cursor:hand' style='font-weight:bold'><u>"
													+ rr.getString(1) + "</u></td>");

											out.println("</tr>");
 						   
								   }
								   
								  
							   }
								
								
								
							  							   
						}
						  
						   
						
						
						
						
						%>



						

					</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		
	</div>
</body>
</html>
