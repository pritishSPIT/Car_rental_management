<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*,com.hit.utility.DBUtil" %>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="css/style2.css"><!-- Stylesheet connected -->
    <style>
        /* Custom CSS for carousel */
        .marquee {
            border: 2px solid black;
            background-color: white;
            text-align: center; /* Center align content */
            height: 100vh; /* Full viewport height */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .carousel-inner .item img {
            width: 500%;
            height: 300px; /* Maintain aspect ratio */
            max-height: 500%; /* Make sure image doesn't overflow */
            object-fit: flex; /* Cover entire container */
        }
    </style>
</head>
<body>
    <div class="col-md-12">
        <div class="marquee">
            <div class="marquee-content" style="font-weight: bold; font-size: 1.1em;">
                <div class="slider">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active"><img src="images/img_1.jpeg"></div>
                            <div class="item"><img src="images/img_2.jpeg"></div>
                            <div class="item"><img src="images/img_3.jpeg"></div>
                            <div class="item"><img src="images/img_4.jpeg"></div>
                            <div class="item"><img src="images/img_5.jpeg"></div>
                            <div class="item"><img src="images/img_6.jpeg"></div>
                        </div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div> <!-- End of mycarousel -->
                </div> <!-- End of Slider -->
            </div> <!-- End of marquee-content-->
        </div> <!-- End of marquee class--><br>
    </div><!--End of col-md-8 part of container in which data is shown-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ajax-utils.js"></script>
    <script src="js/script.js"></script>
    <script src="js/bootstrap-dropdownhover.min.js"></script>
</body>
</html>
