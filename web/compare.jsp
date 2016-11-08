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