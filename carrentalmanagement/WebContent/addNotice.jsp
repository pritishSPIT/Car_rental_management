<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*, com.hit.utility.DBUtil, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <link rel="shortcut icon" type="image/png" href="images/Banner_Hit.png">
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental Application</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/annimate.css">
    <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link href="css/SpryTabbedPanels.css" type="text/css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Ops+One" rel="stylesheet">
    <link href="css/bootstrap-dropdownhover.min.css">
    <link rel="stylesheet" href="css/style2.css">
    
  </head>
<body>


	<%
		String user = (String)session.getAttribute("user");
		String uname = (String)session.getAttribute("username");
		String pword = (String)session.getAttribute("password");
		
		if(!user.equalsIgnoreCase("admin") || uname.equals("") || pword.equals("")){
			
			response.sendRedirect("loginFailed.jsp");
			
		}
	
	%>


	
	<jsp:include page="header.jsp"></jsp:include>
	
	<jsp:include page="adminMenu.jsp"></jsp:include>
	
	<div class="clearfix hidden-sm hidden-xs" style="color:white;background-color: green; margin-top:-15px; margin-bottom: 12px"><marquee>Welcome to Tender Management Site</marquee>
 </div>
 
     <div class="container-fluid">
     
     	<div class="notice">
        <div class="col-md-3"style="margin-left:2%">
     		<% Connection con = DBUtil.provideConnection(); %>
     		
     		<jsp:include page="notice.jsp"></jsp:include><br>
     		
          <jsp:include page="approved.jsp"></jsp:include><br>
          
        </div>
      </div>
      
   <div class="col-md-8">

     	<table style="border-radius:10px" >
			<tr >
				<td id="show" style="min-width:632px;min-height:0px;color:blue">Enter Notice Details Below</td>
			</tr>
		</table>
            


	<form action="AddNoticeSrv" method="post">
		<table style="background-color:white">
			<th colspan="2">Add Notice</th>
			<tr><td style="color:red"> Notice Title  : </td><td><input type="text" name="title" required="required"></td></tr>
		   <tr><td style="color:red">	Descripton   : </td><td> <textarea rows="4" cols="40" style="font-size:15px" name="info" required="required"></textarea></td></tr>
					
			<tr><td colspan="2" align="center" value="Launch"><input type="submit" style="background-color:#660033;color:white;" value="Add Notice to Notice Board" name="user"></td></tr>
			
		</table>
	</form>

     </div>
      
      
    </div>
    
<jsp:include page="footer.jsp"></jsp:include>

</body>
<style>
    input,textarea,select{
    	min-width:450px;
    	font-size:16px;
    	background-color:#f8f8f8;
    }
    input:hover,textarea:hover,select:hover{
    	min-width:450px;
    	background-color:white;
    }
	table, th, td { 
				margin-bottom:10px;
				margin-left:20%;
				font-size:20px;
                border: 2px solid green; 
                text-align:center; 
                background-color:white;
                color:#003399;
            } 
             td { 
                padding: 20px; 
                background-color:none; 
            } 
            th{
            	padding:20px;
            	background-color:#660033;
            	color:white;
            	font-weight:bold;
            }

</style>
</html>
