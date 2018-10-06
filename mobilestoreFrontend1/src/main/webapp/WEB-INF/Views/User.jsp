<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
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
<legend>UserForm:</legend>

    <c:url value="/adduser" var="user"/>
    <form:form action="${user}" method="post" commandName="user">   
     <div class="form-group">
      <label for="id">UserId:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="id" placeholder="Enter id" required="required" path="UserId"/>
      <br>
      <label for="name">Name:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="name" placeholder="Enter name" required="required" path="Name"/>
       <br>
      <label for="address">Address:</label>
      <span class="glyphicon glyphicon-home"></span>
      <form:input type="text" class="form-control" id="address" placeholder="Enter Address" required="required" path="Address"/>
      <br>
      <label for="phone">Phone Number:</label>
      <span class="glyphicon glyphicon-earphone"></span>   
      <form:input type="number" class="form-control" id="phone" placeholder="Enter Phone number" required="required" path="PhNo"/>
      <br>
      <label for="email">Email:</label>
      <span class="glyphicon glyphicon-envelope"></span>
      <form:input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required="required" path="EmailId"/>
      <br>
      <label for="pwd">Password:</label>
      <span class="glyphicon glyphicon-lock"></span>
      <form:input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required="required" path="Password"/>
      <br>
      <label for="city">City:</label>
      <span class="glyphicon glyphicon-home"></span>
      <form:input type="text" class="form-control" id="city" placeholder="Enter city" name="city" required="required" path="City"/> 
 </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Register</button>
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


</body>
</html>
<%@include file="Footer.jsp" %>