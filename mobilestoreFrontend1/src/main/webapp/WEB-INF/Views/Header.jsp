<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>

<nav class="navbar navbar-inverse" style="margin-top=00px">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="<c:url value="/"/>" target="_parent">Home</a></li>
      <li><a href="<c:url value="/Footer"/>">About</a></li>
      <li><a href="<c:url value="/Footer"/>"> <span class="glyphicon glyphicon-earphone"></span>Contact</a></li>
        <li><a href="<c:url value="/Gallery"/>"><span class="glyphicon glyphicon-list"></span>Gallery</a></li>
       <c1:if test="${pageContext.request.userPrincipal.name!=null}">
         <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
       
        <ul class="dropdown-menu">  
       
          <li><a href="<c:url value="/Category"/>">Category</a></li>
          <li><a href="<c:url value="/Product"/>">Product</a></li>
          <li><a href="<c:url value="/Supplier"/>">Supplier</a></li> 
       
          </ul>
          </li> 
           </security:authorize>
     </c1:if>
    
    <li><c1:if test="${pageContext.request.userPrincipal.name!=null}">
    <div style="color:white;padding-left:25px;padding-top:15px">
    Welcome! ${pageContext.request.userPrincipal.name}
    </div>
    </c1:if>
    </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
<li> <a href="<c:url value="/checkout"/>">
          <span class="glyphicon glyphicon-shopping-cart">Cart${items}</span>
        </a></li>
       <c1:if test="${pageContext.request.userPrincipal.name==null}">
      <li><a href="<c:url value="/user"/>" target="_blank"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<c:url value="/login"/>" target="_blank"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
      </c1:if>
     <c1:if test="${pageContext.request.userPrincipal.name!=null}">
      <li><a href="<c:url value="/j_spring_security_logout"/>"> <span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
      </c1:if>

    </ul>
    
  
  </div>
</nav>
  


</body>
</html>
