<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="Header.jsp" %>
<html lang="en">
<head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!--     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body style="background-color:lavender">
<br>
<br>
<br>
<br>
<div class="container" style="background-color:gray">
<fieldset>
<legend>SupplierForm:</legend>
 
    
         <c:url value="/addsup" var="sup"/>
    <form:form action="${sup}" method="post" commandName="supplier">

    <div class="form-group">
      <label for="id">SupplierId:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="id" placeholder="Enter id" required="required" path="SupId"/>
      <br>
      <label for="name">SupplierName:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="name" placeholder="Enter name" required="required" path="SupName"/>
      <br>
      <label for="emailId">EmailId:</label>
      <span class="glyphicon glyphicon-envelope"></span>
      <form:input type="text" class="form-control" id="EmailId" placeholder="Enter EmailId" required="required" path="EmailId"/>
       <br>  
        <label for="address">Address:</label>
        <span class="glyphicon glyphicon-home"></span>
      <form:input type="text" class="form-control" id="address" placeholder="Enter Address" required="required" path="Address"/>
      <br>
            <label for="phone">Phone Number:</label>
            <span class="glyphicon glyphicon-earphone"></span>
      <form:input type="number" class="form-control" id="phone" placeholder="Enter Phone number" required="required" path="PhoneNo"/>
    </div>
    <button type="submit" class="btn btn-default">AddSupplier</button>
    <button type="reset" class="btn btn-default">Cancel</button>
  </form:form>
</fieldset>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<table border="1px solid black" style="border-color:black;font-size:20px;float:left;margin:-8.5em 370px 0 520px;color:black">
<tr style="bordor-color:tomato">
<th>Supplier Id</th>
<th>Supplier Name</th>
<th>Address</th>
<th>Phone no.</th>
<th>Email</th>
<th>Edit/Delete</th>
</tr>
	<c1:forEach items="${suppliers}" var="sup">
    <tr>
    <td>${sup.getSupId()}</td>
    <td>${sup.getSupName()}</td>
    <td>${sup.getAddress()}</td>
    <td>${sup.getPhoneNo()}</td>
    <td>${sup.getEmailId()}</td>
    <td><a href="<c:url value="/editsupplier/${sup.getSupId()}"/>">Edit</a>/<a href="<c:url value="/deletesupplier/${sup.getSupId()}"/>">Delete</a></td>
	</tr>    
	</c1:forEach>
	</table>
<br>
<br>
<br>
<br>
<br>
<br>


</body>
</html>
<%@include file="Footer.jsp" %>