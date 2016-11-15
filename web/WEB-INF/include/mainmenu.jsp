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
                <li><a href="SearchProduct?target=/category-list.jsp&searchBy=type&type=Camera">Digital Cameras</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?target=/category-list.jsp&searchBy=type&type=Sound Device">Sound Devices</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?target=/category-list.jsp&searchBy=type&type=Television">Televisions</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?target=/category-list.jsp&searchBy=type&type=Computer">Computer</a></li>
                <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                <li><a href="SearchProduct?target=/category-list.jsp&searchBy=type&type=Phone">Telephone</a></li>               
            </ul>
            <!-- Nav Links Ends -->
            <!-- Search Form Starts -->					
            <form class="navbar-form navbar-right hidden-sm hidden-xs" role="search" action="SearchProduct" method="post">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="word" value="${param.word}" />
                    <input type="hidden" name="target" value="/category-list.jsp" />
                    <input type="hidden" name="searchBy" value="word" />
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">
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
