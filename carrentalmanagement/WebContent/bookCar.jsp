<%@ page import="java.util.List" %>
<%@ page import="com.hit.dao.CarDao" %>
<%@ page import="com.hit.dao.Car" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book Car for Rent</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
    <div class="container mt-4">
        <h1 class="mb-4">Book Car for Rent</h1>
        <form id="bookingForm" action="processBooking.jsp" method="post">
            <div class="form-group">
                <label for="car">Select Car:</label>
                <select class="form-control" id="car" name="car" required>
                    <option value="">Select Car</option>
                    <% CarDao carDao = new CarDao();
                    List<Car> cars = carDao.getAllCars();
                    for (Car car : cars) { %>
                        <option value="<%= car.getCarId() %>"><%= car.getCarMake() %> - <%= car.getCarModel() %></option>
                    <% } %>
                </select>
            </div>
            <div class="form-group">
    <label for="days">Number of Days:</label>
    <input type="number" class="form-control" id="days" name="days" min="1" value="1" required>
</div>

            <div class="form-group">
                <label for="totalCost">Total Cost:</label>
                <input type="text" class="form-control" id="totalCost" name="totalCost" readonly>
            </div>
            <button type="submit" class="btn btn-primary">Book Now</button>
        </form>
    </div>

    <script>
    $(document).ready(function(){
        $('#car').change(function(){
            var carId = $(this).val();

            // Fetch car price per day from server for the selected car
            $.ajax({
                url: 'getCarPrice.jsp',
                method: 'POST',
                data: { carId: carId },
                success: function(response){
                    // Parse the response as float
                    var carPricePerDay = parseFloat(response.trim());
                    console.log('Parsed Price:', carPricePerDay);

                    var days = $('#days').val();
                    var totalCost = days * carPricePerDay;

                    $('#totalCost').val(totalCost.toFixed(2));
                },
                error: function(xhr, status, error){
                    console.log('Error:', error);
                    alert('Error fetching car price.');
                }
            });
        });

        // Other form submission handling code...
    });
    </script>
</body>
</html>
