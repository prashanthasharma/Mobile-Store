<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="Header.jsp" %>
<html lang="en">
<head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!--     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body  style="background-color:lavender">
<br>
<br>
<br>
<br>

<div class="container" style="background-color:gray">
<fieldset>
<legend>CategoryForm:</legend>
 
    <c:url value="/addcat" var="cat"/>
    <form:form action="${cat}" method="post" commandName="category">
    <div class="form-group">
      <label for="id">CategoryId:</label>
      <form:input type="text" class="form-control" id="id" placeholder="Enter id" name="id" required="required" path="CatId"/>
      <br>
       <label for="name">CategoryName:</label>
      <form:input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required="required" path="CatName"/>
    </div>
    <button type="submit" class="btn btn-default">AddCategory</button>
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
<table border="1px solid black" style="float:left;margin:-140px 70px 10px 670px;border-collapse:collapse">
    <tr>
    <th>CategoryId</th>
    <th>CategoryName</th>
    <th>Edit/Delete</th>
    </tr>
    <c1:forEach items="${categories}" var="cat">
    <tr>
    <td>${cat.getCatId()}</td>
    <td>${cat.getCatName()}</td>
    <td><a href="<c:url value="/editcategory/${cat.getCatId()}"/>">Edit</a>/<a href="<c:url value="/deletecategory/${cat.getCatId()}"/>">Delete</a></td>
	</tr>    
	</c1:forEach></table>
<br>
<br>
<br>
<br>
<br>
<br>


</body>
</html>
<%@include file="Footer.jsp" %>