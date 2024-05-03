<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, com.hit.utility.DBUtil"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Rent a Car</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<%
		String user = (String)session.getAttribute("user");
		String uname = (String)session.getAttribute("username");
		String pword = (String)session.getAttribute("password");
		
		if(!user.equalsIgnoreCase("user") || uname.equals("") || pword.equals("")){
			
			response.sendRedirect("loginFailed.jsp");
			
		}
	
	%>
	
	<!-- Including the header of the page  -->
	
	<jsp:include page="header.jsp"></jsp:include>
	
<%-- 	<jsp:include page="vendorMenu.jsp"></jsp:include> --%>
	
	<div class="clearfix hidden-sm hidden-xs" style="color:white;background-color: green; margin-top:-15px; margin-bottom: 12px"><marquee>Welcome to ACME Car Rental Site</marquee>
 </div> <!--A green color line between header and body part-->
 
    <jsp:include page="bookCar.jsp"></jsp:include>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
