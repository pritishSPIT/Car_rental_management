<%@ page import="com.hit.dao.CarDao" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.hit.dao.Car" %>
<%@ page contentType="text/plain; charset=UTF-8" %>
<%
    // Retrieve the car ID from the request parameters
    String carId = request.getParameter("carId");

    // Fetch the car price from the database using CarDao or any appropriate method
    CarDao carDao = new CarDao();
    double carPricePerDay = carDao.getCarPrice(carId);

    // Return the car price as the response
    response.getWriter().write(Double.toString(carPricePerDay));
%>
