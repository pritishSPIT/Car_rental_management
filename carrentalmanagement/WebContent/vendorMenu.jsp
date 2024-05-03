<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Rental Application</title>
</head>
<body>
	  <div class="menubar secondnav " style="background-color:white;">
    <div id="menucontent" class="container secondnav">
      <div id="collapsable-nav" class="collapse navbar-collapse hidden-lg hidden-md">
        <ul id="nav-list" class="nav navbar-nav navbar-left pull-left">
            <li id="navHomeButton">
              <a href="vendorHome.jsp">
                <span class="glyphicon glyphicon-home"></span> Home</a> <!--Home button is here -->
            </li>
            <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-animations="fadeIn fadeInLeft fadeInUp fadeInRight">
                            Book a Car
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="viewAvailableCars.jsp">View Available Cars</a></li>
                            <li><a href="#">Rent a Car</a></li>
                            <li><a href="#">Manage Reservations</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-animations="fadeIn fadeInLeft fadeInUp fadeInRight">
                            Services
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Car Maintenance</a></li>
                            <li><a href="#">Roadside Assistance</a></li>
                            <li><a href="#">Insurance</a></li>
                        </ul>
                    </li>
              
           <li class="dropdown"> <!--Dropdown under Vendors Category -->
                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-animations="fadeIn fadeInLeft fadeInUp fadeInRight">Account
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="viewProfile.jsp">View Profile</a></li>
                  <li><a href="updateProfile.jsp">Update Profile</a></li>
                  <li><a href="updatePassword.jsp">Change Password</a></li>
                   <li><a href="LogoutSrv">Logout</a></li>
                </ul>
              </li>
              
          
            <li>
              <!-- Form for searching any tenders or items-->
              <form class="navbar-form hidden-xs" action="vendorSearchTender.jsp"  >
                <div class="form-group" >
                  <input type="text" class="form-control" placeholder="Find Tenders by Name or TenderId" style="margin-left:120px;" required>
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
              </form>
              <!--End of form section-->
            </li>
        </ul>
      </div>
    </div>
  </div>
</body>
</html>