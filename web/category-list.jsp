<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <jsp:include page="WEB-INF/include/brandscate.jsp"/>
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
                                    <a href="category-list.jsp" class="active">
                                        <i class="fa fa-th-list" title="List View"></i>
                                    </a>
                                    <a href="category-grid.jsp">
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
                                <label class="control-label">Show</label>
                            </div>
                            <div class="col-md-2 text-right">
                                <select class="form-control">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3" selected="selected">3</option>
                                </select>
                            </div>
                        </div>						 
                    </div>
                    <!-- Product Filter Ends -->
                    <!-- Product List Display Starts -->

                    <div class="row">
                        <c:forEach items="${products}" var="p">
                            <!-- Product #1 Starts -->                     
                            <div class="col-xs-12">
                                <div class="product-col list clearfix">
                                    <div class="image">
                                        <img src="images/product-images/${p.prodId}.jpg" alt="product" class="img-responsive" />
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product-full.html">${p.prodName}</a></h4>
                                        <div class="description">
                                            ${p.description}
                                        </div>
                                        <div class="price">
                                            <span class="price-new">${p.price}</span> 
                                        </div>
                                        <div class="cart-button button-group">
                                            <button type="button" class="btn btn-cart">
                                                Add to cart
                                                <i class="fa fa-shopping-cart"></i> 
                                            </button>									
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </c:forEach>
                        <!-- Product #1 Ends -->
                    </div>

                    <!-- Product List Display Ends -->
                    <!-- Pagination & Results Starts -->
                    <div class="row">
                        <!-- Pagination Starts -->
                        <div class="col-sm-6 pagination-block">
                            <ul class="pagination">
                                <li><a href="#">&laquo;</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul>
                        </div>
                        <!-- Pagination Ends -->
                        <!-- Results Starts -->
                        <div class="col-sm-6 results">
                            Showing 1 to 3 of 12 (4 Pages)
                        </div>
                        <!-- Results Ends -->
                    </div>
                    <!-- Pagination & Results Ends -->
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