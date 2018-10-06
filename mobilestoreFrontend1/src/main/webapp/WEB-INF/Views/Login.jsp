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
<c:url value="/j_spring_security_check" var="Login"/>
<form:form action="${Login}" method="post">
<legend>LoginForm:</legend>
    <div class="form-group">
    <label for="email">Email Id:</label>
      <span class="glyphicon glyphicon-envelope"></span>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="j_username" required="required">
      <br>
      <label for="pwd">Password:</label>
      <span class="glyphicon glyphicon-lock"></span>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="j_password" required="required">
  
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Login</button>
    <button type="reset" class="btn btn-default">Cancel</button>
    </div>
  </form:form>
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
