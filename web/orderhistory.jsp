<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <li class="active">Order History</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Typography #1 Starts -->
            <div class="row">
                <h3 style="color:red">${mss}</h3>
                <h1 class="text-uppercase">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Order History</h1>
                <div class="col-sm-1"> </div>
                <div class="col-sm-10"  style="border: 1px solid lightslategray;padding-bottom: 3%;border-radius:10px;background-color: white ">                       
                    <table class="table table-bordered " style="padding-top: 3%;margin-top: 3%;">
                        <thead style="font-size: 24px">
                            <tr>
                                <th>Order No.</th>
                                <th>Date</th>
                                <th>Shipment</th>
                                <th>Total price</th>
                                <th ></th>
                            </tr>
                        </thead>
                        <tbody style="font-size: 20px">
                            <c:forEach items="${orders}" var="o">
                            <input type="hidden" value="${o.orderId}" name="orderId">
                            <input type="hidden" value="${o.orderTotal}" name="orderTotal">
                            <input type="hidden" value="${o.orderTypeName}" name="shipment">
                            <tr>
                                <td>${o.orderId}</td>
                                <td>${o.orderDate}</td>
                                <td>${o.orderTypeName}</td>
                                <td>$<fmt:formatNumber value="${o.orderTotal}" pattern="#,###.00"/></td>
                                <td style="text-align: center">
                                    <a href="OrderDetail?orderId=${o.orderId}&orderTotal=${o.orderTotal}&shipment=${o.orderTypeName}">
                                        <button type="button" style="font-size: 20px" class="btn btn-black" value="GOGOGO">View Order</button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-1">                           
                </div>
            </div>
            <!-- Typography #1 Ends -->	
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