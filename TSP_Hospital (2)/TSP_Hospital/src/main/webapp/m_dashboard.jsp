<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management Dashboard</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
   
    <!-- External owl Carousel cdn links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <%@include file="/component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="/component/management_navbar.jsp" %>
  
    <div class="container p-5">
       <p class="text-center fs-3">Admin DashBoard</p>
           <c:if test="${ not empty sucMsg}">
            <p class="text-center text-success fs-3">${sucMsg}</p>
            <c:remove var="sucMsg" scope="session"/>
           </c:if>
           <c:if test="${ not empty errorMsg}">
              <p class="text-center text-danger fs-3">${errorMsg}</p>
              <c:remove var="errorMsg" scope="session"/>
           </c:if>
           
        <div class="row">
        	<div class="col-md-4">
        	   <div class="card paint-card">
        	      <div class="card-body text-center text-success">
        	         <i class="fas fa-user-md fa-3x"></i><br>
        	         <p class="fs-4 text-center">
        	              Doctor <br>5
        	         </p>
        	      </div>
        	   </div>
        	
        </div>
        	<div class="col-md-4">
        	   <div class="card paint-card">
        	      <div class="card-body text-center text-success">
        	         <i class="fas fa-user-circle fa-3x"></i><br>
        	         <p class="fs-4 text-center">
        	              Patient <br>5
        	         </p>
        	      </div>
        	   </div>
        	
        </div>
        	<div class="col-md-4">
        	   <div class="card paint-card">
        	      <div class="card-body text-center text-success">
        	         <i class="fa-solid fa-calendar-check fa-3x"></i><br>
        	         <p class="fs-4 text-center">
        	              Total Appointment <br>5
        	         </p>
        	      </div>
        	   </div>
        	
        </div>
        	<div class="col-md-4 mt-2" >
        	   <div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
        	      <div class="card-body text-center text-success">
        	         <i class="fa-solid fa-calendar-check fa-3x"></i><br>
        	         <p class="fs-4 text-center">
        	              Specialist <br>5
        	         </p>
        	      </div>
        	   </div>
        	</div>
      </div>
    </div>
    
    

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="addSpecialist" method="post">
           <div class="form-group">
             <label>Enter Specialist Name</label><input type="text" name="specName" class="form-control">
           </div>
           <div class="text-center mt-3"><button type=submit class="btn btn-primary">Add</button></div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>
</body>
</html>