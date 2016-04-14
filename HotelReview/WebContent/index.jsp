<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>A Novel approach for sentiment bsed customer reviews</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>


  <script>
   
       function trim(s) 
       {
           return s.replace( /^s*/, "" ).replace( /s*$/, "" );
       }
    function validate()
    {
        if(trim(document.frmLogin.usrname.value)=="")
        {
          alert("Please Enter Username.....");
          document.frmLogin.usrname.focus();
          document.frmLogin.usrname.value=="";
          return false;
        }
        else if(trim(document.frmLogin.passwd.value)=="")
        {
          alert("Please Enter Password.......");
          document.frmLogin.passwd.focus();
          document.frmLogin.passwd.value=="";
          return false;
        }
       
    }
</script>

</head>
<body id="page1" onload="new ElementMaxHeight();">
<div id="main">
  <!-- header -->
  <div id="header">
    <div class="row-1">
      <div class="wrapper">
        <div class="logo">
          <h2><a href="#">A Novel approach for sentiment bsed customer reviews</a></h2>
          </div>
        
      </div>
    </div>
    <div class="row-2">
      <div class="indent">
        <!-- header-box begin -->
        <div class="header-box">
          <div class="inner">
            <ul class="nav">
              <li><a href="#" class="current">Home page</a></li>
              <li><a href="Registration.jsp">Register</a></li>
              <li><a href="AboutUs.jsp">About US</a></li>
             
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
       <div class="box maxheight">
        <img class="img-indent png" alt="" src="images/1page-img1.jpg" />
       </div>
        <!-- box end -->
      </div>
      <div class="content">
        <div class="indent">
              

     <%
     String wrong=(String)session.getAttribute("wrong");
        		 System.out.println(" wrong is "+wrong);
     %>
      
       <form name="frmLogin" onSubmit="return validate();" action="logincheck" method="post" >
     
    
   <br /><br/><center><big>Username:</big>
    <input type="text" name="usrname" id="p" /></center>
  
  

    <br><br><center><big>Password:</big> 
   <input type="password" name="passwd"  />
   
   
   
    <br><br><center><input type="submit" value="Sign-in"  style="height:25px; width:70px;" id="Sub"/></center>
   
   
   
     
   
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
