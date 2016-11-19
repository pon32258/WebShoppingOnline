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
                                        <a href="SearchProduct?target=/product.jsp&searchBy=id&id=${it.value.product.prodId}">
                                            <img src="images/product-images/${it.value.product.prodId}.jpg" alt="Product Name" title="Product Naroduct.prodIdme" class="img-thumbnail" style="width: 200px"/>
                                        </a>
                                    </td>
                                    <td class="text-center">
                                        <a href="SearchProduct?target=/product.jsp&searchBy=id&id=${it.value.product.prodId}">${it.value.product.prodName}</a>
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
                        <!-- Shipment Information Block Starts -->
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Shipment Information
                                </h3>
                            </div>
                            <div class="panel-body">
                                <!-- Form Starts -->
                                <form class="form-horizontal" role="form" action="ShipmentFee" method="post">
                                    <div class="form-group">
                                        <label for="inputFname" class="col-sm-3 control-label">First Name :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  placeholder="${sessionScope.user.fname}" name="fname" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputLname" class="col-sm-3 control-label">Last Name :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  placeholder="${sessionScope.user.sname}" name="sname" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail" class="col-sm-3 control-label">Email :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  placeholder="${sessionScope.user.email}" name="email" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPhone" class="col-sm-3 control-label">Phone :</label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control"  placeholder="${sessionScope.user.tel}" name="tel" disabled>     
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress1" class="col-sm-3 control-label">Address :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  placeholder="${sessionScope.user.address}" name="address" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputCity" class="col-sm-3 control-label">City :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  placeholder="${sessionScope.user.city}" name="city" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPostCode" class="col-sm-3 control-label">Postal Code :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  placeholder="${sessionScope.user.postcode}" name="postcode" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputShipment" class="col-sm-3 control-label">Shipment :</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" id="inputRegion1" name="shipment">                                                
                                                <option value="1"> EMS </option>
                                                <option value="2"> FedEx </option>
                                                <option value="3"> DHL </option>
                                                <option value="4"> Normal </option>
                                                <option value="5"> Kerry Express </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-3 col-sm-9">
                                            <c:choose>
                                                <c:when test="${sessionScope.user!=null}">
                                                    <a href="editprofile.jsp?target=/cart.jsp">
                                                    <button type="button" class="btn btn-black">
                                                        Edit
                                                    </button>
                                                    </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="Login?target=/cart.jsp">
                                                        <button type="button" class="btn btn-black">
                                                            Edit
                                                        </button>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
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
                        <!-- Total Panel Starts -->
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Payment
                                </h3>
                            </div>

                            <div class="panel-body">
                                <dl class="dl-horizontal">
                                    <table>
                                        <tr><td>Please Select a Payment Method : </td></tr>
                                        <tr><td><select name="paymentMethod">
                                                    <option selected="Select">Select Payment</option>
                                                    <option value="Master">Master</option>
                                                    <option value="Visa">Visa</option>
                                                    <option value="Amearican Express">Amearican Express</option>
                                                    <option value="Paypal">Paypal</option>
                                                </select></td></tr>
                                        <tr><td>Card Number:</td></tr>
                                        <tr><td><input type="text" name="cardnumber" maxlength="13" required</td></tr>
                                        <tr><td>Security Code:</td></tr>
                                        <tr><td><input type="text" name="securitycode"  maxlength="3" required</td></tr>
                                        <tr><td>Expiration date</td></tr>
                                        <tr>
                                            <td><select name="month">
                                                    <option selected="--">--</option>
                                                    <option value="01">01</option>
                                                    <option value="02">02</option>
                                                    <option value="03">03</option>
                                                    <option value="04">04</option>
                                                    <option value="05">05</option>
                                                    <option value="06">06</option>
                                                    <option value="07">07</option>
                                                    <option value="08">08</option>
                                                    <option value="09">09</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>                                      
                                                </select> 
                                                <select name="year">
                                                    <option selected="----">----</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                    <option value="2020">2020</option>
                                                    <option value="2021">2021</option>
                                                    <option value="2022">2022</option>
                                                    <option value="2023">2023</option>
                                                    <option value="2024">2024</option>
                                                    <option value="2025">2025</option>
                                                    <option value="2026">2026</option>
                                                    <option value="2027">2027</option>
                                                    <option value="2028">2028</option>
                                                    <option value="2029">2029</option>
                                                    <option value="2030">2030</option>
                                                    <option value="2031">2031</option>
                                                    <option value="2032">2032</option>
                                                    <option value="2033">2033</option>
                                                    <option value="2034">2034</option>
                                                    <option value="2035">2035</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </dl>
                            </div>
                        </div>   
                        <div class="panel panel-smart">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Total
                                </h3>
                            </div>
                            <div class="panel-body">
                                <dl class="dl-horizontal">
                                    <dt>Total :</dt>
                                    <dd><fmt:formatNumber value="${CART.totalPrice}" pattern="#,###.00"/></dd>
                                    <dt>Shipment Fee :</dt>
                                    <dd>${fee}</dd>
                                </dl>
                                <hr />
                                <dl class="dl-horizontal total">
                                    <dt>Total :</dt>
                                    <dd>${CART.totalPrice+fee}</dd>
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