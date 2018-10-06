<%@include file="Header.jsp"%>
<html>
<head>
<title>Address</title>
</head>
<body>

<div class="jumbotron" style="background-color:grey;margin-top:00px;margin-bottom:00px">
    
    
    <div class="row">
    <c:url value="/orderConfirm" var="bill"/>
    <form:form action="${bill}" method="post" commandName="billing">
    <div class="col-sm-5">
    
    
    <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="billId">Bill Id:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="billId" placeholder="Enter Bill Id" path="billId" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="billName">Bill Name:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="billName" placeholder="Enter Bill Name" path="billName" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="address">Address:</label>
        <span class="glyphicon glyphicon-home"></span>
      <form:input type="text" class="form-control" id="address" placeholder="Enter address" path="address" required="required"/>
      </div>
	   <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="phone">Phone Number:</label>
      <span class="glyphicon glyphicon-earphone"></span>
      <form:input type="phonenumber" class="form-control" id="phone" placeholder="Enter Phone Number" path="Phone" required="required"/>
      </div>
	  <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="city">City:</label>
      <span class="glyphicon glyphicon-home"></span>
      <form:input type="text" class="form-control" id="city" placeholder="Enter city" path="city" required="required"/>
      </div>
      
      
      
     
      </div>
      </form:form>
      
    
     <c:url value="/orderConfirm" var="ship"/>
    <form:form action="${ship}" method="post" commandName="shippingAddress">
    <div class="col-sm-6">
       
    <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="shipId">Ship Id:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="shipId" placeholder="Enter Shipping Id" path="shipId" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="Name">Name:</label>
      <span class="glyphicon glyphicon-user"></span>
      <form:input type="text" class="form-control" id="Name" placeholder="Enter Shipping Name" path="Name" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="address">Address:</label>
      <span class="glyphicon glyphicon-home"></span>
      <form:input type="text" class="form-control" id="address" placeholder="Enter address" path="address" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="phone">Phone Number:</label>
      <span class="glyphicon glyphicon-earphone"></span>
      <form:input type="phonenumber" class="form-control" id="phone" placeholder="Enter Phone Number" path="Phone" required="required"/>
      </div>
	  <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="city">City:</label>
      <span class="glyphicon glyphicon-home"></span>
      <form:input type="text" class="form-control" id="city" placeholder="Enter city" path="city" required="required"/>
      </div>
      
      <div class="row">
      <div class="col-sm-5">
      <div style="padding-left:30px;margin-top:30px">
      <button type="submit" class="btn btn-default">Submit</button>	    
      <button type="reset" class="btn btn-default">Cancel</button>
      </div>
      </div>
      </div>
      </div>
      
         </form:form>
      </div>
      
  
    </div>
 

</body>
</html>
<%@include file="Footer.jsp"%>
