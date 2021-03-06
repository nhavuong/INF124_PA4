
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
                        <li><a href="form.jsp">Order</a></li>
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
            <section class="wrapper confirmation">                
                <div class="row">     
                    <div class="col-12">
                        <h2>Thank you for your order!</h2>
                        <h6> We've recieved your order, here are the details.</h6>
                        <hr>
                    </div>
                </div> 
                <div class="row body">
                    <div class="col-12">
                        <h3> Delivery Details </h3> 
                    </div>
                    <div class="col-6">
                        <h4> Delivery for </h4>
                        <h5> Customer: <span id="customerName"></span></h5>
                        <h5> Phone Number: <span id="phoneNumber"></span></h5>
                        <h5> Address: <span id="address"></span></h5>
                    </div>     
                    <div class="col-6">
                        <h4> Delivery Method </h4>
                        <h5><span id="method"></span></h5>
                    </div>
                    <div class="col-12">
                        <hr>
                    </div>
                </div>
                <div class="row body">
                    <div class="col-12">
                        <h3> Order Summary </h3> 
                    </div>
                    <div class="col-6">
                        <h4> Item Ordered </h4>
                        <h5> Item: <span id="item"></span></h5>
                        <h5> Price: <span id="price"></span></h5>
                        <h5> Quantity: <span id="quantity"></span></h5>
                    </div>     
                    <div class="col-6">
                        <h4> Receipt Information </h4>
                        <h5> Subtotal: $<span id="subtotal"></span></h5>
                        <h5> Shipping: $<span id="shipping"></span></h5>
                        <h5> Tax: $<span id="tax"></span></h5>
                        <h5> Total: $<span id="total"></span></h5>
                    </div>
                    <div class="col-12">
                        <hr>
                    </div>
                </div> 
                <div class="row body">
                    <div class="col-12">
                        <h3> Payment Information </h3> 
                    </div>
                    <div class="col-6">
                        <h4> Credit Card </h4>
                        <h5> Card Number: <span id="cardNumber"></span></h5>
                        <h5> Expiration Date: <span id="expireDate"></span></h5>
                    </div>     
                    <div class="col-6">
                        <h4> Billing Address </h4>
                        <h5> <span id="billingAddress"></span> </h5>
                    </div>
                </div> 
                <div class="row end">
                    <div class="col-12">
                        <a href="home.html" class="button">Go to Home Page</a>
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
        <script src="js/confirmation.js"></script>

    </body>
</html>
