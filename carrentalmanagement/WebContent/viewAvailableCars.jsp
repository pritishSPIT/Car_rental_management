<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.hit.dao.CarDao"%>
<%@ page import="com.hit.dao.Car"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Cars</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style2.css">
    <style>
        .car-image {
            max-width: 100px;
            max-height: 100px;
        }
        .bg-primary-custom {
            background-color: #007bff !important; /* Bootstrap primary color */
            color: #fff; /* Text color for contrast */
        }
        .bg-success-custom {
            background-color: #28a745 !important; /* Bootstrap success color */
            color: #fff; /* Text color for contrast */
        }
        .bg-danger-custom {
            background-color: #dc3545 !important; /* Bootstrap danger color */
            color: #fff; /* Text color for contrast */
        }
        .bg-warning-custom {
            background-color: #ffc107 !important; /* Bootstrap warning color */
            color: #212529; /* Text color for contrast */
        }
        /* Center the button */
        .center-btn {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
<%-- 	<jsp:include page="loginHeader.jsp"></jsp:include> --%>
<%-- 	<jsp:include page="menu.jsp"></jsp:include> --%>
    <div class="clearfix hidden-sm hidden-xs" style="color:white;background-color: green; margin-top:-15px; margin-bottom: 12px"><marquee>Welcome to ACME Car Rental Site</marquee>
 </div> 
    <div class="container mt-4">
        <!-- Back Button (centered) -->
        <div class="center-btn mb-4">
            <a href="index.jsp" class="btn btn-primary">Back</a>
        </div>
        
        <h1 class="mb-4">List of Cars</h1>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead class="bg-primary-custom">
                    <tr>
                        <th>Car Image</th>
                        <th>Car ID</th>
                        <th>Make</th>
                        <th>Model</th>
                        <th>Year</th>
                        <th>Color</th>
                        <th>Price per Day</th>
                        <th>Available</th>
                    </tr>
                </thead>
                <tbody>
                    <% CarDao carDao = new CarDao();
                    List<Car> cars = carDao.getAllCars();
                    for (Car car : cars) { %>
                    <tr class="<%= car.isCarAvailable() ? "bg-success-custom" : "bg-danger-custom" %>">
                        <td><img src="https://images.unsplash.com/photo-1502877338535-766e1452684a?q=80&w=1772&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Car Image" class="car-image"></td>
                        <td><%= car.getCarId() %></td>
                        <td><%= car.getCarMake() %></td>
                        <td><%= car.getCarModel() %></td>
                        <td><%= car.getCarYear() %></td>
                        <td><%= car.getCarColor() %></td>
                        <td><%= car.getCarPricePerDay() %></td>
                        <td><%= car.isCarAvailable() ? "Yes" : "No" %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>
    
    <!-- Bootstrap JS (optional if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
