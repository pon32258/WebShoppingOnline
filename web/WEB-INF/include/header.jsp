<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <li><a href="cart.jsp">Shopping Cart</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.user==null}">
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="register.jsp">Register</a></li>
                            </c:when>
                            <c:otherwise>
                            <li><a href="Logout">Logout</a></li>
                            </c:otherwise>
                        </c:choose>
                </ul>
            </div>
            <!-- Header Top Links Ends -->				
            <!-- Shopping Cart Starts -->
            <div class="col-md-2 col-sm-3 col-xs-12">
                <div id="cart" class="btn-group pull-right">
                    <button type="button" data-toggle="dropdown" class="btn dropdown-toggle text-uppercase">
                        <i class="fa fa-shopping-cart"></i>
                        <span id="cart-total">${CART.size()} item(s)</span>
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <ul class="dropdown-menu pull-right">
                        <li>
                            <table class="table hcart">
                                <tr>
                                    <td class="text-center">
                                        <a href="product.jsp">
                                            <img src="images/product-images/hcart-thumb1.jpg" alt="image" title="image" class="img-thumbnail img-responsive" />
                                        </a>
                                    </td>
                                    <td class="text-left">
                                        <a href="product-full.jsp">
                                            Seeds
                                        </a>
                                    </td>
                                    <td class="text-right">x 1</td>
                                    <td class="text-right">$120.00</td>
                                    <td class="text-center">
                                        <a href="#">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">
                                        <a href="product.jsp">
                                            <img src="images/product-images/hcart-thumb2.jpg" alt="image" title="image" class="img-thumbnail img-responsive" />
                                        </a>
                                    </td>
                                    <td class="text-left">
                                        <a href="product-full.jsp">
                                            Organic
                                        </a>
                                    </td>
                                    <td class="text-right">x 2</td>
                                    <td class="text-right">$240.00</td>
                                    <td class="text-center">
                                        <a href="#">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </li>
                        <li>
                            <table class="table table-bordered total">
                                <tbody>                                   
                                    <tr>
                                        <td class="text-right"><strong>Total</strong></td>
                                        <td class="text-left">$600.00</td>
                                    </tr>
                                </tbody>
                            </table>
                            <p class="text-right btn-block1">
                                <a href="cart.jsp">
                                    View Cart
                                </a>
                                <a href="#">
                                    Checkout
                                </a>
                            </p>
                        </li>									
                    </ul>
                </div>
            </div>
            <!-- Shopping Cart Ends -->
        </div>
        <!-- Nested Row Ends -->
    </div>
    <!-- Nested Container Ends -->
</div>
