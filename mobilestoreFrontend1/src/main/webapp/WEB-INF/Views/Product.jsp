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
<legend>ProductForm:</legend>
     <c:url value="/addprod" var="prod"/>
     <form:form action="${prod}" method="post" commandName="product" enctype="multipart/form-data">
    <div class="form-group">
      <label for="id">ProductId:</label>
      <form:input type="text" class="form-control" id="id" placeholder="Enter id" required="required" path="ProdId"/>
      <br>      
      <label for="name">ProductName:</label>
      <form:input type="text" class="form-control" id="name" placeholder="Enter name" required="required" path="ProdName"/>
      <br>
      <label for="desc">ProductDescription:</label>
      <form:input type="text" class="form-control" id="desc" placeholder="Description" required="required" path="Description"/>
      <br>
            <label for="quantity">Quantity:</label>
      <form:input type="text" class="form-control" id="quantity" placeholder="Enter Quantity" required="required" path="Quantity"/>
       <br>
            <label for="price">Price:</label>
      <span class="glyphicon glyphicon-usd"></span>
      <form:input type="text" class="form-control" id="price" placeholder="Enter Price" required="required" path="Price"/>
      <br>
    <div class="form-group">
      <label for="CatName">Select Category:</label>
      <form:select class="form-control" path="category.CatId">
       <c1:forEach items="${categories}" var="cat">
       <option value="${cat.getCatId()}">${cat.getCatName()}</option>
      </c1:forEach>
      </form:select>
      </div>
    <br>
    <div class="form-group">
      <label for="SupName">Select Supplier:</label>
      <form:select class="form-control" path="supplier.SupId">
       <c1:forEach items="${suppliers}" var="sup">
       <option value="${sup.getSupId()}">${sup.getSupName()}</option>
      </c1:forEach>
      </form:select>
      </div>
      <br>
    <label for="file">Upload Image:</label>
      <span class="glyphicon glyphicon-picture"></span>
      <form:input type="file" value="upload file" path="pimg"/>
      </div>
      <br>
    <button type="submit" class="btn btn-default">AddProduct</button>
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

<table border="1px solid black" style="float:left;margin:-8.5em 470px 0px 400px;border-collapse:collapse">
<tr style="bordor-color:tomato">
<th >Product Id</th>
<th>Product Image</th>
<th>Product Name</th>
<th>Description</th>
<th>Price</th>
<th>Quantity</th>
<th>Category Name</th>
<th>Supplier Name</th>
<th>Edit/Delete</th>
</tr>
<c1:forEach items="${products}" var="prod">
    <tr>
    <td align="center">${prod.getProdId()}</td>
    <td><img width="150px" height="150px" src="<c:url value="resources/Images/${prod.getProdId()}.jpg"/>"></td>
    <td align="center">${prod.getProdName()}</td>
    <td align="center">${prod.getDescription()}</td>
    <td align="center">${prod.getPrice()}</td>
    <td align="center">${prod.getQuantity()}</td>
    <td align="center">${prod.category.getCatName()}</td>
    <td align="center">${prod.supplier.getSupName()}</td>
    <td><a href="<c:url value="/editproduct/${prod.getProdId()}"/>">Edit</a>/<a href="<c:url value="/deleteproduct/${prod.getProdId()}"/>">Delete</a></td>
	</tr>    
	</c1:forEach></table>
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



</body>
</html>
<%@include file="Footer.jsp" %>