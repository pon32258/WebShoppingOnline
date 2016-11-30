<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Header Top Starts -->
<div class="header-top">
    <!-- Nested Container Starts -->
    <div class="container">
        <!-- Nested Row Starts -->
        <div class="row">
            <!-- Logo Starts -->
            <div class="col-md-3 col-sm-4 col-xs-12">
                <a href="index.jsp">
                    <img src="images/logo.png" alt="Digi Shoppe" class="img-responsive logo" />
                </a>
            </div>
            <!-- Logo Ends -->
            <!-- Header Top Links Starts -->
            <div class="col-md-5 col-xs-12 hidden-sm hidden-xs">
                <ul class="list-unstyled list-inline header-links text-center">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="ShipmentFee?shipment=${sessionScope.shipment==null?'1':sessionScope.shipment}">Shopping Cart</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.user==null}">
                            <li><a href="Login?target=${param.target}">Login</a></li>
                            <li><a href="register.jsp">Register</a></li>
                            </c:when>
                            <c:otherwise>
                            <li><a href="OrderHistory?customerId=${sessionScope.user.customerId}&target=/orderhistory.jsp">Order-History</a></li>
                            <li><a href="userprofile.jsp">Profile</a></li>
                            <li><a href="Logout">Logout</a></li>
                            </c:otherwise>
                        </c:choose>
                </ul>
            </div>
            <!-- Header Top Links Ends -->				
            <!-- Shopping Cart Starts -->
            <div class="col-md-3 col-sm-3 col-xs-12">
                <div id="cart" class="btn-group pull-right">
                    <button type="button" data-toggle="dropdown" class="btn dropdown-toggle text-uppercase">
                        <i class="fa fa-shopping-cart"></i>
                        <span id="cart-total">${CART==null?'0':CART.size} item(s)</span>
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <ul class="dropdown-menu pull-right">
                        <li>
                            <c:choose>
                                <c:when test="${CART==null || CART.size==0}">
                                    <table class="table table-bordered total">
                                        <tbody>                                   
                                            <tr>
                                                <td class="text-center"><strong>No item in cart.</strong></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </c:when>
                                <c:otherwise>
                                    <table class="table hcart " >
                                        <!-- Item -->
                                        <c:forEach items="${CART.items}" var="it" varStatus="vs">
                                            <tr>
                                                <td class="text-center ">
                                                    <a href="SearchProduct?target=/product.jsp&searchBy=id&id=${it.value.product.prodId}">
                                                        <img src="images/product-images/hcart-thumb1.jpg" alt="image" title="image" class="img-thumbnail img-responsive" />
                                                    </a>
                                                </td>
                                                <td class="text-left  max-lines ">
                                                    <a href="SearchProduct?target=/product.jsp&searchBy=id&id=${it.value.product.prodId}">
                                                        ${it.value.product.prodName}
                                                    </a>
                                                </td>                                               
                                                <td class="text-right ">x ${it.value.quantity}</td>
                                                <td class="text-right">$<fmt:formatNumber value="${it.value.total}" pattern="#,###.00"/></td>
                                                <td class="text-center">
                                                    <a href="UpdateCart?deleteItem=${it.value.product.prodId}&target=${param.target==null?'/index.jsp':param.target}">
                                                        <i class="fa fa-times"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        <!-- Item End -->
                                    </table>
                                </li>
                                <li>
                                    <table class="table table-bordered total">
                                        <tbody>                                   
                                            <tr>
                                                <td class="text-right"><strong>Total</strong></td>
                                                <td class="text-left">$<fmt:formatNumber value="${CART.totalPrice}" pattern="#,###.00"/></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p class="text-right btn-block1">
                                        <a href="ShipmentFee?shipment=${sessionScope.shipment==null?'1':sessionScope.shipment}">
                                            View Cart
                                        </a>
                                    </p>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
            <!-- Shopping Cart Ends -->
        </div>
        <!-- Nested Row Ends -->
    </div>
    <!-- Nested Container Ends -->
</div>
