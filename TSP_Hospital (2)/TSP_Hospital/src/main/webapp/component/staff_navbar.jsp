<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"  %>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid"> 
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical"></i> TSP Hospital</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      <c:if test="${empty staffObj }">
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="staff_login.jsp">Logout</a>
        </li>
        </c:if>
        
        <c:if test="${not empty staffObj }">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="staff_home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="addPatient.jsp">Add Patient</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="management_login.jsp">View Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="management_login.jsp">Complaints</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="staffLogout"><h7 class="display-8"><span class="text-white"><i class="fa-solid fa-circle-user"></i> Logout</span></h7></a>
        </li>
         
        </c:if>
        
       
      </ul>
    </div>
  </div>
</nav>