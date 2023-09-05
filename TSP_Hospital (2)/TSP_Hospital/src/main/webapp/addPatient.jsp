<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
<%@include file="/component/allcss.jsp" %>
</head>
<body>
<%@include file="/component/staff_navbar.jsp" %>
<br></br>
<h5 class="display-7 text-center fw-bold"><span class="text-success">ADD</span> PATIENT</h5>

	  <div class="container" style=" padding: 20px;">
	  <form class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><b>First Name : </b></label>
    <input type="email" class="form-control" id="inputEmail4"/>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label"><b>Last Name : </b></label>
    <input type="password" class="form-control" id="inputPassword4"/>
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label"><b>Address</b></label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St..."/>
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label"><b>Health Issue : </b></label>
    <input type="text" class="form-control" id="health-problem" placeholder="Disease..."/>
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label"><b>Birth Date : </b></label>
    <input type="date" class="form-control" id="date" placeholder="dd-mm-yyyy"/>
  </div>
 
  <div class="col-md-4">
    <label for="inputState" class="form-label"><b>Admit Status :</b> </label>
    <select id="inputState" class="form-select">
      <option selected="selected">Choose...</option>
      <option value="yes">Yes</option>
      <option value="no">No</option>
    </select>
  </div>
  <div class="col-md-2">
    <label for="inputState" class="form-label"><b>Assigned Doctor :</b> </label>
    <select id="doctor" class="form-select">
      <option selected="selected">Choose...</option>
      <option value="1">Dr. Tulasi Mahalakshmi</option>
      <option value="2">Dr. Chilukuri Sowmya</option>
      <option value="3">Dr. Powar Pratik</option>
      
    </select>
  </div>
 
  <div class="col-12 text-center">
    <button type="submit" class="btn btn-success" ><b>Add</b></button>
  </div>
</form>
</div>
</body>
</html>