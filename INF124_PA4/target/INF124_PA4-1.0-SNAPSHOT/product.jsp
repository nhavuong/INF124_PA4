
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="productrestservice.service.ProductService"%>
<%@page import="productrestservice.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JNAH</title>
        <link rel="stylesheet" href="main.css" />
        <link rel="icon" href="picture/logo-JNAH.PNG">
        <meta http-equiv="Cache-control" content="no-cache">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Building a dynamic website using HTML, JavaScript, and CSS">
        <meta name="author" content="Jonathan Tran, Nina Vuong, Anh Nguyen, Huy Luong">
        
    </head>
    <body>
        <!-- NAVBAR -->
        <nav id="main-nav">
            <div class="row">
                <div class="container">
                    <div class="logo">
                        <a href="home.html"><img src="picture/logo.PNG" alt="logo"></a>
                    </div>

                    <ul class="nav-menu" style="list-style-type:none;" id="navbar">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="home.jsp#products">Products</a></li>
                        <% 
                            List<String> quantityList = new ArrayList<String>();
                            if (session.getAttribute("nameList") != null){
                                quantityList = (List<String>)session.getAttribute("quantityList");
                                int total = 0;
                                for (int i = 0; i < quantityList.size(); i++) {
                                    total += Integer.parseInt(quantityList.get(i));
                                }
                        %>
                        <li><a href="form.jsp">Cart <sup>+<%=total%></sup></a></li>
                        <%    } else {
                        %>
                            <li><a href="form.jsp">Cart</a></li>
                        <%    };
                        %>
                        <li><a href="home.jsp#about-us">About Us</a></li>
                        <li><a href="home.jsp#contact-us">Contact Us</a></li>
                        <li> <a href="javascript:void(0);" class="nav-icon" onclick="navbar()">
                            <i class="fa fa-bars"></i> </a></li>
                    </ul>
                </div>
            </div>
            <div id="toggle" class="toggle-menu" style="list-style-type:none;">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="home.jsp#products">Products</a></li>
                <li><a href="cart.jsp">Order</a></li>
                <li><a href="home.jsp#about-us">About Us</a></li>
                <li><a href="home.jsp#contact-us">Contact Us</a></li>
            </div>
        </nav>
        
        <!-- PRODUCTS DETAIL -->
        <div class="container">
            <section class="wrapper">                
                <div class="row">                    
                    <div class="product">
                        <% 
                            String ss =request.getParameter("id");
                            System.out.println("my value" + ss);
                            Product p = ProductService.getProductById(Integer.parseInt(ss));
                            System.out.println("my product ID " + p.getId());
                            System.out.println("my product name " + p.getName());    
                        %>
                      
                        <div class="grid left" align="left">
                            <img src="picture/<%=p.getImgHref()%>" height="350" width="300" align="left">
                        </div>
                        <div class="grid right" align="right">
                            <h3 style="color:#CE4760"><%=p.getName()%></h3>
                            <h5><%=p.getDescription()%></h5>
                            <h5>$<%=p.getPrice()%></h5>
                            <form action="cart.jsp" method="GET">
                                <input type ="hidden" name ="name" value="<%=p.getName()%>"/>
                                <input type ="hidden" name ="id" value="<%=ss%>"/>
                                <label for="quantity">Quantity</label>
                                <input type ="number" name ="quantity"/>
                                <h4><input style="color:#dddddd; background-color:#d9455f; font-size:20px" type="submit" value="Add to cart" /></h4>
                            </form>
                                 
                        </div>
                    </div>
                </div>                
            </section>
        </div> 
        
        <!-- FOOTER -->
        <footer id="contact-us">
            <div class="row">
                <div class="col-5 col-s-5">
                    <div class="field">
                        <h4> ABOUT US </h4>
                        <p> At JNAH, we never follow the trend, because we'd like to start the trend of the world. We promise to stay ahead of fashion trends,
                            market demand, and latest technology to provide extraordinary goods that fit personal needs in
                            this constant changing era. <i class="fas fa-heart"></i></p>
                    </div>
                </div>
                <div class="col-3 col-s-3">
                    <div class="field">
                        <h4>QUICK LINKS</h4>
                        <h5><a href="home.html#products"> Products </a></h5>
                        <h5><a href="home.html#about-us"> About us </a></h5>
                    </div>
                </div>
                <div class="col-4 col-s-4">
                    <div class="field">
                        <h4> CONTACT US </h4>
                        <h5> <i class="fas fa-door-open"></i> Open Daily: 9am-9pm</h5>
                        <h5> <i class="fas fa-map-marked-alt"></i> 123456 Bison, Irvine, CA 92697</h5>
                        <h5> <i class="fas fa-phone"></i> Phone number: 714-999-9999</h5>
                        <h5> <i class="fas fa-envelope"></i> Email: jnahgroup@gmail.com</h5>
                    </div>
                </div>
            </div>
            <div class="row" style="text-align: center;">
                <p>Copyright © 2020 All rights reserved | This page is made by JNAH</p>
            </div>
        </footer>

        <!-- JAVASCRIPT-->
        <script src="js/main.js"></script>
        <script src="js/product.js"></script>

    </body>
</html>
        
   
