<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="Header.jsp" %>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<html>
<body>
<div class="container wrapper">
            <div class="row cart-head">
                <div class="container">
                <div class="row">
                    <p></p>
                </div>
                <div class="row">
                    <div style="display: table; margin: auto;">
                        
                        <span class="step_thankyou check-bc step_complete">Thank you</span>
                    </div>
                </div>
                <div class="row">
                    <p></p>
                </div>
                </div>
            </div>    
            <div class="row cart-body">
                <form class="form-horizontal" method="post" action="">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                    <!--REVIEW ORDER-->
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Review Order <div class="pull-right"><small><a class="afix-1" href="<c:url value="/checkout/"/>">Edit Cart</a></small></div>
                        </div>
                        <div class="panel-body">
                        <c1:if test="${prot!=null}">
                            <div class="form-group">
                                <div class="col-sm-3 col-xs-3">
                                    <img class="img-responsive" src="<c:url value='resources/Images/${prot.getProdId()}.jpg'/>" />
                                </div>
                                <div class="col-sm-6 col-xs-6">
                                    <div class="col-xs-12">${prot.getProdName()}</div>
                                    <div class="col-xs-12"><small><span>${prot.getDescription()}</span></small></div>
                                </div>
                                <div class="col-sm-3 col-xs-3 text-right">
                                    <h6><span>Rs.</span>${prot.getPrice()}</h6>
                                </div>
                            </div>
                            </c1:if>
                            <c1:if test="${prot==null}">
     							<c1:forEach items="${cartItems}" var="c1">
                            <div class="form-group">
                                <div class="col-sm-3 col-xs-3">
                                    <img class="img-responsive" src="<c:url value='resources/Images/${c1.getProduct().getProdId()}.jpg'/>" />
                                </div>
                                <div class="col-sm-6 col-xs-6">
                                    <div class="col-xs-12">${c1.getProduct().getProdName()}</div>
                                    <div class="col-xs-12"><small><span>${c1.getProduct().getDescription() }</span></small></div>
                                </div>
                                <div class="col-sm-3 col-xs-3 text-right">
                                    <h6><span>Rs.</span>${c1.getProduct().getPrice()}</h6>
                                </div>
                              <div class="col-sm-3 col-xs-3 text-right">
                                    <h6><span>Total price=Rs</span> ${gtotal}</h6>
                                </div>
                               
                            </div>
                            </c1:forEach>
                            </c1:if>
<!--                             <div class="form-group"><hr /></div> -->
<!--                             <div class="form-group"> -->
<!--                                 <div class="col-sm-3 col-xs-3"> -->
<!--                                     <img class="img-responsive" src="//c1.staticflickr.com/1/466/19681864394_c332ae87df_t.jpg" /> -->
<!--                                 </div> -->
<!--                                 <div class="col-sm-6 col-xs-6"> -->
<!--                                     <div class="col-xs-12">Product name</div> -->
<!--                                     <div class="col-xs-12"><small>Quantity:<span>2</span></small></div> -->
<!--                                 </div> -->
<!--                                 <div class="col-sm-3 col-xs-3 text-right"> -->
<!--                                     <h6><span>$</span>50.00</h6> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="form-group"><hr /></div> -->
<!--                             <div class="form-group"> -->
<!--                                 <div class="col-xs-12"> -->
<!--                                     <strong>Subtotal</strong> -->
<!--                                     <div class="pull-right"><span>$</span><span>200.00</span></div> -->
<!--                                 </div> -->
<!--                                 <div class="col-xs-12"> -->
<!--                                     <small>Shipping</small> -->
<!--                                     <div class="pull-right"><span>-</span></div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="form-group"><hr /></div> -->
<!--                             <div class="form-group"> -->
<!--                                 <div class="col-xs-12"> -->
<!--                                     <strong>Order Total</strong> -->
<!--                                     <div class="pull-right"><span>$</span><span>150.00</span></div> -->
<!--                                 </div> -->
<!--                             </div> -->
                        </div>
                    </div>
                    
                   <a href="<c:url value="/pay"/>">
                    <button class="subscribe btn btn-success btn-block" type="button">Payment</button></a>
