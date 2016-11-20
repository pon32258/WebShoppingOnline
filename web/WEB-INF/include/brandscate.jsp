<%@page import="java.util.List"%>
<%@page import="int303.Model.Product"%>
<%@page import="java.sql.ResultSet"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="css/owl.carousel.css" rel="stylesheet">
<!-- Sidebar Starts -->
<div class="col-md-3" >
    <!-- Categories Links Starts -->
    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Brands</h3>
    <div class="list-group categories">
        <%ResultSet brand = Product.getBrandName("");
            while (brand.next()) {%>
        <a href="SearchProduct?target=/category-list.jsp&orderBy=itemName ASC&searchBy=brand&brand=<%=brand.getString("brandName")%>" class="list-group-item">
            <i class="fa fa-angle-right"></i>
            <%=brand.getString("brandName")%>
        </a>
        <% }%>
    </div>
    <!-- Categories Links Ends -->

    <!-- Bestsellers Links Starts -->

    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Bestsellers</h3>
    <div id="owl-demo" class="owl-carousel" >
        <!-- Item 1 start -->
        <% List<Product> prods = Product.getProductByRating();
            for (Product p : prods) {%>
        <div class="item">
            <div class="product-col">
                <div class="image">
                    <img src="images/product-images/<%=p.getProdId()%>.jpg" alt="product" class="img-responsive" style="width: 300px"/>
                </div>
                <div class="caption">
                    <h4>
                        <a href="product-full.jsp"><%=p.getProdName()%></a>
                    </h4>
                    <div class="description max-lines">
                        <%=p.getDescription()%>
                    </div>
                    <div class="price">
                        <span class="price-new"><fmt:formatNumber pattern="#,###.00" value="<%=p.getPrice()%>"/> </span> 
                    </div>
                    <div class="cart-button button-group">
                        <form action="AddToCart" method="post">                                           
                            <input type="hidden" name="pid" value="<%=p.getProdId()%>">
                            <input type="hidden" name="target" value="/index.jsp">                                                          
                            <button type="submit" class="btn btn-cart">
                                <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                Add to cart
                            </button>
                        </form> 				
                    </div>
                </div>
            </div>
        </div>
        <% }%>
        <!-- Item 1  Ends -->
    </div>
    <!-- Bestsellers Links Ends -->
</div>

<!-- Sidebar Ends -->