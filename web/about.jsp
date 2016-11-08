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
                    <li class="active">About Us</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container container inner">
            <div class="row">		
                <!-- Sidebar Starts -->
                <jsp:include page="WEB-INF/include/brandscate.jsp"/>
                <!-- Sidebar Ends -->
                <!-- Primary Content Starts -->
                <div class="col-md-9">
                    <!-- About Content Starts -->
                    <div class="page-box">
                        <div class="row">
                            <div class="col-sm-4">
                                <img src="images/misc/about-image1.jpg" alt="image" class="img-responsive" />
                            </div>
                            <div class="col-sm-8">
                                <h3>Joe Doejuli</h3>
                                <h4>Manager</h4>
                                <ul class="list-unstyled list-inline sm-links">
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                                <p>
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software.
                                </p>
                            </div>
                        </div>
                        <br />
                        <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including  versions of Lorem Ipsum.
                        </p>
                    </div>					
                    <!-- About Content Ends -->
                    <hr />
                    <!-- Testimonials Starts -->
                    <h2 class="sub-heading text-center">
                        Testimonials
                    </h2>
                    <!-- Testimonial #1 Starts -->
                    <div class="media panel-smart">
                        <img src="images/testimonial-images/image1.jpg" alt="image" class="img-responsive pull-left" />
                        <div class="media-body">
                            <blockquote>
                                <p>
                                    " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                                </p>
                                <footer>
                                    Tim Barkley, <cite>Manager</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                    <!-- Testimonial #1 Ends -->
                    <!-- Testimonial #2 Starts -->
                    <div class="media panel-smart">
                        <img src="images/testimonial-images/image2.jpg" alt="image" class="img-responsive pull-left" />
                        <div class="media-body">
                            <blockquote>
                                <p>
                                    " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                                </p>
                                <footer>
                                    Lisa Whistler, <cite>Consultant</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                    <!-- Testimonial #2 Ends -->
                    <!-- Testimonial #3 Starts -->
                    <div class="media panel-smart">
                        <img src="images/testimonial-images/image3.jpg" alt="image" class="img-responsive pull-left" />
                        <div class="media-body">
                            <blockquote>
                                <p>
                                    " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                                </p>
                                <footer>
                                    John Anderson, <cite>Designer</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                    <!-- Testimonial #3 Ends -->
                    <!-- Testimonials Ends -->
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