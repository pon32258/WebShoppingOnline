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
        <link href="css/owl.carousel.css" rel="stylesheet">
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
        <header class="header-wrap inner">
        <jsp:include page="WEB-INF/include/header.jsp"/>
        <jsp:include page="WEB-INF/include/mainmenu.jsp"/>
        </header>
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Nested Row Starts -->
            <div class="row">
                <!-- Sidebar Starts -->
                <div class="col-md-3">
                    <!-- Categories Links Starts -->
                    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Categories</h3>
                    <div class="list-group categories">
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-chevron-right"></i>
                            Digital Cameras
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-chevron-right"></i>
                            Sound Devices
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-chevron-right"></i>
                            Televisions
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-chevron-right"></i>
                            Computers
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-chevron-right"></i>
                            Washing Machines
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-chevron-right"></i>
                            Accessories
                        </a>
                        <a href="category-grid.jsp" class="list-group-item">
                            <i class="fa fa-chevron-right"></i>
                            Mobile Phones
                        </a>
                    </div>
                    <!-- Categories Links Ends -->
                    <!-- Special Products Starts -->
                    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Specials</h3>
                    <ul class="side-products-list">
                        <!-- Special Product #1 Starts -->
                        <li class="clearfix">
                            <img src="images/product-images/spl-product-img1.jpg" alt="Special product" class="img-responsive" />
                            <h5><a href="#">Olympus Digital Camera</a></h5>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                        </li>
                        <!-- Special Product #1 Ends -->
                        <!-- Special Product #2 Starts -->
                        <li class="clearfix">
                            <img src="images/product-images/spl-product-img2.jpg" alt="Special product" class="img-responsive" />
                            <h5><a href="#">Olympus Digital Camera</a></h5>
                            <div class="price">
                                <span class="price-new">$599.50</span> 
                            </div>
                        </li>
                        <!-- Special Product #2 Ends -->
                        <!-- Special Product #3 Starts -->
                        <li class="clearfix">
                            <img src="images/product-images/spl-product-img3.jpg" alt="Special product" class="img-responsive" />
                            <h5><a href="#">Olympus Digital Camera</a></h5>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                        </li>
                        <!-- Special Product #3 Ends -->
                    </ul>
                    <!-- Special Products Ends -->
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
                                    <input name="filter3" type="checkbox" value="br3" />
                                    Brand Name 3
                                </label>
                                <label class="checkbox">
                                    <input name="filter4" type="checkbox" value="br4" />
                                    Brand Name 4
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
                            <button type="button" class="btn btn-black">Filter</button>
                        </div>
                    </div>
                    <!-- Shopping Options Ends -->
                    <!-- Banner #1 Starts -->
                    <a href="#"><img src="images/banners/side-banner1.png" alt="Side Banner" class="img-responsive img-center-sm img-center-xs" /></a>
                    <br>
                    <!-- Banner #1 Ends -->
                </div>
                <!-- Sidebar Ends -->		
                <!-- Primary Content Starts -->
                <div class="col-md-9">
                    <!-- 2 Column Banners Starts -->
                    <div class="col2-banners">
                        <ul class="row list-unstyled">
                            <li class="col-sm-8">
                                <img src="images/banners/2col-banner1.png" alt="banners" class="img-responsive" />
                            </li>
                            <li class="col-sm-4">
                                <img src="images/banners/2col-banner2.png" alt="banners" class="img-responsive" />
                            </li>
                        </ul>
                    </div>
                    <!-- 2 Column Banners Ends -->
                    <!-- Latest Products Starts -->
                    <section class="product-carousel">
                        <!-- Heading Starts -->
                        <h2 class="product-head">Latest Products</h2>
                        <!-- Heading Ends -->
                        <!-- Products Row Starts -->
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- Product Carousel Starts -->
                                <div id="owl-product" class="owl-carousel">
                                    <!-- Product #1 Starts -->
                                    <div class="item">
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/1.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <div class="item">
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/2.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <div class="item">	
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/3.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <div class="item">	
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/4.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <div class="item">
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/5.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <div class="item">
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/6.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <!-- Product #7 Starts -->
                                    <div class="item">	
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/7.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <!-- Product #7 Ends -->
                                    <!-- Product #8 Starts -->
                                    <div class="item">	
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/8.jpg" alt="product" class="img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h4><a href="product.jsp">Digital Electro Goods</a></h4>
                                                <p class="description">
                                                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                                                </p>
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
                                    <!-- Product #8 Ends -->
                                </div>
                                <!-- Product Carousel Ends -->
                            </div>
                        </div>
                        <!-- Products Row Ends -->
                    </section>
                    <!-- Latest Products Ends -->
                    <!-- 1 Column Banners Starts -->
                    <div class="col1-banners">
                        <img src="images/banners/1col-banner1.png" alt="banners" class="img-responsive img-center-sm img-center-xs" />
                    </div>
                    <!-- 1 Column Banners Ends -->
                    <!-- Featured Products Starts -->
                    <section class="products-list">			
                        <!-- Heading Starts -->
                        <h2 class="product-head">Featured Products</h2>
                        <!-- Heading Ends -->
                        <!-- Products Row Starts -->
                        <div class="row">
                            <!-- Product #1 Starts -->
                            <div class="col-md-4 col-sm-6">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="images/product-images/9.jpg" alt="product" class="img-responsive img-center-sm img-center-xs" />
                                    </div>
                                    <div class="caption">
                                        <h4>
                                            <a href="product-full.jsp">Digital Electro Goods</a>
                                        </h4>
                                        <p class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </p>
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
                                        <img src="images/product-images/10.jpg" alt="product" class="img-responsive img-center-sm img-center-xs" />
                                    </div>
                                    <div class="caption">
                                        <h4>
                                            <a href="product-full.jsp">Digital Electro Goods</a>
                                        </h4>
                                        <p class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </p>
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
                                        <img src="images/product-images/11.jpg" alt="product" class="img-responsive img-center-sm img-center-xs" />
                                    </div>
                                    <div class="caption">
                                        <h4>
                                            <a href="product-full.jsp">Digital Electro Goods</a>
                                        </h4>
                                        <p class="description">
                                            We are so lucky living in such a wonderful time. Our almost unlimited ...
                                        </p>
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
                        </div>
                        <!-- Products Row Ends -->
                    </section>
                    <!-- Featured Products Ends -->
                </div>
                <!-- Nested Row Ends -->
            </div>
            <!-- Nested Container Ends -->
        </div>
        <!-- Footer Top Ends -->
        <jsp:include page="WEB-INF/include/footer.jsp"/>
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