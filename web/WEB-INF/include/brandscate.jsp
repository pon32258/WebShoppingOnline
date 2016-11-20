<%@page import="int303.Model.Product"%>
<%@page import="java.sql.ResultSet"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/owl.carousel.css" rel="stylesheet">
<!-- Sidebar Starts -->
                <div class="col-md-3" >
                    <!-- Categories Links Starts -->
                    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Brands</h3>
                    <div class="list-group categories">
                        <%ResultSet brand = Product.getBrandName("");
                          while(brand.next()){ %>
                          <a href="SearchProduct?target=/category-list.jsp&orderBy=itemName ASC&searchBy=brand&brand=<%=brand.getString("brandName")%>" class="list-group-item">
                            <i class="fa fa-angle-right"></i>
                            <%=brand.getString("brandName")%>
                        </a>
                        <% } %>
                    </div>
                    <!-- Categories Links Ends -->
                    
                    <!-- Bestsellers Links Starts -->
                    
                    <h3 class="side-heading"><i class="fa fa-align-justify"></i> Bestsellers</h3>
                    <div id="owl-demo" class="owl-carousel" >
                        <!-- Item 1 start -->
                        <div class="item">
                    <div class="product-col">
                        <div class="image">
                            <img src="images/product-images/pimg1.jpg" alt="product" class="img-responsive" />
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="product-full.jsp">Item 1</a>
                            </h4>
                            <div class="description">
                                We are so lucky living in such a wonderful time. Our almost unlimited ...
                            </div>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                            <div class="cart-button button-group">
                                <button type="button" class="btn btn-cart">
                                    <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                    Add to Cart
                                </button>					
                            </div>
                        </div>
                    </div>
                            </div>
                        <!-- Item 1  Ends -->
                        <!-- Item 2 start -->
                        <div class="item">
                    <div class="product-col">
                        <div class="image">
                            <img src="images/product-images/pimg1.jpg" alt="product" class="img-responsive" />
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="product-full.jsp">Item 2</a>
                            </h4>
                            <div class="description">
                                We are so lucky living in such a wonderful time. Our almost unlimited ...
                            </div>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                            <div class="cart-button button-group">
                                <button type="button" class="btn btn-cart">
                                    <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                    Add to Cart
                                </button>					
                            </div>
                        </div>
                    </div>
                            </div>
                        <!-- Item 2  Ends -->
                        <!-- Item 3 start -->
                        <div class="item">
                    <div class="product-col">
                        <div class="image">
                            <img src="images/product-images/pimg1.jpg" alt="product" class="img-responsive" />
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="product-full.jsp">Item 3</a>
                            </h4>
                            <div class="description">
                                We are so lucky living in such a wonderful time. Our almost unlimited ...
                            </div>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                            <div class="cart-button button-group">
                                <button type="button" class="btn btn-cart">
                                    <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                    Add to Cart
                                </button>					
                            </div>
                        </div>
                    </div>
                            </div>
                        <!-- Item 3  Ends -->
                        <!-- Item 4 start -->
                        <div class="item">
                    <div class="product-col">
                        <div class="image">
                            <img src="images/product-images/pimg1.jpg" alt="product" class="img-responsive" />
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="product-full.jsp">Item 4</a>
                            </h4>
                            <div class="description">
                                We are so lucky living in such a wonderful time. Our almost unlimited ...
                            </div>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                            <div class="cart-button button-group">
                                <button type="button" class="btn btn-cart">
                                    <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                    Add to Cart
                                </button>					
                            </div>
                        </div>
                    </div>
                            </div>
                        <!-- Item 4  Ends -->
                        <!-- Item 5 start -->
                        <div class="item">
                    <div class="product-col">
                        <div class="image">
                            <img src="images/product-images/pimg1.jpg" alt="product" class="img-responsive" />
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="product-full.jsp">Item 5</a>
                            </h4>
                            <div class="description">
                                We are so lucky living in such a wonderful time. Our almost unlimited ...
                            </div>
                            <div class="price">
                                <span class="price-new">$199.50</span> 
                                <span class="price-old">$249.50</span>
                            </div>
                            <div class="cart-button button-group">
                                <button type="button" class="btn btn-cart">
                                    <i class="fa fa-shopping-cart hidden-sm hidden-xs"></i> 
                                    Add to Cart
                                </button>					
                            </div>
                        </div>
                    </div>
                            </div>
                        <!-- Item 5  Ends -->
                            </div>
                    <!-- Bestsellers Links Ends -->
                </div>
                    
                <!-- Sidebar Ends -->