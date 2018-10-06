<%@include file="Header.jsp" %>
<html>
<head>
<title>Gallery</title>
</head>
<style>
a{
text-decoration:none;
}
</style>
<div class="container" style="margin-bottom:150px;margin-top:15px">
<c1:forEach items="${products}" var="prod">
<div class="row">
<div class="col-sm-4">
<img src="<c:url value="resources/Images/${prod.getProdId()}.jpg"/>" style="width:100%;height:250px" alt="Image">
		<h3>${prod.getProdName()}</h3>
</div>
		<div class="col-sm-4">
		description
		</div>
		 <div style="margin-left:20px;margin-bottom:20px;text-decoration:none">
         <a href="<c:url value="/addtocart/${prod.getProdId()}"/>">
        <button type="submit" class="btn btn-default" style="margin-left:25px;width:10%;height:50px">Add to Cart</button>
        </a>
        </div>
</div>		
</c1:forEach>
</div>

</body>
</html>
<%@include file="Footer.jsp" %>