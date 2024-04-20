<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage = "error.jsp" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 
 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="style/index.css" />
    <!-- <link rel="stylesheet" href="stylepopupbro.css" /> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>Mail Order Pharmacy</title>
    <style type="text/css">
    .flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
  margin-right: 5px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.navbar-nav {
			margin-top : 25px;
			margin: 10px;
			padding-left: 10px;
            margin-left: auto;
            font-size: 10px;
        }

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
    </style>
</head>

<body>



 <nav class="navbar navbar-expand-sm"> 
        <a class="navbar-brand text-black" href="home"><img width="60px"
			height="60px" src="images/OPTIMUS PHARMA.png">Optimus Pharma</a>
        <ul class="navbar-nav ml-auto"> 
            <li class="nav-item"> 
                <a class="nav-link text-secondary" href="supportedDrugs">
                 Available Drugs
                </a> 
            </li> 
            <li class="nav-item"> 
                <a class="nav-link text-secondary" href="search"> 
                  Search Drugs
                </a> 
            </li> 
            <li class="nav-item"> 
                <a class="nav-link text-secondary" href="prescriptionform"> 
                  Subscribe
                </a> 
            </li> 
            <li class="nav-item"> 
                <a class="nav-link text-secondary" href="subscriptions"> 
                  Subscriptions
                </a> 
            </li> 
            <li class="nav-item"> 
                <a class="nav-link text-secondary" href="/webportal/getAllRefill"> 
                  Refill Status
                </a> 
            </li> 
            <li class="nav-item"> 
                <a class="nav-link text-secondary" href="refillDateEntry"> 
                  Refill Due Date
                </a> 
            </li> 
            <li class="nav-item"> 
                <a class="nav-link text-secondary" href="logout"> 
                  Logout
                </a> 
            </li> 
        </ul> 
    </nav> 
     
    <br><br><br><br><br>
    <div align="center" class="form-group">

<div class="row">
  <div class="col-lg-6">
  	   <form name="searchDrugs"  model="searchModel" action="/webportal/searchDrugById" method="post">
    <div class="form-group">
      <label for="id"><h2>Search drug by ID   :</h2></label>
       <input type="text" name ="id" >
    </div >
    <div class="btnsbt"><button type="submit" class="btn btn-outline-success btn-lg mt-2" >Submit</button></div>
  </form>
  </div>
  
  <div class="col-lg-6">
  
   <form name="searchDrugs" model="searchModel" action="/webportal/searchDrugByName" method="post">
   <div class="form-group">
      <label for="id"><h2>Search drug by Name :</h2></label>
       <input type="text" name ="name" >
    </div >
    <div class="btnsbt"><button type="submit" class="btn btn-outline-success btn-lg mt-2" >Submit</button></div>
    </form>
    
  </div>
</div>

  
 
        <br><br> 
    </div>
    	<section id="services">
        <div class="container">
    <div align="center">
     <h1 class="success"><b>${drugdetails.msg}</b></h1>
      <table class="table table-condensed table-bordered table-striped table-hover table-success">
       <thead>
      <tr>
        <th>
   INFO
    </th>
    </tr>
    </thead>
     <tbody>
      

         <tr ><td>   <h6>${drugdetails.drugId}</h6> </td></tr>
           <tr><td> <h6>${drugdetails.drugName}</h6> </td></tr>
           <tr><td> <h6>${drugdetails.manufacturer}</h6> </td></tr>
            <tr><td><h6>${drugdetails.manufactureDate}</h6></td></tr>
            <tr><td><h6>${drugdetails.expiryDate}</h6></td></tr>
            <tr><td><c:forEach items="${drugdetails.druglocationQuantities}" var="itr1">
                   <p>${itr1.location} : ${itr1.quantity}</p><br>
            </c:forEach>
            </td>
        </div>
    </section>
    </tbody>
    </table>
  	</div>

    <br><br><br><br>


    <script>
        function openNav() {
document.getElementById("mySidebar").style.width = "300px";

}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
document.getElementById("mySidebar").style.width = "0";

}
    </script>
        
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script type = "text/javascript" > history.pushState(null, null, location.href); history.back(); history.forward(); window.onpopstate = function () { history.go(1); }; </script>
	<style>
body {
   background-color: white;
   background-image: url('images/#');
   background-repeat: no-repeat;
}

form {
	margin-left: 20%;
	margin-right: 20%;
	margin-bottom: 20%;
	padding: 5%;
	background-color: white;
}

</style>
</body>

</html>