<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet" href="style/index.css" />
<!-- <link rel="stylesheet" href="stylepopupbro.css" /> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.image {
	width: 20%;
	margin-top: -15%;
}

.reverse {
	transform: rotateY(180deg);
	margin-left: 80%;
	margin-top: -19%;
}
</style>
<title>Mail Order Pharmacy</title>
</head>

<body class="bwelcome">



	<nav class="navbar navbar-inverse ">
		<a href="home" class="navbar-brand"><img width="60px"
			height="60px" src="images/lo2.png">Mail Order Pharmacy</a>

		<!-- <button class="navbar-toggler navbar-toggler collapsed" type="button" data-toggle="collapse"
            data-target="#navbarText" aria-controls="navbarsExampleDefault" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="my-1 mx-2 close">CLOSE</span>
            <span class="navbar-toggler-icon">OPEN</span>
        </button> -->

		<div class="" id="navbarText">
			<ul class="navbar-nav mr-auto text-center">

				
			</ul>
		</div>
		
		<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Services
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="supportedDrugs">Available Drugs</a>
    <a class="dropdown-item" href="search">Search Drugs</a>
    <a class="dropdown-item" href="prescriptionform">Subscribe</a>
      <a class="dropdown-item" href="subscriptions">Subscriptions</a> 
        <a class="dropdown-item" href="subscriptions">Adhoc Refill</a> 
          <a class="dropdown-item" href="refillstatus">Refill Status</a> 
           <a class="dropdown-item"  href="refillDateEntry">Refill Due Date</a>
            <a class="dropdown-item" href="logout">Logout</a>
  </div>
</div>
	</nav>
	<!-- <div id="mySidebar" class="sidebar">
		<br> <a href="javascript:void(0)" class="closebtn"
			onclick="closeNav()">&times;</a> 
			<a href="supportedDrugs">Available Drugs</a>
			 <a href="search">Search Drugs</a>
			  <a href="prescriptionform">Subscribe</a>
		<a href="subscriptions">Subscriptions</a> 
		<a href="subscriptions">Adhoc Refill</a> 
		<a href="refillstatus">Refill Status</a> 
		<a href="refillDateEntry">Refill Due Date</a>
		 <a href="logout">Logout</a>
	</div>
 -->


	<br>
	<br>
	<br>
	<div class="typ">
		<h1>
			<p class="typewrite" data-period="2000"
				data-type='[ "Welcome to Mail Order Pharmacy....", "Diagnose the present, foretell the future..", "We got all your health needs covered!!", "Count on us.." ]'>
				<span class="wrap"></span>
			</p>
		</h1>
	</div>
<br>
<!-- <div class="centerwelcomeimage" align="center">
	<img src="images/dcar.jpg" class="image" >
</div>
<div class="welcomeimages">
	<img src="images/pic1.png" class="image">

	
	<img src="images/pic1.png" class="image reverse">
</div> -->
	<div class="container">
		<div class="row gx-5 gy-5">
			<div class="col-md-6 col-12">
				<div class=" p-3 bg-grey">
					<div class="col-12 d-flex mt-2 justify-content-center">
						<h3>Bringing the medicine at your door</h3>
					</div>
					<div class="col-12 p-4 mt-2 d-flex text-wrap text-center">
						<p>Small enough to know you, Big Enough to serve your every need. Get Medicines Delivered at your doorstep when and where you need..</p>
					</div>
				</div>
			</div>
			<div class="row gx-8 gy-8">
				<div class="p-3 bg-grey">
					<div class="col-12 d-flex mt-2 justify-content-left">
						<h3>OFFER!! &nbsp OFFER!! &nbsp OFFER!! &nbsp OFFER!! &nbsp  OFFER!! &nbsp OFFER!! &nbsp  OFFER!!</h3>
					</div>
					<div class="col-12 mt-2 p-4 d-flex text-wrap text-center">
						<p>We have got you covered ..
							Order now and experience one day delivery for orders above
							&#8377;5000.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="containerwel mb-5">
		<div class="row">
			<div class="col-6">
				<img src="images/bgno-removebg-preview.png">
			
		</div>
	</div>



	<!-- <img src="COVID_19_IEC_ENG86.jpg" class="image"> -->
	<img src="images/covid1.jpg" style="width: 95%; margin-left: 2.5%;">

	<br>
	<br>
	<br>
	<br>




	<script>
		var TxtType = function(el, toRotate, period) {
			this.toRotate = toRotate;
			this.el = el;
			this.loopNum = 0;
			this.period = parseInt(period, 10) || 2000;
			this.txt = '';
			this.tick();
			this.isDeleting = false;
		};

		TxtType.prototype.tick = function() {
			var i = this.loopNum % this.toRotate.length;
			var fullTxt = this.toRotate[i];

			if (this.isDeleting) {
				this.txt = fullTxt.substring(0, this.txt.length - 1);
			} else {
				this.txt = fullTxt.substring(0, this.txt.length + 1);
			}

			this.el.innerHTML = '<span class="wrap">' + this.txt + '</span>';

			var that = this;
			var delta = 200 - Math.random() * 100;

			if (this.isDeleting) {
				delta /= 2;
			}

			if (!this.isDeleting && this.txt === fullTxt) {
				delta = this.period;
				this.isDeleting = true;
			} else if (this.isDeleting && this.txt === '') {
				this.isDeleting = false;
				this.loopNum++;
				delta = 500;
			}

			setTimeout(function() {
				that.tick();
			}, delta);
		};

		window.onload = function() {
			var elements = document.getElementsByClassName('typewrite');
			for (var i = 0; i < elements.length; i++) {
				var toRotate = elements[i].getAttribute('data-type');
				var period = elements[i].getAttribute('data-period');
				if (toRotate) {
					new TxtType(elements[i], JSON.parse(toRotate), period);
				}
			}
			// INJECT CSS
			/*     var css = document.createElement("style");
			 css.type = "text/css";
			 css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
			 document.body.appendChild(css); */
		};

		Resources
	</script>


	<script>
		function openNav() {
			document.getElementById("mySidebar").style.width = "300px";
			//   document.getElementById("main").style.marginRight = "250px";
			//   document.getElementsById("closer").style.marginRight = "250px";

		}

		/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
		function closeNav() {
			document.getElementById("mySidebar").style.width = "0";
			//   document.getElementById("main").style.marginRight = "0";
			//   document.getElementsById("closer").style.marginRight = "0";
		}
	</script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	

	
		<style>
body {
 background-repeat: no-repeat;
  background-image: url('images/bg3.jpg');
}
</style>
	
	
</body>
</html>