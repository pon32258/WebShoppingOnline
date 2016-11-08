<!doctype html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <!--[if IE]>
                <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Digi Shoppe - Bootstrap 3 Template</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Google Web Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css">

        <!-- CSS Files -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!--[if lt IE 9]>
                <script src="js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/fav-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/fav-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/fav-72.png">
        <link rel="apple-touch-icon-precomposed" href="images/fav-57.png">
        <link rel="shortcut icon" href="images/fav.png">

    </head>
    <body>
        <jsp:include page="WEB-INF/include/header.jsp"/>
            <!-- Main Menu Starts -->
            <nav id="main-menu" class="navbar" role="navigation">
                <!-- Nested Container Starts -->
                <div class="container">
                    <!-- Nav Header Starts -->
                    <div class="navbar-header">
                        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-cat-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <i class="fa fa-bars"></i>
                        </button>
                    </div>
                    <!-- Nav Header Ends -->
                    <!-- Navbar Cat collapse Starts -->
                    <div class="collapse navbar-collapse navbar-cat-collapse">
                        <!-- Nav Links Starts -->
                        <ul class="nav navbar-nav">
                            <li><a href="category-list.jsp">Digital Cameras</a></li>
                            <li class="dropdown">
                                <a href="category-list.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10">
                                    Sound Devices
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a tabindex="-1" href="#">Music System</a></li>
                                    <li><a tabindex="-1" href="#">DTS</a></li>
                                    <li><a tabindex="-1" href="#">Home Theater</a></li> 
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="category-list.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10">Televisions </a>
                                <div class="dropdown-menu">
                                    <div class="dropdown-inner">
                                        <ul class="list-unstyled">
                                            <li class="dropdown-header">Sub Category</li>
                                            <li><a tabindex="-1" href="#">item 1</a></li>
                                            <li><a tabindex="-1" href="#">item 2</a></li>
                                            <li><a tabindex="-1" href="#">item 3</a></li>
                                        </ul>										
                                        <ul class="list-unstyled">
                                            <li class="dropdown-header">Sub Category</li>
                                            <li><a tabindex="-1" href="#">item 1</a></li>
                                            <li><a tabindex="-1" href="#">item 2</a></li>
                                            <li><a tabindex="-1" href="#">item 3</a></li>
                                        </ul>
                                        <ul class="list-unstyled">
                                            <li class="dropdown-header">Sub Category</li>
                                            <li><a tabindex="-1" href="#">item 1</a></li>
                                            <li><a tabindex="-1" href="#">item 2</a></li>
                                            <li><a tabindex="-1" href="#">item 3</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li><a href="category-list.jsp">Computers </a></li>
                            <li><a href="category-list.jsp">Washing Machines</a></li>
                            <li class="dropdown">
                                <a href="category-list.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10">
                                    Pages
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a tabindex="-1" href="index.jsp">Home</a></li>
                                    <li><a tabindex="-1" href="about.jsp">About</a></li>
                                    <li><a tabindex="-1" href="category-list.jsp">Category List</a></li>
                                    <li><a tabindex="-1" href="category-grid.jsp">Category Grid</a></li>
                                    <li><a tabindex="-1" href="product.jsp">Product</a></li>
                                    <li><a tabindex="-1" href="product-full.jsp">Product Full Width</a></li>
                                    <li><a tabindex="-1" href="cart.jsp">Cart</a></li>
                                    <li><a tabindex="-1" href="login.jsp">Login</a></li>
                                    <li><a tabindex="-1" href="compare.jsp">Compare Products</a></li>
                                    <li><a tabindex="-1" href="typography.jsp">Typography</a></li>
                                    <li><a tabindex="-1" href="register.jsp">Register</a></li>
                                    <li><a tabindex="-1" href="contact.jsp">Contact</a></li>
                                    <li><a tabindex="-1" href="404.jsp">404</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- Nav Links Ends -->
                        <!-- Search Form Starts -->					
                        <form class="navbar-form navbar-right hidden-sm hidden-xs" role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                        <!-- Search Form Ends -->
                    </div>
                    <!-- Navbar Cat collapse Ends -->
                </div>
                <!-- Nested Container Ends -->
            </nav>
            <!-- Main Menu Ends -->
        </header>
        <!-- Header Wrap Ends -->
        <!-- Breadcrumb Starts -->
        <div class="breadcrumb-wrap">
            <div class="container">
                <!-- Breadcrumb Starts -->
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Compare Products</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Main Heading Starts -->
            <h2 class="main-heading text-center">
                Compare Products
            </h2>
            <!-- Main Heading Ends -->
            <!-- Compare Table Starts -->
            <div class="table-responsive compare-table">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td>S.NO</td>
                            <td>Image</td>
                            <td>Product</td>
                            <td>Price</td>
                            <td>Model</td>
                            <td>Brand</td>
                            <td>Availability</td>
                            <td>Rating</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>
                                <img src="images/product-images/thumb1.jpg" alt="image" title="image" class="img-thumbnail" />
                            </td>
                            <td class="name">
                                <a href="product.jsp">Digital Electro Goods</a>
                            </td>							
                            <td>
                                $120.68
                            </td>
                            <td>
                                product 11 
                            </td>
                            <td>
                                Elite 
                            </td>
                            <td>
                                <span class="label label-success">In Stock</span>
                            </td>
                            <td class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                                <img src="images/product-images/thumb2.jpg" alt="image" title="image" class="img-thumbnail" />
                            </td>
                            <td class="name">
                                <a href="product.jsp">Digital Electro Goods</a>
                            </td>							
                            <td>
                                $220.68
                            </td>
                            <td>
                                product 12 
                            </td>
                            <td>
                                Elite 
                            </td>
                            <td>
                                <span class="label label-danger">Out of Stock</span>
                            </td>
                            <td class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>
                                <img src="images/product-images/thumb1.jpg" alt="image" title="image" class="img-thumbnail" />
                            </td>
                            <td class="name">
                                <a href="product.jsp">Digital Electro Goods</a>
                            </td>							
                            <td>
                                $320.68
                            </td>
                            <td>
                                product 13 
                            </td>
                            <td>
                                Elite 
                            </td>
                            <td>
                                <span class="label label-success">In Stock</span>
                            </td>
                            <td class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Compare Table Ends -->
        </div>
        <!-- Main Container Ends -->
        <!-- Footer Section Starts -->
        <footer id="footer-area">
            <!-- Footer Links Starts -->
            <div class="footer-links">
                <!-- Container Starts -->
                <div class="container">
                    <!-- Information Links Starts -->
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <h5>Information</h5>
                        <ul>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="#">Delivery Information</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms &amp; Conditions</a></li>
                        </ul>
                    </div>
                    <!-- Information Links Ends -->
                    <!-- My Account Links Starts -->
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <h5>My Account</h5>
                        <ul>
                            <li><a href="#">My orders</a></li>
                            <li><a href="#">My merchandise returns</a></li>
                            <li><a href="#">My credit slips</a></li>
                            <li><a href="#">My addresses</a></li>
                            <li><a href="#">My personal info</a></li>
                        </ul>
                    </div>
                    <!-- My Account Links Ends -->					
                    <!-- Customer Service Links Starts -->
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <h5>Service</h5>
                        <ul>
                            <li><a href="contact.jsp">Contact Us</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Site Map</a></li>
                            <li><a href="#">Affiliates</a></li>
                            <li><a href="#">Specials</a></li>
                        </ul>
                    </div>
                    <!-- Customer Service Links Ends -->
                    <!-- Follow Us Links Starts -->
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <h5>Follow Us</h5>
                        <ul>
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">RSS</a></li>
                            <li><a href="#">YouTube</a></li>
                        </ul>
                    </div>
                    <!-- Follow Us Links Ends -->
                    <!-- Contact Us Starts -->
                    <div class="col-md-4 col-xs-12 last">
                        <h5>Contact Us</h5>
                        <ul>
                            <li>My Company</li>
                            <li>
                                1247 LB Nagar Road, Hyderabad, Telangana - 35
                            </li>
                            <li>
                                Email: <a href="#">info@demolink.com</a>
                            </li>								
                        </ul>
                        <h4 class="lead">
                            Tel: <span>1(234) 567-9842</span>
                        </h4>
                    </div>
                    <!-- Contact Us Ends -->
                </div>
                <!-- Container Ends -->
            </div>
            <!-- Footer Links Ends -->
            <!-- Copyright Area Starts -->
            <div class="copyright">
                <!-- Container Starts -->
                <div class="container">
                    <!-- Starts -->
                    <p class="pull-left">
                        &copy; 2016 Digi Shoppe. Designed By <a href="http://sainathchillapuram.com">Sainath Chillapuram</a>
                    </p>
                    <!-- Ends -->
                    <!-- Payment Gateway Links Starts -->
                    <ul class="pull-right list-inline">
                        <li>
                            <img src="images/payment-icon/cirrus.png" alt="PaymentGateway" />
                        </li>
                        <li>
                            <img src="images/payment-icon/paypal.png" alt="PaymentGateway" />
                        </li>
                        <li>
                            <img src="images/payment-icon/visa.png" alt="PaymentGateway" />
                        </li>
                        <li>
                            <img src="images/payment-icon/mastercard.png" alt="PaymentGateway" />
                        </li>
                        <li>
                            <img src="images/payment-icon/americanexpress.png" alt="PaymentGateway" />
                        </li>
                    </ul>
                    <!-- Payment Gateway Links Ends -->
                </div>
                <!-- Container Ends -->
            </div>
            <!-- Copyright Area Ends -->
        </footer>
        <!-- Footer Section Ends -->
        <!-- JavaScript Files -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>	
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-hover-dropdown.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>