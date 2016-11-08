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
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?searchText=Camera">Digital Cameras</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?searchText=SoundDevice">Sound Devices</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?searchText=Television">Televisions</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?searchText=Computer">Computer</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?searchText=Telephone">Telephone</a></li>               
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
