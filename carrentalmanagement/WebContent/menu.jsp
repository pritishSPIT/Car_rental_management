<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Rental Application</title>
    <!-- Add your CSS files or styles here -->
</head>
<body>
    <div class="menubar secondnav" style="background-color: white;">
        <div id="menucontent" class="container secondnav">
            <div id="collapsable-nav" class="collapse navbar-collapse hidden-lg hidden-md">
                <ul id="nav-list" class="nav navbar-nav navbar-left pull-left">
                    <li id="navHomeButton">
                        <a href="index.jsp">
                            <span class="glyphicon glyphicon-home"></span> Home</a>
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
                    <li><a href="register.jsp">Register</a></li>
                    <li>
                        <!-- Search Form -->
                        <form class="navbar-form hidden-xs" action="searchResults.jsp">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search Cars by Model, Brand, etc." required>
                            </div>
                            <button type="submit" class="btn btn-primary">Search</button>
                        </form>
                        <!-- End of Search Form -->
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
