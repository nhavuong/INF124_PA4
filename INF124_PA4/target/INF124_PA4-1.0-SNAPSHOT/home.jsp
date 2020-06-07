
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                        <li><a href="#">Home</a></li>
                        <li><a href="#products">Products</a></li>
                        <li><a href="cart.jsp">Order</a></li>
                        <li><a href="#about-us">About Us</a></li>
                        <li><a href="#contact-us">Contact Us</a></li>
                        <li> <a href="javascript:void(0);" class="nav-icon" onclick="navbar()">
                            <i class="fa fa-bars"></i> </a></li>
                    </ul>
                </div>
            </div>
            <div id="toggle" class="toggle-menu" style="list-style-type:none;">
                <li><a href="#">Home</a></li>
                <li><a href="#products">Products</a></li>
                <li><a href="cart.jsp">Order</a></li>
                <li><a href="#about-us">About Us</a></li>
                <li><a href="#contact-us">Contact Us</a></li>
            </div>
        </nav>
        <!-- BANNER-->
        <section id="banner">
            <div class="inner">
                <h1>WELCOME TO JNAH</h1>
                <h3>Let we make your style</h3>
            </div>
        </section>

        <!-- PRODUCT -->
        <div class="container">   
            <section class="wrapper" id="products">
                <div class="inner">
                    <header class="product-list">
                        <h2>LIST OF PRODUCTS</h2>
                        <h4>Here is your choice</h4>
                    </header>


                    <!-- Product List -->
                    <table align="center" style="text-align: center" border="0px" cellspacing="3px" cellpadding="10px">
                    <%
                        try{
                            String URL = "jdbc:mysql://localhost:3307/jnah_shop";
                            String USER = "root";
                            String PASSWORD = "";

                            Class.forName("com.mysql.jdbc.Driver");

                            Connection dbcon = DriverManager.getConnection(URL, USER, PASSWORD);
                            String query = "select * from cloth";
                            Statement stmt = dbcon.createStatement();
                            ResultSet rs = stmt.executeQuery(query);

                            int cnt=0;

                            while(rs.next())
                            {
                                String i,n,d,img, p, q;
                                i = rs.getString("id").trim();
                                n = rs.getString("name").trim();
                                d = rs.getString("description").trim();
                                img = rs.getString("imgHref").trim();
                                p = rs.getString("price").trim();
                                q = rs.getString("quantity").trim();

                                if(cnt==3)
                                {
                                    out.print("</tr><tr>");
                                    cnt=0;

                                }
                                %>
                                <td><a href="product.jsp?id=<%=i%>"><img src="picture/<%=img%>" height="350" width="300"></a>
                                    <br>
                                    <a href="product.jsp?id=<%=i%>" style="color:#ce4760"><h3><%=n%></h3></a>
                                    <br><%=d%><br>$<%=p%>
                                </td>
                                <%
                                    cnt++;
                            }
                        }
                        catch(Exception e){
                            out.println(e);
                        }
                    %>
                </table>
                </div>
            </section>

            <!-- ABOUT US -->
            <section  id = "about-us">
                <div class="about-us">
                    <div class="row">
                        <div class="col-12 col-s-12">
                            <img src="./picture/about.jpeg">
                        <!-- </div>
                        <div class="col-5 col-s-12"> -->
                            <h2> About us</h2>
                            <p> Established in 2017, one of the newest start-up in leading innovation and creativity, we strive to
                                provide most appealing plus economical instrument for minimalists to express personalities. To
                                provide superior quality, if not best in the country, customers must shop with overall satisfaction
                                and confidant that we meet both end of promises. We promise to stay ahead of fashion trends,
                                market demand, and latest technology to provide extraordinary goods that fit personal needs in
                                this constant changing era.
                            </p>
                       <!--  </div> -->
                    </div>
                </div>
            </section>

            <!-- TEAM -->
            <section>
                <div class="team">
                    <div class="row">
                        <h2> Group 7</h2>
                    </div>

                    <div class="row">
                        <div class="col-3 col-s-6">
                            <div class="profile">
                                <img src="./picture/John.JPG">
                                <div class="info">
                                    <h3> <span style="font-size: 50px;">J</span>onathan Tran</h3>
                                    <h4> Senior Software Engineering </h4>
                                    <h5><i class="fas fa-graduation-cap"></i> 20843397 </h5>
                                    <a href = "mailto: hoangt5@uci.edu"><i class="fas fa-envelope"></i> hoangt5@uci.edu</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 col-s-6">
                            <div class="profile">
                                <img src="./picture/nina.jpg">
                                <div class="info">
                                    <h3> <span style="font-size: 50px;">N</span>ina Vuong</h3>
                                    <h4> Senior Software Engineering </h4>
                                    <h5><i class="fas fa-graduation-cap"></i> 59752042</h5>
                                    <a href = "mailto: nhatv@uci.edu"><i class="fas fa-envelope"></i> nhatv@uci.edu</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 col-s-6">
                            <div class="profile">
                                <img src="./picture/AnhNguyen.jpg">
                                <div class="info">
                                    <h3><span style="font-size: 50px;">A</span>nh Nguyen </h3>
                                    <h4> Senior Software Engineering </h4>
                                    <h5><i class="fas fa-graduation-cap"></i> 49209878 </h5>
                                    <a href = "mailto: anhnn5@uci.edu"><i class="fas fa-envelope"></i> anhnn5@uci.edu</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 col-s-6">
                            <div class="profile">
                                <img src="./picture/IMG_3195.JPG">
                                <div class="info">
                                    <h3><span style="font-size: 50px;">H</span>uy Luong </h3>
                                    <h4> Senior Software Engineering </h4>
                                    <h5><i class="fas fa-graduation-cap"></i> 16558665 </h5>
                                    <a href = "mailto: hnluong1@uci.edu"><i class="fas fa-envelope"></i> hnluong1@uci.edu</a>
                                </div>
                            </div>
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
                        <h5><a href="#products"> Products </a></h5>
                        <h5><a href="#about-us"> About us </a></h5>
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
                <p>Copyright &copy; 2020 All rights reserved | This page is made by JNAH</p>
            </div>
        </footer>

        <!-- JavaScript -->
        <script src="https://kit.fontawesome.com/3a7f96f49f.js" crossorigin="anonymous"></script>
        <script src="js/main.js"></script>

    </body>
</html>

