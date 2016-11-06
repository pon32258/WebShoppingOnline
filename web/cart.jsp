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
        <!-- Header Wrap Starts -->
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
            <!-- Header Top Ends -->
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
                    <li class="active">Shopping Cart</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Main Heading Starts -->
            <h2 class="main-heading text-center">
                Shopping Cart
            </h2>
            <!-- Main Heading Ends -->
            <!-- Shopping Cart Table Starts -->
            <div class="table-responsive shopping-cart-table">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td class="text-center">
                                Image
                            </td>
                            <td class="text-center">
                                Product Details
                            </td>							
                            <td class="text-center">
                                Quantity
                            </td>
                            <td class="text-center">
                                Price
                            </td>
                            <td class="text-center">
                                Total
                            </td>
                            <td class="text-center">
                                Action
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-center">
                                <a href="product.jsp">
                                    <img src="images/product-images/cart-thumb-img1.jpg" alt="Product Name" title="Product Name" class="img-thumbnail" />
                                </a>
                            </td>
                            <td class="text-center">
                                <a href="product-full.jsp">Digital Electro Goods</a>
                            </td>							
                            <td class="text-center">
                                <div class="input-group btn-block">
                                    <input type="text" name="quantity" value="1" size="1" class="form-control" />
                                </div>								
                            </td>
                            <td class="text-center">
                                $150.00
                            </td>
                            <td class="text-center">
                                $150.00
                            </td>
                            <td class="text-center">
                                <button type="submit" title="Update" class="btn btn-default tool-tip">
                                    <i class="fa fa-refresh"></i>
                                </button>
                                <button type="button" title="Remove" class="btn btn-default tool-tip">
                                    <i class="fa fa-times-circle"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <a href="product.jsp">
                                    <img src="images/product-images/cart-thumb-img2.jpg" alt="Product Name" title="Product Name" class="img-thumbnail" />
                                </a>
                            </td>
                            <td class="text-center">
                                <a href="product-full.jsp">Digital Electro Goods</a>
                            </td>							
                            <td class="text-center">
                                <div class="input-group btn-block">
                                    <input type="text" name="quantity" value="1" size="1" class="form-control" />
                                </div>								
                            </td>
                            <td class="text-center">
                                $150.00
                            </td>
                            <td class="text-center">
                                $150.00
                            </td>
                            <td class="text-center">
                                <button type="submit" title="Update" class="btn btn-default tool-tip">
                                    <i class="fa fa-refresh"></i>
                                </button>
                                <button type="button" title="Remove" class="btn btn-default tool-tip">
                                    <i class="fa fa-times-circle"></i>
                                </button>
                            </td>
                        </tr>						
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" class="text-right">
                                <strong>Total :</strong>
                            </td>
                            <td colspan="2" class="text-left">
                                $300
                            </td>
                        </tr>
                    </tfoot>
                </table>				
            </div>
            <!-- Shopping Cart Table Ends -->
            <!-- Shipping Section Starts -->
            <section class="registration-area">
                <div class="row">
                    <!-- Shipping & Shipment Block Starts -->
                    <div class="col-sm-6">
                        <!-- Taxes Block Starts -->
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Shipping &amp; Taxes
                                </h3>
                            </div>
                            <div class="panel-body">
                                <!-- Form Starts -->
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label for="inputCountry" class="col-sm-3 control-label">Country :</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" id="inputCountry">
                                                <option>- All Countries -</option>
                                                <option>India</option>
                                                <option>USA</option>
                                                <option>UK</option>
                                                <option>China</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputRegion" class="col-sm-3 control-label">Region :</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" id="inputRegion">
                                                <option>- All Regions -</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputZipCode" class="col-sm-3 control-label">Zip Code :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputZipCode" placeholder="Zip Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-3 col-sm-9">
                                            <button type="submit" class="btn btn-default">
                                                Get Info
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <!-- Form Ends -->
                            </div>
                        </div>
                        <!-- Taxes Block Ends -->
                        <!-- Shipment Information Block Starts -->
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Shipment Information
                                </h3>
                            </div>
                            <div class="panel-body">
                                <!-- Form Starts -->
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label for="inputFname" class="col-sm-3 control-label">First Name :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputFname" placeholder="First Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputLname" class="col-sm-3 control-label">Last Name :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputLname" placeholder="Last Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail" class="col-sm-3 control-label">Email :</label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPhone" class="col-sm-3 control-label">Phone :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputPhone" placeholder="Phone">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress1" class="col-sm-3 control-label">Address/1 :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputAddress1" placeholder="Address/1">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress2" class="col-sm-3 control-label">Address/2 :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputAddress2" placeholder="Address/2">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputCity" class="col-sm-3 control-label">City :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputCity" placeholder="City">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPostCode" class="col-sm-3 control-label">Postal Code :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputPostCode" placeholder="Postal Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputCountry" class="col-sm-3 control-label">Country :</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" id="inputCountry1">
                                                <option>- All Countries -</option>
                                                <option>India</option>
                                                <option>USA</option>
                                                <option>UK</option>
                                                <option>China</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputRegion" class="col-sm-3 control-label">Region :</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" id="inputRegion1">
                                                <option>- All Regions -</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-3 col-sm-9">
                                            <button type="submit" class="btn btn-black">
                                                Submit
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <!-- Form Ends -->
                            </div>
                        </div>
                        <!-- Shipment Information Block Ends -->
                    </div>
                    <!-- Shipping & Shipment Block Ends -->
                    <!-- Discount & Conditions Blocks Starts -->
                    <div class="col-sm-6">
                        <!-- Discount Coupon Block Starts -->
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Discount Coupon Code
                                </h3>
                            </div>
                            <div class="panel-body">
                                <!-- Form Starts -->
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label for="inputCouponCode" class="col-sm-3 control-label">Coupon Code :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputCouponCode" placeholder="Coupon Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-3 col-sm-9">
                                            <button type="submit" class="btn btn-default">
                                                Apply Coupon
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <!-- Form Ends -->
                            </div>
                        </div>
                        <!-- Discount Coupon Block Ends -->
                        <!-- Conditions Panel Starts -->
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Terms &amp; Conditions
                                </h3>
                            </div>
                            <div class="panel-body">
                                <p>
                                    HTML Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. 
                                </p>
                                <p>
                                    Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. 
                                </p>
                                <p>
                                    Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat.
                                </p>								
                            </div>
                        </div>
                        <!-- Conditions Panel Ends -->
                        <!-- Total Panel Starts -->
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Total
                                </h3>
                            </div>
                            <div class="panel-body">
                                <dl class="dl-horizontal">
                                    <dt>Coupon Discount :</dt>
                                    <dd>$-25.00</dd>
                                    <dt>Subtotal :</dt>
                                    <dd>$300.00</dd>
                                    <dt>Payment Fee :</dt>
                                    <dd>$10.00</dd>
                                    <dt>Shipment Fee :</dt>
                                    <dd>$15.00</dd>
                                    <dt>Tax Total :</dt>
                                    <dd>$315.00</dd>
                                </dl>
                                <hr />
                                <dl class="dl-horizontal total">
                                    <dt>Total :</dt>
                                    <dd>$325.00</dd>
                                </dl>
                                <hr />
                                <div class="text-uppercase clearfix">
                                    <a href="#" class="btn btn-default pull-left">
                                        <span class="hidden-xs">Continue Shopping</span>
                                        <span class="visible-xs">Continue</span>
                                    </a>
                                    <a href="#" class="btn btn-default pull-right">		
                                        Checkout
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Total Panel Ends -->
                    </div>
                    <!-- Discount & Conditions Blocks Ends -->
                </div>
            </section>
            <!-- Shipping Section Ends -->
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