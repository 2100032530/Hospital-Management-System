<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management Home</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
   
    <!-- External owl Carousel cdn links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <%@include file="/component/allcss.jsp" %>
</head>
<body>
<%@include file="/component/management_navbar.jsp" %>
<div class="container">
      <h1 class="display-3 text-center fw-bold"><span class="text-success">TSP</span> HOSPITAL</h1>
      <div class="row">
      <div class="owl-carousel owl-theme">
       <div class="item">
        <div class="card">
          <div class="card-body">
           <img src="img/img1.jpg" alt="img1" class="card-img-top" height="200px" />
            <hr></hr>
            <h1 class="text-center">Mental health care</h1>
          </div>
        </div>
        </div>
        <div class="item">
        <div class="card">
          <div class="card-body">
           <img src="img/img2.jpg" alt="img2" class="card-img-top" height="200px" />
            <hr></hr>
            <h1 class="text-center">Nutritional support</h1>
          </div>
        </div>
        </div>
        <div class="item">
        <div class="card">
          <div class="card-body">
           <img src="img/img3.jpg" alt="img3" class="card-img-top" height="200px" />
            <hr></hr>
            <h1 class="text-center">Pharmaceutical care</h1>
          </div>
        </div>
        </div>
        <div class="item">
        <div class="card">
          <div class="card-body">
           <img src="img/img6.jpg" alt="img4" class="card-img-top" height="200px" />
            <hr></hr>
            <h1 class="text-center">Dental care</h1>
          </div>
        </div>
        </div>
        <div class="item">
        <div class="card">
          <div class="card-body">
           <img src="img/img5.jpg" alt="img5" class="card-img-top" height="200px" />
            <hr></hr>
            <h1 class="text-center">Laboratory and diagnostic care</h1>
          </div>
        </div>
        </div>
        
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    <!-- JQUERY CDN link -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!--  JS links for OWL carousel -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:3
            }
        }
    })
    </script>
    
</body>
</html>