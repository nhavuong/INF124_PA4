TEAM MEMBERS:
- Jonathan Hoang Tran - 20843397
- Nina Nha Vuong - 59752042
- Anh Nguyen - 49209878
- Huy Luong - 16558665


DEPLOYED URL:
project 1: http://circinus-20.ics.uci.edu:8080/project1/INF124/home.html
project 2: RUN LOCALLY 
project 3: RUN LOCALLY
project 4: RUN LOCALLY

========================================================================================================================================================

3 pages: 
- home.jsp: Homepage of the website that contain the List of Products with pictures, About us, Group members
- product.jsp: Product page will contain detail of each product when user click on (Name, description, price, quality, Button "Add to cart")
- cart.jsp: After click add to cart, will be sent to this page to make sure what item you've just added. You can choose between 2 options: Continue to shopping or Check out.
- form.jsp: After user add an item will go to form page for fill out the order form with detail information and card info. 
When user click submit the form (form will check for validation), an email will pop up to send the detail of order. 
- confirmation.jsp: after paying, this page will show again all the detail of your order.

2 files css:
- main.css: this file is applied css for all 3 pages.
- form.css: this file is applied css for form.html

/products{id}(GET): return the json details for single product. url: http://localhost:8080/INF124_PA4/product.jsp?id=2,
 return value: {"id":"2","name":"Blouse","description":"Wide-cut Blouse","imgHref":"blouse.jfif","price":"14.99"}

/cart(POST): will post the quantity of product. Sample input value: {"id":"2","quantity":"2"}. Sample return value:"You've added 2 Blouse to the cart."

/cart/{id}(GET): return the specified order detail. Sample input value: http://localhost:8080/INF124_PA4/cart.jsp?name=Blouse&id=2&quantity=2.
Sample output value: {"id":"2","name":"Blouse","description":"Wide-cut Blouse","imgHref":"blouse.jfif","price":"14.99","quantity":"2"}



picture folder: contain all the pictures of the website with the credit below.

SOURCE PACKAGES:
<productrestservice.db>
- DatabaseConnector.java
- DatabaseUtils.java
<productrestservice.model>
- Product.java
<productrestservice.resource>
- ProductResource.java
<productrestservice.service>
- ProductService.java
========================================================================================================================================================

PHOTO CREDIT:
- banner.png: https://www.duanestreethotel.com/blog/best-places-go-shopping-tribeca/
- about.jpeg: https://www.247hotels.com/on/teamwork-a-hotel-sales-marketing-competitive-advantage/
- blouse.jfif: https://www2.hm.com/en_us/productpage.0768465001.html
- scarf.jfif: https://www2.hm.com/en_us/productpage.0822789004.html
- jacket.jfif: https://www2.hm.com/en_us/productpage.0707777006.html
- dress.jfif: https://www2.hm.com/en_us/productpage.0874675001.html
- hoodie.jfif: https://www2.hm.com/en_us/productpage.0846933018.html
- jean.jfif: https://www2.hm.com/en_us/productpage.0572998001.html
- croptop.jfif: https://www2.hm.com/en_us/productpage.0868166001.html
- skirt.jfif: https://www2.hm.com/en_us/productpage.0884750001.html
- tshirt.jfif: https://www2.hm.com/en_us/productpage.0841260007.html
- sweater.jfif: https://www2.hm.com/en_us/productpage.0794538003.html
- blazer.jfif: https://www2.hm.com/en_us/productpage.0848887002.html
- pant.jfif: https://www2.hm.com/en_us/productpage.0753737017.html


REFERENCES:
- Responsive part in main.css: https://www.w3schools.com/css/tryit.asp?filename=tryresponsive_col-s
- How to use CSS to set style or layout for pages: https://www.w3schools.com/css/default.asp
- Form Validation: https://www.youtube.com/watch?v=rsd4FNGTRBw

