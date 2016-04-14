<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Hotel Review</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>


 
<script>
   
       function trim(s) 
       {
           return s.replace( /^s*/, "" ).replace( /s*$/, "" );
       }
    function validate11()
    {
    	var letters = /^[a-zA-Z]+$/; 
    	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
    	var phoneno = /^\d{10}$/;
        var pincode = /^\d{6}$/;
       
       

       
    	if(!document.frmReg.txtName.value.match(letters)){
    		
    		alert("Please Enter Name.....");
            document.frmReg.txtName.focus();
            document.frmReg.txtName.value=="";
            return false;
    	}
    	 else if(!document.frmReg.txtAddress.value.match(letters))
         {
           alert("Please Enter Address.......");
           document.frmReg.txtAddress.focus();
           document.frmReg.txtAddress.value=="";
           return false;
         }
    	
    	 {
    	 var elem=document.frmReg.elements['rdoGender'];
    	 len=elem.length-1;
    	 chkvalue='';
    	 for(i=0; i<=len; i++)
    	 {
    	 if(elem[i].checked)chkvalue=elem[i].value; 
    	 }
    	 if(chkvalue=='')
    	 {
    	 alert('Please Select Gender');
    	 return false;
    	
    	 }
    	 else if(!document.frmReg.txtEmail.value.match(mailformat))
         {
           alert("Please Enter Email.......");
           document.frmReg.txtEmail.focus();
           document.frmReg.txtEmail.value=="";
           return false;
         }
    	 else if(!document.frmReg.txtContact.value.match(phoneno))
         {
           alert("Please Enter Contact Number.......");
           document.frmReg.txtContact.focus();
           document.frmReg.txtContact.value=="";
           return false;
         }
    	

    	 else if(!document.frmReg.txtUsername.value.match(letters))
         {
           alert("Please Enter Username.......");
           document.frmReg.txtUsername.focus();
           document.frmReg.txtUsername.value=="";
           return false;
         }
    	 else if(!document.frmReg.passPassword.value.match(letters))
         {
           alert("Please Enter Password.......");
           document.frmReg.passPassword.focus();
           document.frmReg.passPassword.value=="";
           return false;
         }
    }
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
              <li><a href="index.jsp" >Home page</a></li>
              <li><a href="#" class="current">Register</a></li>
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
      
        <!-- box end -->
      </div>
      <div class="content">
        <div class="indent">
              

     
      
     
		<form name="frmReg" onSubmit="return validate11();"
			action="Registration" method="post">

			<table style="padding-top: 50px;">
				<tr>
					<td class="lable" style="padding-top: 50px;">Name:</td>
					<td style="padding-top: 50px;"><input type="text"
						name="txtName" style="height: 25px;" /></td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Address:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtAddress" style="height: 70px; width: 150px;" /></td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Gender:</td>

					<td align=left style="padding-top: 20px;"><input type="radio"
						name="rdoGender" value="Male" id="male" />Male <input
						type="radio" name="rdoGender" value="FeMale" id="female" />Female</td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Email:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtEmail" style="height: 25px;" /></td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Contact No:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtContact" style="height: 25px;" /></td>
				</tr>

				<tr>
					<td class="lable" style="padding-top: 20px;">Username:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtUsername" style="height: 25px;" /></td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Password:</td>
					<td style="padding-top: 20px;"><input type="password"
						name="passPassword" style="width: 150px; height: 25px;" /></td>
				</tr>
				<tr>

					<td colspan="2" style="padding-top: 20px;"><input
						type="submit" value="Register" style="height: 30px;" onclick="alert('Register Sucessfully')" /></td>
				</tr>

			</table>

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
