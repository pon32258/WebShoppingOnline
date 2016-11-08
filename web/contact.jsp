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
                    <li class="active">Contact Us</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Main Heading Starts -->
            <h2 class="main-heading text-center">
                Contact Us
            </h2>
            <!-- Main Heading Ends -->
            <!-- Google Map Starts -->
            <div id="map-wrapper">
                <div id="map-block"></div>
            </div>
            <!-- Google Map Ends -->
            <!-- Starts -->
            <div class="row">
                <!-- Contact Details Starts -->
                <div class="col-sm-4">
                    <div class="panel panel-smart">
                        <div class="panel-heading">
                            <h3 class="panel-title">Contact Details</h3>
                        </div>
                        <div class="panel-body">
                            <ul class="list-unstyled contact-details">
                                <li class="clearfix">
                                    <i class="fa fa-home pull-left"></i>
                                    <span class="pull-left">
                                        My Company <br />
                                        1247 LB Nagar Road, Hyderabad, <br />
                                        Telangana - 500 035
                                    </span>
                                </li>
                                <li class="clearfix">
                                    <i class="fa fa-phone pull-left"></i>
                                    <span class="pull-left">
                                        91 99887 74455 <br />
                                        001 123 974 9856
                                    </span>
                                </li>
                                <li class="clearfix">
                                    <i class="fa fa-envelope-o pull-left"></i>
                                    <span class="pull-left">
                                        info@demolink.com <br />
                                        admin@demolink.com <br />
                                        support@demolink.com
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Contact Details Ends -->
                <!-- Contact Form Starts -->
                <div class="col-sm-8">
                    <div class="panel panel-smart">
                        <div class="panel-heading">
                            <h3 class="panel-title">Send us a mail</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">
                                        Name
                                    </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">
                                        Email
                                    </label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="subject" class="col-sm-2 control-label">
                                        Subject 
                                    </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="message" class="col-sm-2 control-label">
                                        Message
                                    </label>
                                    <div class="col-sm-10">
                                        <textarea name="message" id="message" class="form-control" rows="5" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-black text-uppercase">		Submit
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Contact Form Ends -->
            </div>
            <!-- Ends -->
        </div>
        <!-- Main Container Ends -->
        <jsp:include page="WEB-INF/include/footer.jsp"/>
        <!-- JavaScript Files -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>	
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-hover-dropdown.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3&sensor=false"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/map.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>