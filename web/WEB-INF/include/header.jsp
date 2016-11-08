<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header-wrap inner">
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
								<span id="cart-total">0 item(s)</span>
								<i class="fa fa-caret-down"></i>
							</button>
							<ul class="dropdown-menu">
								<li>
									<p class="text-center">Your shopping cart is empty!</p>
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
