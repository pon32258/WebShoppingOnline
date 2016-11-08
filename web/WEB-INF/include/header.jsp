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
							<li><a href="#">Wish List(0)</a></li>
							<li><a href="cart.jsp">Shopping Cart</a></li>
							<li><a href="login.jsp">Login</a></li>
							<li><a href="register.jsp">Register</a></li>
						</ul>
					</div>
				<!-- Header Top Links Ends -->
				<!-- Currency & Languages Starts -->
					<div class="col-md-2 col-sm-5 col-xs-12 text-center">
					<!-- Languages Starts -->
						<div class="btn-group">
							<button class="btn btn-link dropdown-toggle text-uppercase" data-toggle="dropdown">
								Eng
								<i class="fa fa-caret-down"></i>
							</button>
							<ul class="pull-right dropdown-menu">
								<li>
									<a tabindex="-1" href="#">English</a>
								</li>
								<li>
									<a tabindex="-1" href="#">French</a>
								</li>
							</ul>
						</div>
					<!-- Languages Ends -->
					<!-- Currency Starts -->
						<div class="btn-group">
							<button class="btn btn-link dropdown-toggle text-uppercase" data-toggle="dropdown">
								$
								<i class="fa fa-caret-down"></i>
							</button>
							<ul class="pull-right dropdown-menu">
								<li><a tabindex="-1" href="#">Pound </a></li>
								<li><a tabindex="-1" href="#">US Dollar</a></li>
								<li><a tabindex="-1" href="#">Euro</a></li>
							</ul>
						</div>
					<!-- Currency Ends -->
					</div>
				<!-- Currency & Languages Ends -->
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
