<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <title>hotel</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/styles.css">

        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css'>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="row">
            <div class="col1"></div>
            <div class="col10" >
            <div class="container">
                <div class="slideshow-container">
                    <div class="slide active">
                        <img src="img/Firefly Inpaint 20230706140713.jpeg" alt="Slideshow Image 1">
                    </div>
                    <div class="slide">
                        <img src="img/Socialdinin.jpg" alt="Slideshow Image 2">
                    </div>
                    <div class="slide">
                        <img src="img/pxfuel.jpg" alt="Slideshow Image 3">
                    </div>
                </div>
            </div>
        </div>
        <div class="col1"></div>
    </div>
    <div class="row">
        <div class="col1"></div>
        <div class="col10">
            <div class="container">
                <div class="button-container">
                    <button class="button">Eat.</button>
                    <button class="button">Drink.</button>
                    <button class="button">Relax.</button>
                  </div>
            </div>
        </div>
        <div class="col1"></div>
    </div>
    <div class="row">
        <div class="col1"></div>
        <div class="col10">
            <fieldset>
            <h1>Gallery</h1>             
            </fieldset>
            <div class="gallery">
                <div class="gallery-item">
                    <img src="img/gallery.jpg" alt="Gallery Image 1">
                </div>
                <div class="gallery-item">
                    <img src="img/gallery2.jpg" alt="Gallery Image 2">
                </div>
                <div class="gallery-item">
                    <img src="img/gallery3.jpg" alt="Gallery Image 3">
                </div>
                <!-- Add more gallery items as needed -->
            </div>
        </div>
        <div class="col1"></div>
    </div>    
    <div class="row">
        <div class="col1"></div>
        <div class="col10">
            <div class="container" style="padding-top: 50px;">
                <h2>Who We Are</h2>
                <p class="text">We started our business in 2000 with one goal in mind: providing an enjoyable dining experience to the India. Thanks to our experience and dedication, we’ve managed to become masters of the craft. Providing dishes that are fresh, hearty and simply unforgettable.</p>
            </div>
        </div>
        <div class="col1"></div>
    </div>
    <div class="row">
        <div class="col1"></div>
        <div class="col10">
            <%@ include file="footer.jsp" %>
            </div>
        </div>
        <div class="col1"></div>
    
        <!-- partial -->
    <script  src="js/script.js"></script>
    </body>
</html>