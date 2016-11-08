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
                    <li class="active">Spices &amp; Herbs</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container inner container">
            <div class="row">		
                <!-- Sidebar Starts -->
                <div class="col-md-3">
                    <!-- Categories Links Starts -->
                    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Categories</h3>
                    <div class="list-group categories">
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Stock &amp; Multipots
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Dutch Ovens &amp; Braisers
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Ovenware
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Roasters
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Tea Kettles
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Outdoor Cookware
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Specialty Cookware
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            International Cookware
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            Pot Racks
                        </a>
                    </div>
                    <!-- Categories Links Ends -->
                    <!-- Shopping Options Starts -->
                    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Shopping Options</h3>
                    <div class="list-group">
                        <div class="list-group-item">
                            Brands
                        </div>
                        <div class="list-group-item">
                            <div class="filter-group">
                                <label class="checkbox">
                                    <input name="filter1" type="checkbox" value="br1" checked="checked" />
                                    Brand Name 1
                                </label>
                                <label class="checkbox">
                                    <input name="filter2" type="checkbox" value="br2" />
                                    Brand Name 2
                                </label>
                                <label class="checkbox">
                                    <input name="filter2" type="checkbox" value="br2" />
                                    Brand Name 3
                                </label>
                            </div>
                        </div>
                        <div class="list-group-item">
                            Manufacturer
                        </div>
                        <div class="list-group-item">
                            <div class="filter-group">
                                <label class="radio">
                                    <input name="filter-manuf" type="radio" value="mr1" checked="checked" />
                                    Manufacturer Name 1
                                </label>
                                <label class="radio">
                                    <input name="filter-manuf" type="radio" value="mr2" />
                                    Manufacturer Name 2
                                </label>
                                <label class="radio">
                                    <input name="filter-manuf" type="radio" value="mr3" />
                                    Manufacturer Name 3
                                </label>
                            </div>							
                        </div>	
                        <div class="list-group-item">
                            <button type="button" class="btn btn-main">Filter</button>
                        </div>
                    </div>
                    <!-- Shopping Options Ends -->
                    <!-- Bestsellers Links Starts -->
                    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Bestsellers</h3>
                    <div class="product-col">
                        <div class="image">
                            <img src="images/product-images/pimg1.jpg" alt="product" class="img-responsive" />
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="product-full.jsp">Digital Electro Goods</a>
                            </h4>
                            <div class="description">
                                We are so lucky living in such a wonderful time. Our almost unlimited ...
                            </div>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                            <div class="cart-button button-group">
                                <button type="button" class="btn btn-cart">
                                    <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                    Add to Cart
                                </button>						
                            </div>
                        </div>
                    </div>
                    <!-- Bestsellers Links Ends -->
                </div>
                <!-- Sidebar Ends -->
                <!-- Primary Content Starts -->
                <div class="col-md-9">
                    <!-- Main Heading Starts -->
                    <h2 class="main-heading2 inner">
                        Spices &amp; Herbs
                    </h2>
                    <!-- Main Heading Ends -->
                    <!-- Category Intro Content Starts -->
                    <div class="row cat-intro">
                        <div class="col-sm-3">
                            <img src="images/misc/cat-thumb-img1.jpg" alt="Image" class="img-responsive img-thumbnail" />
                        </div>
                        <div class="col-sm-9 cat-body">
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                            </p>
                            <p>
                                It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                            </p>
                        </div>
                    </div>					
                    <!-- Category Intro Content Ends -->
                    <!-- Product Filter Starts -->
                    <div class="product-filter">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="display">
                                    <a href="category-list.jsp">
                                        <i class="fa fa-th-list" title="List View"></i>
                                    </a>
                                    <a href="category-grid.jsp" class="active">
                                        <i class="fa fa-th" title="Grid View"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-2 text-right">
                                <label class="control-label">Sort</label>
                            </div>
                            <div class="col-md-3 text-right">
                                <select class="form-control">
                                    <option value="default" selected="selected">Default</option>
                                    <option value="NAZ">Name (A - Z)</option>
                                    <option value="NZA">Name (Z - A)</option>
                                </select>
                            </div>
                            <div class="col-md-1 text-right">
                                <label class="control-label" for="input-limit">Show</label>
                            </div>
                            <div class="col-md-2 text-right">
                                <select id="input-limit" class="form-control">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3" selected="selected">3</option>
                                </select>
                            </div>
                        </div>						 
                    </div>
                    <!-- Product Filter Ends -->
                    <!-- Product Grid Display Starts -->
                    <div class="row">
                        <!-- Product #1 Starts -->
                        <div class="col-md-4 col-sm-6">
                            <div class="product-col">
                                <div class="image">
                                    <img src="images/product-images/15.jpg" alt="product" class="img-responsive" />
                                </div>
                                <div class="caption">
                                    <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                    <div class="description">
                                        We are so lucky living in such a wonderful time. Our almost unlimited ...
                                    </div>
                                    <div class="price">
                                        <span class="price-new">$199.50</span> 
                                        <span class="price-old">$249.50</span>
                                    </div>
                                    <div class="cart-button button-group">
                                        <button type="button" class="btn btn-cart">
                                            <i class="fa fa-shopping-cart"></i> 
                                            Add to cart
                                        </button>
                                        <button type="button" title="Wishlist" class="btn btn-wishlist">
                                            <i class="fa fa-heart"></i>
                                        </button>
                                        <button type="button" title="Compare" class="btn btn-compare">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </button>									
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Product #1 Ends -->
                        <!-- Product #2 Starts -->
                        <div class="col-md-4 col-sm-6">
                            <div class="product-col">
                                <div class="image">
                                    <img src="images/product-images/14.jpg" alt="product" class="img-responsive" />
                                </div>
                                <div class="caption">
                                    <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                    <div class="description">
                                        We are so lucky living in such a wonderful time. Our almost unlimited ...
                                    </div>
                                    <div class="price">
                                        <span class="price-new">$199.50</span> 
                                        <span class="price-old">$249.50</span>
                                    </div>
                                    <div class="cart-button button-group">
                                        <button type="button" class="btn btn-cart">
                                            <i class="fa fa-shopping-cart"></i> 
                                            Add to cart
                                        </button>
                                        <button type="button" title="Wishlist" class="btn btn-wishlist">
                                            <i class="fa fa-heart"></i>
                                        </button>
                                        <button type="button" title="Compare" class="btn btn-compare">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </button>									
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Product #2 Ends -->
                        <!-- Product #3 Starts -->
                        <div class="col-md-4 col-sm-6">
                            <div class="product-col">
                                <div class="image">
                                    <img src="images/product-images/5.jpg" alt="product" class="img-responsive" />
                                </div>
                                <div class="caption">
                                    <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                    <div class="description">
                                        We are so lucky living in such a wonderful time. Our almost unlimited ...
                                    </div>
                                    <div class="price">
                                        <span class="price-new">$199.50</span> 
                                        <span class="price-old">$249.50</span>
                                    </div>
                                    <div class="cart-button button-group">
                                        <button type="button" class="btn btn-cart">
                                            <i class="fa fa-shopping-cart"></i> 
                                            Add to cart
                                        </button>
                                        <button type="button" title="Wishlist" class="btn btn-wishlist">
                                            <i class="fa fa-heart"></i>
                                        </button>
                                        <button type="button" title="Compare" class="btn btn-compare">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </button>									
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Product #3 Ends -->
                        <!-- Product #4 Starts -->
                        <div class="col-md-4 col-sm-6">
                            <div class="product-col">
                                <div class="image">
                                    <img src="images/product-images/6.jpg" alt="product" class="img-responsive" />
                                </div>
                                <div class="caption">
                                    <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                    <div class="description">
                                        We are so lucky living in such a wonderful time. Our almost unlimited ...
                                    </div>
                                    <div class="price">
                                        <span class="price-new">$199.50</span> 
                                        <span class="price-old">$249.50</span>
                                    </div>
                                    <div class="cart-button button-group">
                                        <button type="button" class="btn btn-cart">
                                            <i class="fa fa-shopping-cart"></i> 
                                            Add to cart
                                        </button>
                                        <button type="button" title="Wishlist" class="btn btn-wishlist">
                                            <i class="fa fa-heart"></i>
                                        </button>
                                        <button type="button" title="Compare" class="btn btn-compare">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </button>									
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Product #4 Ends -->
                        <!-- Product #5 Starts -->
                        <div class="col-md-4 col-sm-6">
                            <div class="product-col">
                                <div class="image">
                                    <img src="images/product-images/7.jpg" alt="product" class="img-responsive" />
                                </div>
                                <div class="caption">
                                    <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                    <div class="description">
                                        We are so lucky living in such a wonderful time. Our almost unlimited ...
                                    </div>
                                    <div class="price">
                                        <span class="price-new">$199.50</span> 
                                        <span class="price-old">$249.50</span>
                                    </div>
                                    <div class="cart-button button-group">
                                        <button type="button" class="btn btn-cart">
                                            <i class="fa fa-shopping-cart"></i> 
                                            Add to cart
                                        </button>
                                        <button type="button" title="Wishlist" class="btn btn-wishlist">
                                            <i class="fa fa-heart"></i>
                                        </button>
                                        <button type="button" title="Compare" class="btn btn-compare">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </button>									
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Product #5 Ends -->
                        <!-- Product #6 Starts -->
                        <div class="col-md-4 col-sm-6">
                            <div class="product-col">
                                <div class="image">
                                    <img src="images/product-images/8.jpg" alt="product" class="img-responsive" />
                                </div>
                                <div class="caption">
                                    <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                    <div class="description">
                                        We are so lucky living in such a wonderful time. Our almost unlimited ...
                                    </div>
                                    <div class="price">
                                        <span class="price-new">$199.50</span> 
                                        <span class="price-old">$249.50</span>
                                    </div>
                                    <div class="cart-button button-group">
                                        <button type="button" class="btn btn-cart">
                                            <i class="fa fa-shopping-cart"></i> 
                                            Add to cart
                                        </button>
                                        <button type="button" title="Wishlist" class="btn btn-wishlist">
                                            <i class="fa fa-heart"></i>
                                        </button>
                                        <button type="button" title="Compare" class="btn btn-compare">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </button>									
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Product #6 Ends -->
                    </div>
                    <!-- Product Grid Display Ends -->
                </div>
                <!-- Primary Content Ends -->
            </div>
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