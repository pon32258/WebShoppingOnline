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
        <link href="css/magnific-popup.css" rel="stylesheet">
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
                    <li><a href="category-grid.jsp">Category</a></li>
                    <li class="active">Product</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container inner container">
            <!-- Product Info Starts -->
            <div class="row product-info full">
                <!-- Left Starts -->
                <div class="col-sm-4 images-block">
                    <a href="images/product-images/big-pimg1.jpg">
                        <img src="images/product-images/pimg3.jpg" alt="Image" class="img-responsive thumbnail" />
                    </a>
                    <ul class="list-unstyled list-inline">
                        <li>
                            <a href="images/product-images/big-pimg2.jpg">
                                <img src="images/product-images/thumb1.jpg" alt="Image" class="img-responsive thumbnail" />
                            </a>
                        </li>
                        <li>
                            <a href="images/product-images/big-pimg3.jpg">
                                <img src="images/product-images/thumb2.jpg" alt="Image" class="img-responsive thumbnail" />
                            </a>
                        </li>
                        <li>
                            <a href="images/product-images/big-pimg4.jpg">
                                <img src="images/product-images/thumb3.jpg" alt="Image" class="img-responsive thumbnail" />
                            </a>
                        </li>
                        <li>
                            <a href="images/product-images/big-pimg4.jpg">
                                <img src="images/product-images/thumb4.jpg" alt="Image" class="img-responsive thumbnail" />
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- Left Ends -->
                <!-- Right Starts -->
                <div class="col-sm-8 product-details">
                    <div class="panel-smart">
                        <!-- Product Name Starts -->
                        <h2>Digital Electro Goods</h2>
                        <!-- Product Name Ends -->
                        <hr />
                        <!-- Manufacturer Starts -->
                        <ul class="list-unstyled manufacturer">
                            <li>
                                <span>Brand:</span> Indian spices
                            </li>
                            <li><span>Model:</span> SKU012452</li>
                            <li><span>Reward Points:</span> 300</li>
                            <li>
                                <span>Availability:</span> <strong class="label label-danger">Out Of Stock</strong>
                            </li>
                        </ul>
                        <!-- Manufacturer Ends -->
                        <hr />
                        <!-- Price Starts -->
                        <div class="price">
                            <span class="price-head">Price :</span>
                            <span class="price-new">$199.50</span> 
                            <span class="price-old">$249.50</span>
                            <p class="price-tax">Ex Tax: $279.99</p>
                        </div>
                        <!-- Price Ends -->
                        <hr />
                        <!-- Available Options Starts -->
                        <div class="options">
                            <h3>Available Options</h3>
                            <div class="form-group">
                                <label for="select" class="control-label text-uppercase">Select:</label>
                                <select name="select" id="select" class="form-control">
                                    <option value="1" selected>Select</option>
                                    <option value="2">Option 1</option>
                                    <option value="3">Option 1</option>
                                </select>
                            </div>	
                            <div class="form-group">
                                <label class="control-label text-uppercase">Radio:</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                        Option one is this and that&mdash;be sure to include why it's great
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                        Option two can be something else and selecting it will deselect option one
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label text-uppercase">Checkbox:</label>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="">
                                        Option one is this and that&mdash;be sure to include why it's great
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="" checked>
                                        Option two is checked
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label text-uppercase" for="input-quantity">Qty:</label>
                                <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control" />
                            </div>
                            <div class="cart-button button-group">
                                <button type="button" title="Wishlist" class="btn btn-wishlist">
                                    <i class="fa fa-heart"></i>
                                </button>
                                <button type="button" title="Compare" class="btn btn-compare">
                                    <i class="fa fa-bar-chart-o"></i>
                                </button>
                                <button type="button" class="btn btn-cart">
                                    <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                    Add to Cart
                                </button>									
                            </div>
                        </div>
                        <!-- Available Options Ends -->
                    </div>
                </div>
                <!-- Right Ends -->
            </div>
            <!-- Product Info Ends -->	
            <!-- Tabs Starts -->
            <div class="tabs-panel panel-smart">
                <!-- Nav Tabs Starts -->
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#tab-description">Description</a>
                    </li>
                    <li>
                        <a href="#tab-specification">Specification</a>
                    </li>
                    <li><a href="#tab-ainfo">Additional Information</a></li>
                    <li><a href="#tab-review">Review</a></li>
                </ul>
                <!-- Nav Tabs Ends -->
                <!-- Tab Content Starts -->
                <div class="tab-content clearfix">
                    <!-- Description Starts -->
                    <div class="tab-pane active" id="tab-description">
                        <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                        </p>
                        <p>
                            It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                        </p>
                    </div>
                    <!-- Description Ends -->
                    <!-- Specification Starts -->
                    <div class="tab-pane" id="tab-specification">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td colspan="2"><strong>Name</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Name</td>
                                    <td>Attribute Specification</td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td colspan="2"><strong>Name</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Name</td>
                                    <td>Attribute Specification</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- Specification Ends -->
                    <!-- Additional Information Starts -->
                    <div class="tab-pane" id="tab-ainfo">
                        <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                        </p>
                    </div>
                    <!-- Additional Information Ends -->
                    <!-- Review Starts -->
                    <div class="tab-pane" id="tab-review">
                        <form class="form-horizontal">
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-name">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-review">Review</label>
                                <div class="col-sm-10">
                                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                    <div class="help-block">
                                        Some note goes here..
                                    </div>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label ratings">Ratings</label>
                                <div class="col-sm-10">
                                    Bad&nbsp;
                                    <input type="radio" name="rating" value="1" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="2" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="3" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="4" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="5" />
                                    &nbsp;Good
                                </div>
                            </div>
                            <div class="buttons">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" id="button-review" class="btn btn-main">
                                        Submit
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Review Ends -->
                </div>
                <!-- Tab Content Ends -->
            </div>
            <!-- Tabs Ends -->		
            <!-- Related Products Starts -->
            <div class="product-info-box">
                <h4 class="heading">Related Products</h4>
                <br>
                <!-- Products Row Starts -->
                <div class="row">
                    <!-- Product #1 Starts -->
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="images/product-images/10.jpg" alt="product" class="img-responsive" />
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
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="images/product-images/11.jpg" alt="product" class="img-responsive" />
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
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="images/product-images/12.jpg" alt="product" class="img-responsive" />
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
                    <div class="col-md-3 col-sm-6">
                        <div class="product-col">
                            <div class="image">
                                <img src="images/product-images/13.jpg" alt="product" class="img-responsive" />
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
                </div>
                <!-- Products Row Ends -->
            </div>
            <!-- Related Products Ends -->
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