<%--                     <a href="<c:url value="/Payment"/>"></a> --%>
<!--                     <a class="btn btn-success" target="_blank" href=""><button type="submit" class="btn btn-default" style="margin-left:20px;width:60%;height:50px">Pay</button> -->
<!--                     </a> -->
                    
             
                    <!--REVIEW ORDER END-->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                    <!--SHIPPING METHOD-->
                     <form:form action="${bill}" method="post" commandName="billing">
                    <div class="panel panel-info">
                        <div class="panel-heading">Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <h4>Billing Address</h4>
                                </div>
                            </div>
                             
                            <div class="form-group">
                                <div class="col-md-12"><strong>Name:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" value="${billing.getBillName()}" name="name">
                                </div>
                            </div>
                           
                          
                            <div class="form-group">
                                <div class="col-md-6 col-xs-12">
                                    <strong>Phone Number:</strong>
                                    <form:input type="text" name="first_name" class="form-control" value="${user.billing.getPhone()}" path="Phone"/>
                                </div>
                                
                            </div>
                        
                            <div class="form-group">
                                <div class="col-md-12"><strong>Address:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" value="${billing.getAddress()}" >
                                </div>
                            </div>
                 
                          
                            <div class="form-group">
                                <div class="col-md-12"><strong>City:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" value="${billing.getCity()}">
                                </div>
                            </div>
                            
                          </div>    </div></form:form>
                        
                            
<!--                             <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6"> -->
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <h4>Shipping Address</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Name:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" value="${shippingAddress.getName()}" name="name"/>
                                </div>
                            </div>
                            <div class="form-group">
                            
                                <div class="col-md-6 col-xs-12">
                                    <strong>Phone Number:</strong>
                                    <input type="text" name="first_name" class="form-control" value="${shippingAddress.getPhone()}">
                                </div>
                                
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Address:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" value="${shippingAddress.getAddress()}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>City:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" value="${shippingAddress.getCity()}">
                                </div>
                            </div>
                           
                            </div>
                            </div>
                            </div>
                            </form>
                            </div>
                              
                            </div>
                            
                            
                            
                            
   
  
<%--     <c1:if test="${prot!=null}"> --%>
    
<!--     <tr> -->
<%--     <td style="border: 1px solid black"><img src="<c:url value='resourses/images/${prot.getProId()}.jpg'/>" width=150px height=200px></td> --%>
<%--     <td style="border: 1px solid black">${prot.getProName()}</td> --%>
<%--     <td style="border: 1px solid black">${prot.getSupplier().getSupName()}</td> --%>
<%--         <td style="border: 1px solid black">${prot.getCategory().getCatName()}</td> --%>
<%--         <td style="border: 1px solid black">${prot.getProPrice()}</td> --%>
<!--         </tr> -->
<%--         </c1:if> --%>
        
<%--      <c1:if test="${prot==null}"> --%>
<%--      <c1:forEach items="${cartItems}" var="c1"> --%>
<!--      <tr> -->
<%--      <td style="border: 1px solid black"><img src="<c:url value='resouses/images/${prot.getProId()}.jpg'/>"></td> --%>
<%--      <td style="border: 1px solid black">${c1.getProduct().getProName()}</td> --%>
<%--      <td style="border: 1px solid border">${c1.getProduct().getCategory().getCatName()}</td> --%>
<%--      <td style="border: 1px solid border">${c1.getProduct().getSupplier().getSupName()}</td> --%>
<%--       <td style="border: 1px solid border">${c1.getProduct().getProPrice()}</td> --%>
<!--       </tr> -->
<%--       </c1:forEach> --%>
<%--       </c1:if> --%>
     
<!--     <div> -->
<!--    <a target="_blank" href="/addtocart/{proid}"> -->
<%--     <img src="resourses/images/${pro.getProId()}.jpg" alt="img" width="600" height="400"> --%>
<!--   </a> -->
<%--   <div class="desc">${pro.getProName()}</div> --%>
<!--   </div> -->
 </body>
 </html>
 <%@include file="Footer.jsp" %>
