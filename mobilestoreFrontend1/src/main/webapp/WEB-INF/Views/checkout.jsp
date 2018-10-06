<%@include file="Header.jsp" %>
<html>
<head>
<title>Cart</title>
<style>
a{
text-decoration:none;
}</style>
</head>
<body>
<div class="container">
<table border="0px solid black" style="margin:50px 0px 0px 50px" width=100%>
<tr style="align:center">
<th>Product Name</th>
<th>Product Image</th>
<th>Product Description</th>
<th>Quantity</th>
<th>Price</th>
<th>Total Price</th>
</tr>
 <c1:forEach items="${cartItems}" var="cartIt">
    <tr>
    <td>${cartIt.getProduct().getProdName()}</td>
    <td><img width="200px" height="200px" src="<c:url value="resources/Images/${cartIt.getProduct().getProdId()}.jpg"/>"></td>
    <td>${cartIt.getProduct().getDescription()}</td>
    <td>${cartIt.getProduct().getQuantity()}</td>
    <td>${cartIt.getProduct().getPrice()}</td>
    <td>${cartIt.getCart().getGrandTotal()}</td>
  <td><a href="<c:url value="/Buy/${cartIt.getProduct().getProdId()}/${cartIt.getCart().getCartId()}"/>">
        <button type="submit" class="btn btn-default" style="margin-left:20px;margin-right:40px;width:60%;height:50px">Buy</button>
        </a></td>
	<td><a href="<c:url value="/Remove/${cartIt.getCartItemId()}"/>">
        <button type="submit" class="btn btn-default" style="margin-left:40px;width:60%;height:50px">Remove</button>
        </a></td>
	</tr>    

      </c1:forEach>
</table>

<a href="<c:url value="/Buyall"/>">
        <button type="submit" class="btn btn-default" style="margin-top:10px;margin-bottom:10px;margin-left:25px;width:10%;height:50px">Buy All</button>
        </a>
        
<a href="<c:url value="/RemoveAll"/>">
        <button type="submit" class="btn btn-default" style="margin-top:10px;margin-bottom:10px;margin-left:25px;width:10%;height:50px">Remove All</button>
        </a>

</div>


</body>
</html>
<%@include file="Footer.jsp" %>