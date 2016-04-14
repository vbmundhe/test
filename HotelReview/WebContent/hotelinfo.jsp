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
							String strFileId = request.getParameter("u");
							System.out.print("-----strfilename ----- " + strFileId);

							Connection conn = Dbconn.conn();
							Statement st1 = conn.createStatement();

							ResultSet rs = st1
									.executeQuery("select * from hotelinfo where id='"
											+ strFileId + "'");
							if (rs.next()) {
						%>
						<h3><%=rs.getString(2)%></h3>
						<br />
						<%
							}

							String Hotelcount = "";
							String hotelsum = "";
							String Staffcount = "";
							String Staffsum = "";
							String Foodcount = "";
							String Foodsum = "";
							
							String Parkingcount="";
							String Parkingsum="";
							String Roomcount="";
							String Roomsum="";
							String Servicecount="";
							String Servicesum="";
							String Specialcount="";
							String Specialsum="";
							float Hotelcount1 = 0;
							float hotelsum1 = 0;
							float Staffcount1 = 0;
							float Staffsum1 = 0;
							float Foodcount1 = 0;
							float Foodsum1 = 0;
							
							float Parkingcount1=0;
							float Parkingsum1=0;
							float Roomcount1=0;
							float Roomsum1=0;
							float Servicecount1=0;
							float Servicesum1=0;
							float Specialcount1=0;
							float Specialsum1=0;
							Hotelcount = "select  count(*) from stemmeddata where Aspect='Hotel' and id='"
									+ strFileId + "'";
							hotelsum = "select  SUM(pos) from stemmeddata where Aspect='Hotel' and id='"
									+ strFileId + "'";
							Staffcount = "select  count(*) from stemmeddata where Aspect='Staff' and id='"
									+ strFileId + "'";
							Staffsum = "select  SUM(pos) from stemmeddata where Aspect='Staff' and id='"
									+ strFileId + "'";
							Foodcount = "select  count(*) from stemmeddata where Aspect='Food' and id='"
									+ strFileId + "'";
							Foodsum = "select  SUM(pos) from stemmeddata where Aspect='Food' and id='"
									+ strFileId + "'";
							
							 Parkingcount="select  count(*) from stemmeddata where Aspect='Parking' and id='"+strFileId+"'";
							 Parkingsum="select  SUM(pos) from stemmeddata where Aspect='Parking' and id='"+strFileId+"'";
							 Roomcount="select  count(*) from stemmeddata where Aspect='Room' and id='"+strFileId+"'";
							 Roomsum="select  SUM(pos) from stemmeddata where Aspect='Room' and id='"+strFileId+"'";
							 Servicecount="select  count(*) from stemmeddata where Aspect='Service' and id='"+strFileId+"'";
							 Servicesum="select  SUM(pos) from stemmeddata where Aspect='Service' and id='"+strFileId+"'";
							 Specialcount="select  count(*) from stemmeddata where Aspect='Special' and id='"+strFileId+"'";
							 Specialsum="select  SUM(pos) from stemmeddata where Aspect='Special' and id='"+strFileId+"'";

							Statement st = conn.createStatement();
							Statement st2 = conn.createStatement();
							Statement st3 = conn.createStatement();
							ResultSet rs1, rs2, rs3, rs4, rs5, rs6, rs7, rs8, rs9, rs10, rs11, rs12;

							rs1 = st.executeQuery(Hotelcount);

							if (rs1.next()) {
								Hotelcount1 = rs1.getInt(1);
								System.out.println(" ----- pos --- " + Hotelcount1);
							}
							rs1 = st.executeQuery(hotelsum);
							//  int pos=0;
							if (rs1.next()) {
								hotelsum1 = rs1.getInt(1);
								System.out.println(" ----- pos --- " + hotelsum1);
							}
							rs1 = st.executeQuery(Staffcount);
							//  int pos=0;
							if (rs1.next()) {
								Staffcount1 = rs1.getInt(1);
								System.out.println(" ----- pos --- " + Staffcount1);
							}
							rs1 = st.executeQuery(Staffsum);
							//   int pos=0;
							if (rs1.next()) {
								Staffsum1 = rs1.getInt(1);
								System.out.println(" ----- pos --- " + Staffsum1);
							}
							rs1 = st.executeQuery(Foodcount);
							//  int pos=0;
							if (rs1.next()) {
								Foodcount1 = rs1.getInt(1);
								System.out.println(" ----- pos --- " + Foodcount1);
							}
							rs1 = st.executeQuery(Foodsum);
							//   int pos=0;
							if (rs1.next()) {
								Foodsum1 = rs1.getInt(1);
								System.out.println(" ----- pos --- " + Foodsum1);
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
							if (hotelsum1 != 0) {

								System.out.println(" ----- pos --- " + Hotelcount1
										+ " ----- pos --- " + hotelsum1);
								System.out.println("---java---" + (double) Hotelcount1
										/ (double) hotelsum1);
								resultHotel = (Hotelcount1 / hotelsum1) * 50;

								System.out.println(" ----- resultHotel --- " + resultHotel);
							}

							if (Staffsum1 != 0) {

								resultStaff = (Staffcount1 / Staffsum1) * 50;

								System.out.println(" ----- resultStaff --- " + resultStaff);
							}
							if (Foodsum1 != 0) {
								System.out.println(" ----- pos --- " + Foodcount1
										+ " ----- pos --- " + Foodsum1);
								resultFood = (Foodcount1 / Foodsum1) * 50;

								System.out.println(" ----- resultFood --- " + resultFood);
							}
							
							
							 if(Parkingsum1!=0)
							   {
								   
								   System.out.println(" ----- pos --- "+Parkingcount1+" ----- pos --- "+Parkingsum1);
								   System.out.println("---java---"+(double)Parkingcount1/(double)Parkingsum1);
							    resultParking=(Parkingcount1/Parkingsum1)*50;
							  //  arr[i-1][0]=resultParking;
							    System.out.println(" ----- resultHotel --- "+resultParking);
							   }
							   
							   if(Roomsum1!=0)
							   {
								   
								 resultRoom=(Roomcount1/Roomsum1)*50;
								
								 System.out.println(" ----- resultStaff --- "+resultRoom);
							   }
							   if(Servicesum1!=0)
							   {
								   System.out.println(" ----- pos --- "+Servicecount1+" ----- pos --- "+Servicesum1);
								 resultService=(Servicecount1/Servicesum1)*50;
								
								 System.out.println(" ----- resultFood --- "+resultService);
							   }
							   if(Specialsum1!=0)
							   {
								   System.out.println(" ----- pos --- "+Specialcount1+" ----- pos --- "+Specialsum1);
								 resultSpecial=(Specialcount1/Specialsum1)*50;
								
								 System.out.println(" ----- resultFood --- "+resultSpecial);
							   }
							
							
							
							
							
						%>
						<h5 style="color: white;">
							Hotel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultHotel%></h5>
						<h5 style="color: white;">
							Staff&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultStaff%></h5>
						<h5 style="color: white;">
							Food&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultFood%></h5>
							
							<h5 style="color: white;">
							Parking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultParking%></h5>
						<h5 style="color: white;">
							Room&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultRoom%></h5>
						<h5 style="color: white;">
							Service&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultService%></h5>
						<h5 style="color: white;">
							Special&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultSpecial%></h5>
							
						<%
							
						%>

					</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		<div id="footer">

			<div class="wrapper">
				<div class="fleft">
					Copyright &copy; 2016 <a href="#">Hotel Review</a>. All
					Rights Reserved
				</div>
				<div class="fright"> </div>
			</div>
		</div>
	</div>
</body>
</html>
