<%@ page import="java.util.*" %>
<%@ page import="com.hit.dao.Car" %>
<%@ page import="com.hit.dao.CarDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Booking Confirmation</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    /* Custom CSS for a visually appealing booking confirmation page */
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5; /* Light gray background */
    }

    .container {
      padding: 3rem 2rem;
      border-radius: 0.5rem;
      background-color: #fff; /* White container with rounded corners */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    }

    h1 {
      color: #333; /* Darker text for heading */
      font-weight: bold;
      margin-bottom: 1.5rem;
      text-align: center;
    }

    .booking-details {
      display: flex; /* Arrange details in a row */
      flex-wrap: wrap; /* Allow wrapping if content overflows */
      margin-bottom: 1.5rem;
    }

    .booking-details p {
      margin: 0.5rem 1rem;
      color: #666; /* Lighter text for details */
    }

    .booking-details p strong {
      color: #333;
      font-weight: bold;
    }

    .total-cost {
      font-size: 1.2rem;
      color: #3c8dbc; /* Blue for total cost */
      font-weight: bold;
    }

    .btn-primary {
      background-color: #3c8dbc; /* Blue button */
      border-color: #3c8dbc;
      color: #fff; /* White text */
      margin: 1rem auto; /* Center the button horizontally */
    }

    .btn-primary:hover {
      background-color: #2969cd; /* Darker blue on hover */
    }
  </style>
</head>
<body>
  <div class="container mt-4">
    <h1>Booking Confirmation</h1>
    <%-- Retrieve data from request parameters --%>
    <%
      String selectedCarId = request.getParameter("car");
      int numberOfDays = Integer.parseInt(request.getParameter("days"));

      // Fetch car price per day based on the selected car ID
      CarDao carDao = new CarDao();
      double carPricePerDay = carDao.getCarPrice(selectedCarId);
    %>

    <div class="booking-details">
      <p><strong>Selected Car ID:</strong> <%= selectedCarId %></p>
      <p><strong>Number of Days:</strong> <%= numberOfDays %></p>
      <p><strong>Car Price Per Day:</strong> <%= carPricePerDay %></p>
      <p class="total-cost"><strong>Total Cost:</strong> <%= (carPricePerDay * numberOfDays) %></p>
    </div>

    <hr>

    <button onclick="goBack()" class="btn btn-primary">Back to Available Cars</button>

    <script>
      function goBack() {
        window.location.href = '/tendermanagement/viewAvailableCars.jsp';
      }
    </script>
  </div>
</body>
</html>
