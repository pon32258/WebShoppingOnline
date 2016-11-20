<%@page import="int303.Model.Order"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
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
                    <li><a href="cart.jsp">Shopping Cart</a></li>
                    <li class="active">Checkout Cart</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Main Heading Starts -->
            <h2 class="main-heading text-center" style="color: red">
                Checkout Successfully
            </h2>
            <h3 class="main-container text-left">
                Your order number is ${orderId}  <br> <br>
                Thank you for purchasing our product <br> <br>
                Your purchased order's detail is on below <br>
            </h3>
            <!-- Main Heading Ends -->
            <!-- Shopping Cart Table Starts -->
            <div class="table-responsive shopping-cart-table">
                <form action="UpdateCart" methos="post">
                    <table class="table table-bordered" style="padding-top: 3%;margin-top: 2%;">
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
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                            <c:when test="${oldCART==null || oldCART.size==0}">
                                <h3 style="color:red;margin-left: 480px">No item in cart ...</h3>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${oldCART.items}" var="it" varStatus="vs">
                                    <tr>
                                        <td class="text-center">
                                            <a href="SearchProduct?target=/product.jsp&searchBy=id&id=${it.value.product.prodId}">
                                                <img src="images/product-images/${it.value.product.prodId}.jpg" alt="Product Name" title="Product Naroduct.prodIdme" class="img-thumbnail" style="width: 200px"/>
                                            </a>
                                        </td>
                                        <td class="text-center">
                                            <a href="SearchProduct?target=/product.jsp&searchBy=id&id=${it.value.product.prodId}">${it.value.product.prodName}</a>
                                        </td>							
                                        <td class="text-center">
                                            <div class="input-group btn-block">
                                                ${it.value.quantity}
                                            </div>								
                                        </td>
                                        <td class="text-center">
                                            $<fmt:formatNumber value="${it.value.product.price}" pattern="#,###.00"/>
                                        </td>
                                        <td class="text-center">
                                            $<fmt:formatNumber value="${it.value.total}" pattern="#,###.00"/>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="4" class="text-right">
                                    <strong>Total :</strong>
                                </td>
                                <td colspan="1" class="text-left">
                                    <fmt:formatNumber value="${oldCART.totalPrice}" pattern="#,###.00"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" class="text-right">
                                    <a href="OrderHistory?customerId=${sessionScope.user.customerId}">
                                    <button type="button" style="font-size: 20px; color: white;" class="btn btn-danger" value="BackToOrdHis" >Back To Order History</button>
                                    </a>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </form>
            </div>
            <!-- Shopping Cart Table Ends -->
            </div>
            <!-- Shipping Section Ends -->
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