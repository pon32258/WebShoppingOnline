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
                    <li class="active">Registration</li>
                </ol>
                <!-- Breadcrumb Ends -->		
            </div>
        </div>
        <!-- Breadcrumb Ends -->
        <!-- Main Container Starts -->
        <div class="main-container container">
            <!-- Typography #1 Starts -->
            <div class="row">
                <h3 style="color:${color}">${message}</h3>
                <h1 class="text-uppercase">Register</h1>
                <div class="col-sm-10"  style="border: 1px solid lightgray;padding-bottom: 3%;border-radius:10px ">
                    
                    <form action="Register" method="post" >
                        <div class="col-sm-12">
                    <h3 class="text-justify">Username</h3>
                    <input type="text" class="form-control"  placeholder="Username" name="userid" required>
                    <h3 class="text-justify">Password </h3>
                    <input type="password" class="form-control"  placeholder="Password" name="password" required>
                    <h3 class="text-justify">Email </h3>
                    <input type="email" class="form-control"  placeholder="Email" name="email" required>
                    </div> 
                    <div class="col-sm-6">
                    <h3 class="text-justify">Name</h3>
                    <input type="text" class="form-control"  placeholder="Name" name="fname" required>
                    </div>
                    <div class="col-sm-6">
                    <h3 class="text-justify">Last name</h3>
                    <input type="text" class="form-control"  placeholder="Last name" name="sname" required>
                    </div>
                    <br><br><br><br>
                    
                    <div class="col-sm-12">
                    <h3 class="text-justify">Address</h3>
                    <input type="text" class="form-control"  placeholder="Address" name="address" required> 
                    </div>
                    <div class="col-sm-8">
                    <h3 class="text-justify">City</h3>
                    <input type="text" class="form-control"  placeholder="City" name="city" required>
                    </div>
                    <div class="col-sm-4">
                    <h3 class="text-justify">Post code</h3>
                    <input type="text" class="form-control"  placeholder="Postcode" name="postcode" required>
                    </div>
                    <br><br><br><br>
                    <div class="col-sm-12">
                    <h3 class="text-justify">Tel</h3>
                    <input type="tel" class="form-control"  placeholder="Tel" name="tel"  required>
                    <br><br>                    
                    <button type="submit" class="btn btn-black"value="Submit">Submit</button> <button type="reset" class="btn btn-black">Reset</button> 
                    </div>   
                    </form>
                    <br><br>
                </div>
                <div class="col-sm-3">                   
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