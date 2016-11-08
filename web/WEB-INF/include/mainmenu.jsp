<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Main Menu Starts -->
<nav id="main-menu" class="navbar" role="navigation">
    <!-- Nested Container Starts -->
    <div class="container">
        <!-- Nav Header Starts -->
        <div class="navbar-header">
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-cat-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <!-- Nav Header Ends -->
        <!-- Navbar Cat collapse Starts -->
        <div class="collapse navbar-collapse navbar-cat-collapse">
            <!-- Nav Links Starts -->
            <ul class="nav navbar-nav">
                <li><a href="category-list.jsp">Digital Cameras</a></li>
                <li class="dropdown">
                    <a href="category-list.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10">
                        Sound Devices
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a tabindex="-1" href="#">Music System</a></li>
                        <li><a tabindex="-1" href="#">DTS</a></li>
                        <li><a tabindex="-1" href="#">Home Theater</a></li> 
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="category-list.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10">Televisions </a>
                    <div class="dropdown-menu">
                        <div class="dropdown-inner">
                            <ul class="list-unstyled">
                                <li class="dropdown-header">Sub Category</li>
                                <li><a tabindex="-1" href="#">item 1</a></li>
                                <li><a tabindex="-1" href="#">item 2</a></li>
                                <li><a tabindex="-1" href="#">item 3</a></li>
                            </ul>										
                            <ul class="list-unstyled">
                                <li class="dropdown-header">Sub Category</li>
                                <li><a tabindex="-1" href="#">item 1</a></li>
                                <li><a tabindex="-1" href="#">item 2</a></li>
                                <li><a tabindex="-1" href="#">item 3</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li class="dropdown-header">Sub Category</li>
                                <li><a tabindex="-1" href="#">item 1</a></li>
                                <li><a tabindex="-1" href="#">item 2</a></li>
                                <li><a tabindex="-1" href="#">item 3</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href="category-list.jsp">Computers </a></li>
                <li><a href="category-list.jsp">Washing Machines</a></li>
                <li class="dropdown">
                    <a href="category-list.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10">
                        Pages
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a tabindex="-1" href="index.jsp">Home</a></li>
                        <li><a tabindex="-1" href="about.jsp">About</a></li>
                        <li><a tabindex="-1" href="category-list.jsp">Category List</a></li>
                        <li><a tabindex="-1" href="category-grid.jsp">Category Grid</a></li>
                        <li><a tabindex="-1" href="product.jsp">Product</a></li>
                        <li><a tabindex="-1" href="product-full.jsp">Product Full Width</a></li>
                        <li><a tabindex="-1" href="cart.jsp">Cart</a></li>
                        <li><a tabindex="-1" href="login.jsp">Login</a></li>
                        <li><a tabindex="-1" href="compare.jsp">Compare Products</a></li>
                        <li><a tabindex="-1" href="typography.jsp">Typography</a></li>
                        <li><a tabindex="-1" href="register.jsp">Register</a></li>
                        <li><a tabindex="-1" href="contact.jsp">Contact</a></li>
                        <li><a tabindex="-1" href="404.jsp">404</a></li>
                    </ul>
                </li>
            </ul>
            <!-- Nav Links Ends -->
            <!-- Search Form Starts -->					
            <form class="navbar-form navbar-right hidden-sm hidden-xs" role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <!-- Search Form Ends -->
        </div>
        <!-- Navbar Cat collapse Ends -->
    </div>
    <!-- Nested Container Ends -->
</nav>
<!-- Main Menu Ends -->
