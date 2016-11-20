<%@page import="java.util.List"%>
<%@page import="int303.Model.Product"%>
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
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Nested Row Starts -->
            <div class="row">
                <!-- Sidebar Starts -->
                <jsp:include page="WEB-INF/include/brandscate.jsp"/>
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
                                    <% List<Product> prods = Product.getLastestProduct();
                                        for(Product p:prods){%>
                                    <div class="item">
                                        <div class="product-col">
                                            <div class="image">
                                                <img src="images/product-images/<%=p.getProdId()%>.jpg" style="width:300px" alt="product" class="img-responsive"/>
                                            </div>
                                            <div class="caption">
                                                <h4><a href="SearchProduct?target=/product.jsp&searchBy=id&id=<%=p.getProdId()%>"><%=p.getProdName()%></a></h4>
                                                <p class="description max-lines">
                                                    <%=p.getDescription()%>
                                                </p>
                                                <div class="price">
                                                    <span class="price-new">$<fmt:formatNumber value="<%=p.getPrice()%>" pattern="#,###.00"/></span> 
                                                </div>
                                                <div class="cart-button button-group">
                                                    <form action="AddToCart" method="post">                                           
                                                        <input type="hidden" name="pid" value="<%=p.getProdId()%>">
                                                        <input type="hidden" name="target" value="/index.jsp">                                                          
                                                        <button type="submit" class="btn btn-cart">
                                                            <i class="fa fa-shopping-cart"></i> 
                                                            Add to cart
                                                        </button>
                                                    </form>                                                  									
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                                    <!-- Product #1 Ends -->                                   
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