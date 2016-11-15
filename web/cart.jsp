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
                        <c:choose>
                            <c:when test="${CART==null || CART.size==0}">
                            <h3 style="color:red;margin-left: 480px">No item in cart ...</h3>
                        </c:when>
                        <c:otherwise>
                            <c:forEach items="${CART.items}" var="it" varStatus="vs">
                                <tr>
                                    <td class="text-center">
                                        <a href="product.jsp">
                                            <img src="images/product-images/${it.value.product.prodId}.jpg" alt="Product Name" title="Product Name" class="img-thumbnail" />
                                        </a>
                                    </td>
                                    <td class="text-center">
                                        <a href="product-full.jsp">${it.value.product.prodName}</a>
                                    </td>							
                                    <td class="text-center">
                                        <div class="input-group btn-block">
                                            <input type="text" name="quantity" value="${it.value.quantity}" size="1" class="form-control" required>
                                        </div>								
                                    </td>
                                    <td class="text-center">
                                        <fmt:formatNumber value="${it.value.product.price}" pattern="#,###.00"/>
                                    </td>
                                    <td class="text-center">
                                        <fmt:formatNumber value="${it.value.total}" pattern="#,###.00"/>
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
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" class="text-right">
                                <strong>Total :</strong>
                            </td>
                            <td colspan="2" class="text-left">
                                <fmt:formatNumber value="${CART.totalPrice}" pattern="#,###.00"/>
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