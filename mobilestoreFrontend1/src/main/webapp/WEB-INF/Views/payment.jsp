<%@include file="Header.jsp"%>
<html>
<head><title>Payment</title></head>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script>
 var app = angular.module('myApp', []);
 app.controller('myCtrl', function($scope, $http){
	 $http.get("http://localhost:8080/mobilestoreFrontend1/SendMail")
	 });
 </script>
<body>


<div class="container">
<div class="row">
	<aside class="col-sm-6">
<p>Payment form1</p>

<article class="card">
<div class="card-body p-5">
<p> <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-visa.png"> 
	<img src="http://bootstrap-ecommerce.com/main/images/icons/pay-mastercard.png"> 
   <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-american-ex.png">
</p>
<p class="alert alert-success">Some text success or error</p>

 <c:url value="/cardPayment" var="card"/>
     <form:form action="${card}" method="post" commandName="card">
<div class="form-group">
<label for="username">Full name (on the card)</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-user"></i></span>
	</div>
	<form:input type="text" class="form-control" name="username" placeholder="" required="required" path="username"/>
</div> <!-- input-group.// -->
</div> <!-- form-group.// -->

<div class="form-group">
<label for="cardNumber">Card number</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-credit-card"></i></span>
	</div>
	<form:input type="text" class="form-control" name="cardNumber" placeholder="" path="cardNumber"/>
</div> <!-- input-group.// -->
</div> <!-- form-group.// -->

<div class="row">
    <div class="col-sm-8">
        <div class="form-group">
            <label><span class="hidden-xs">Expiration</span> </label>
        	<div class="form-inline">
        		<select class="form-control" style="width:45%">
				  <option>MM</option>
				  <option>01 - January</option>
				  <option>02 - February</option>
				  <option>03 - March</option>
				  <option>04 - April</option>
				  <option>05 - May</option>
				  <option>06 - June</option>
				  <option>07 - July</option>
				  <option>08 - August</option>
				  <option>09 - September</option>
				  <option>10 - October</option>
				  <option>11 - November</option>
				  <option>12 - December</option>
				</select>
	            <span style="width:10%; text-align: center"> / </span>
	            <select class="form-control" style="width:45%">
				  <option>YY</option>
				  <option>2018</option>
				  <option>2019</option>
				  <option>2020</option>
				  <option>2021</option>
				  <option>2022</option>
				  <option>2023</option>
				  <option>2024</option>
				  <option>2025</option>
				  <option>2026</option>
				  <option>2027</option>
				  <option>2028</option>
				  <option>2029</option>
				  <option>2030</option>
				</select>
        	</div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-group">
            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
            <form:input class="form-control" required="requuired" type="text" path="cvv"/>
        </div> <!-- form-group.// -->
    </div>
</div> <!-- row.// -->
<button type="submit" style="width:100%;height:5%" class="subscribe btn btn-primary btn-block"> Confirm </button>
</form:form>
</div> <!-- card-body.// -->
</article> <!-- card.// -->


	</aside> <!-- col.// -->
	<aside class="col-sm-6">
<p>Payment form2</p>

<article class="card">
<div class="card-body p-5">

<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" data-toggle="pill" href="#nav-tab-card">
		<i class="fa fa-credit-card"></i> Cash On Delivery</a></li>
	
</ul>
</div>
<div class="tab-content">
<div class="tab-pane fade show active" id="nav-tab-card">

	<c:url value="/payment" var="pa"/>
         <form:form action="${pa}" method="post" id="myForm">

	<div class="form-group">
		<label for="cardNumber">OTP</label>
		<div class="input-group">
			<input type="text" class="form-control" name="payb2" ng-app="myApp" ng-controller="myCtrl" placeholder="">
			<div class="input-group-append">
				<span class="input-group-text text-muted">
					<i class="fab fa-cc-visa"></i>   <i class="fab fa-cc-amex"></i>   
					<i class="fab fa-cc-mastercard"></i> 
				</span>
			</div>
		</div>
	</div> <!-- form-group.// -->
	<input type="submit" class="subscribe btn btn-success btn-block" value="Pay">
</form:form>
	

</div> <!-- card-body.// -->
</div>
</article> <!-- card.// -->


	</aside> <!-- col.// -->
</div> <!-- row.// -->

</div> 
<!--container end.//-->

<br><br>


</body>
</html>
<%@include file="Footer.jsp"%>
