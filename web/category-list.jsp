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
    <script>

        function changeFunc() {
            var orderBy = document.getElementById('orderBy');
            var selectedValue = orderBy.options[orderBy.selectedIndex].value;
            window.location = 'SearchProduct?target=/category-list.jsp&searchBy=${param.searchBy}&type=${param.type}&'+
                    'brand=${param.brand}&word=${param.word}&orderBy='+selectedValue;
        }

    </script>
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
                    <li class="active">category</li>
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
                    <h2 class="product-head">
                        product category
                    </h2>
                    <!-- Main Heading Ends --> 
                    <!-- Main Heading Starts -->                   
                    <!-- Product Filter Starts -->
                    <div class="product-filter">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="display">
                                    <a href="category-list.jsp" class="active">
                                        <i class="fa fa-th-list" title="List View"></i>
                                    </a>
                                    <a href="category-grid.jsp?searchBy=${param.searchBy}&type=${param.type}&
                                        brand=${param.brand}&word=${param.word}&orderBy=${param.orderBy}">
                                        <i class="fa fa-th" title="Grid View"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4 text-right">
                            </div>
                            <div class="col-md-3 text-right">
                                <select class="form-control" name="orderBy" id="orderBy" onchange="changeFunc()">
                                    <option value="itemName ASC" ${param.orderBy=='itemName ASC'?'selected':''}>Name (A - Z)</option>
                                    <option value="itemName DESC" ${param.orderBy=='itemName DESC'?'selected':''}>Name (Z - A)</option>
                                    <option value="price ASC" ${param.orderBy=='price ASC'?'selected':''}>Price (Min - Max)</option>
                                    <option value="price DESC" ${param.orderBy=='price DESC'?'selected':''}>Price (Max - Min)</option>
                                </select>
                            </div>
                        </div>						 
                    </div>
                    <!-- Product Filter Ends -->
                    <!-- Product List Display Starts -->

                    <div class="row">
                        <c:forEach items="${sessionScope.products}" var="p">
                            <!-- Product #1 Starts -->                     
                            <div class="col-xs-12">


                                <div class="product-col2 list clearfix">
                                    <div class="col-xs-4">
                                        <div class="image">
                                            <img src="images/product-images/${p.prodId}.jpg" alt="product" class="img-responsive" />
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="caption">
                                            <h4><a href="SearchProduct?target=/product.jsp&searchBy=id&id=${p.prodId}">${p.prodName}</a></h4>
                                            <div class="description">
                                                ${p.description}
                                            </div>
                                        </div>
                                        <div class="price">
                                            <span class="price-new">$<fmt:formatNumber value="${p.price}" pattern="#,###.00"/></span>
                                        </div>
                                        <div class="cart-button button-group">                                        
                                            <form action="AddToCart" method="post">                                           
                                                <input type="hidden" name="pid" value="${p.prodId}">
                                                <input type="hidden" name="target" value="/category-list.jsp">                                                          
                                                <button type="submit" class="btn btn-cart">
                                                    <i class="fa fa-shopping-cart"></i> 
                                                    Add to cart
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </c:forEach>
                        <!-- Product #1 Ends -->
                    </div>

                    <!-- Product List Display Ends -->
                    <!-- Pagination & Results Starts -->                    
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