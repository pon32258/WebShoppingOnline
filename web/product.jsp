<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <header class="header-wrap inner">
            <jsp:include page="WEB-INF/include/header.jsp"/>
            <jsp:include page="WEB-INF/include/mainmenu.jsp"/>
        </header>
        <!-- Breadcrumb Starts -->
        <div class="breadcrumb-wrap">
            <div class="container">
                <!-- Breadcrumb Starts -->
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="category-list.jsp">Category</a></li>
                    <li class="active">Product</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container inner container">
            <div class="row">		
                <!-- Sidebar Starts -->
                <jsp:include page="WEB-INF/include/brandscate.jsp"/>
                <!-- Sidebar Ends -->
                <!-- Primary Content Starts -->
                <div class="col-md-9">
                    <!-- Product Info Starts -->
                    <div class="row product-info">
                        <!-- Left Starts -->
                        <div class="col-sm-5 images-block">
                            <p>
                                <img src="images/product-images/${product.prodId}.jpg" alt="Image" class="img-responsive thumbnail" />
                            </p>                            
                        </div>
                        <!-- Left Ends -->
                        <!-- Right Starts -->
                        <div class="col-sm-7 product-details">
                            <!-- Product Name Starts -->
                            <h2>${product.prodName}</h2>
                            <!-- Product Name Ends -->
                            <hr />
                            <!-- Manufacturer Starts -->
                            <ul class="list-unstyled manufacturer">
                                <li>
                                    <span>Brand:</span> ${product.brand}
                                </li>
                                <li>
                                    <span>Availability:</span> <strong class="label label-success">In Stock</strong>
                                </li>
                            </ul>
                            <!-- Manufacturer Ends -->
                            <hr />
                            <!-- Price Starts -->
                            <div class="price">
                                <span class="price-head">Price :</span>
                                <span class="price-new">$${product.price}</span> 
                            </div>
                            <!-- Price Ends -->
                            <hr />
                            <!-- Available Options Starts -->
                            <div class="options">
                                <div class="form-group">
                                    <label class="control-label text-uppercase" for="input-quantity">Qty:</label>
                                    <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control" />
                                </div>
                                <div class="cart-button button-group">
                                    <form action="AddToCart" method="post">  
                                        <button type="button" title="Wishlist" class="btn btn-wishlist">
                                            <i class="fa fa-heart"></i>
                                        </button>                                                                              
                                        <input type="hidden" name="pid" value="${p.prodId}">
                                        <input type="hidden" name="target" value="/SearchProduct?target=/category-list.jsp&type=${param.type}&searchBy=${param.searchBy}&word=${param.word}&brand=${param.brand}">
                                        <button type="submit" class="btn btn-cart">
                                            <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> Add to Cart
                                        </button>
                                    </form>   
                                </div>
                            </div>
                            <!-- Available Options Ends -->
                            <hr />
                        </div>
                        <!-- Right Ends -->
                    </div>
                    <!-- product Info Ends -->
                    <!-- Product Description Starts -->
                    <div class="product-info-box">
                        <h4 class="heading">Description</h4>
                        <div class="content panel-smart">
                            <p>
                                ${product.description}
                            </p>                           
                        </div>
                    </div>
                    <!-- Product Description Ends -->
                    <!-- Additional Information Starts -->
                    <div class="product-info-box">
                        <h4 class="heading">Additional Information</h4>
                        <div class="content panel-smart">
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                            </p>
                        </div>
                    </div>
                    <!-- Additional Information Ends -->
                    <!-- Related Products Starts -->
                    <div class="product-info-box">
                        <h4 class="heading">Related Products</h4>
                        <br>
                        <!-- Products Row Starts -->
                        <div class="row">
                            <!-- Product #1 Starts -->
                            <div class="col-md-4 col-sm-6">
                                <div class="product-col">
                                    <div class="image">
                                        <img src="images/product-images/2.jpg" alt="product" class="img-responsive" />
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
                                        <img src="images/product-images/3.jpg" alt="product" class="img-responsive" />
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
                                        <img src="images/product-images/4.jpg" alt="product" class="img-responsive" />
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
                        </div>
                        <!-- Products Row Ends -->
                    </div>
                    <!-- Related Products Ends -->
                </div>
                <!-- Primary Content Ends -->
            </div>
        </div>
        <!-- Main Container Ends -->
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