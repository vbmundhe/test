<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.java.login.Dbconn"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Hotel Review</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>

<script type="text/javascript">
function ProcessComment(Author){
	
	window.open('ProcessServlet?u='+Author);
	
}
</script>

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
          <h2><a href="#">Sentence Compression For Product Base Hotel Review</a></h2>
          </div>
        
      </div>
    </div>
    <div class="row-2">
      <div class="indent">
        <!-- header-box begin -->
        <div class="header-box">
           <div class="inner">
            <ul class="nav">
              <li><a href="AdminHomePage.jsp" >Home page</a></li>cccc
              <li><a href="#" class="current">Check Comment </a></li>
              <li><a href="Logout.jsp" >Log out </a></li>
            
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
     
      <div class="content">
        <div class="indent">
       <%--  <table border="2px;" cellspacing="10px;">
        <tr>
        <td>Commented User</td>
        <td>Comment</td>
        <td>Show & Process</td>
        </tr>
              
<%
try {
	Connection con = Dbconn.conn();
	
	Statement stRegister=con.createStatement();
	ResultSet rsResult;
	rsResult=stRegister.executeQuery("select * from productdescription");
	while(rsResult.next())
	{
		
			%>
			<tr onclick="ProcessComment('<%=rsResult.getString("Author")%>');">
			<td>
			<%=rsResult.getString("Author") %>
			</td>
			<td>
			<%=rsResult.getString("Content") %>
			</td>
			<td>
			<input type="submit" value="Process"  />
			</td>
			</tr>
			<%
	}
	
	
}  catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	
}

%>
  </table>  --%>  
  
  <form name="frmLogin" onSubmit="return validate();" action="ProcessServlet" method="get" >
     
    
  
   
   
    <br><br><center><input type="submit" value="Process"  style="height:25px; width:70px;" id="Sub"/></center>
   
   
   
     
   
   </form>  
        </div>
      </div>
    </div>
  </div>
  <!-- footer -->
  <div id="footer">
    
    <div class="wrapper">
      <div class="fleft">Copyright &copy; 2016 <a href="#">Hotel Review</a>. All Rights Reserved</div>
      <div class="fright">  </div>
    </div>
  </div>
</div>
</body>
</html>
