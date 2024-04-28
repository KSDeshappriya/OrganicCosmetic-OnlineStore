<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, product.product, product.DBConnection" %>
<!DOCTYPE HTML>
<!--

	Free for personal and commercial use under the CCA 3.0 license 
-->
<html>
	<head>
		<title>Cart</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="./main.css" />
		
	</head>
	<body class="no-sidebar is-preload">
            

    
    
		<div id="page-wrapper">

			
			<!-- Header -->
            <section id="header" class="wrapper">

                <!-- Logo -->
                    <div id="logo">
                        <h1><a href="">Checkout</a></h1>
                        <p>A free responsive site template by HTML UP</p>
                    </div>

                <!-- Nav -->
                    <nav id="nav">
                        <ul>
                            <li><a href="Buyer/product/home.jsp">Home</a></li>
                                 
                            <li><a href="Buyer/product/productlist.jsp">Products</a></li>
                             
                            <li>
                                <a href="#">Category</a>
                                <ul>
                                    <li><a href="#">Category 1</a></li>
                                    <li><a href="#">Category 2</a></li>
                                    <li><a href="#">Category 3</a></li>
                                    <li>
                                        <a href="#">Sed consequat</a>
                                        <ul>
                                            <li><a href="#">Lorem dolor</a></li>
                                            <li><a href="#">Amet consequat</a></li>
                                            <li><a href="#">Magna phasellus</a></li>
                                            <li><a href="#">Etiam nisl</a></li>
                                            <li><a href="#">Sed feugiat</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Category 4</a></li>
                                </ul>
                            </li>
        <!-- 				<li><a href="left-sidebar.html">Left Sidebar</a></li>		-->
                        <li><a href="Buyer/product/contactus.jsp">Contact Us</a></li>		
                        <li><a href="Buyer/product/aboutus.jsp">About Us</a></li>	
                        <li><a href="Buyer/product/article.jsp">Article</a></li>				
                        <li><a href="" style="display: none;">Empty Space</a></li>			
                        <li><a class="current" href="../../CartServlet?action=view"><img src="images/cart2.png">Cart</a></li>
                        <li><a href="../../Admin/auth/login.jsp"><img src="images/user2.png">Login</a></li>
        <!-- 				<li><a href="no-sidebar.html">No Sidebar</a></li>			-->
                        </ul>
                    </nav>

            </section>

				

			

			<!-- Main -->
				<section id="main" class="wrapper style3">
					<div class="title">Checkout</div>
					

						<!-- Features -->
							<section id="features">
                                                           
                                                             
                                                            
                                                            <form action="checkout" method="post">
                                                                 <div class="feature-list">
                                                               <h1>Customer Details</h1>
                                                               <div class="row">
                                                                    
                                                                    
                                                                        <label for="name">Name:</label></td>
                                                                        <input type="text" id="name" name="name" required>
                                                                        <label for="address">Address:</label>
                                                                        <textarea id="address" name="address" required></textarea>
                                                                         <label for="Payment">Payment Method:</label>
                                                                             <div class="payment-options">
                                                                                          <select name="Payment" id="Payment">
                                                                          <option value="lod" >Select Payment Method </option>
                                                                          <option value="cod">Cash on Delivery</option>
                                                                          <option value="opel">Credit Card</option>
                                                                          <option value="PayPal">PayPal</option>
                                                                        </select>            
                                                                                  </div> <br>
                                                                    </div></div>
								<div class="feature-list">
									<div class="row">
                                                            
                                                        <table>
                                                                    <tr>
                                                                        <th><h2>Product ID<h2></th>
                                                                        <th><h2>Image<h2></th>
                                                                        <th><h2>Product Name<h2></th>
                                                                        <th><h2>Price<h2></th>
                                                                        <th><h2>Quantity<h2></th>
                                                                    </tr>
                                                              <div class="col-6 col-12-medium">
                                                                 
                                                                  <c:forEach items="${cartProducts}" var="product">
                                                                      
                                                                                   <tr>     
                                                                                                <td style="vertical-align: middle"><p> ${product.getId()} </p></td>
											                                                	<td style="vertical-align: middle"><p><img class="image" src=" ${product.getImage()}" style="width:20%"> </p></td>
                                                                                                <td style="vertical-align: middle"><p> ${product.getName()} </p></td>
                                                                                                <td style="vertical-align: middle"><p>$. ${product.getPrice()} </p></td>
                                                                                                <td style="vertical-align: middle"><p>$. ${product.getQty()}</p></td>
																							</tr>
                                                                                
                                                                        </c:forEach> 
                                                                                                                                                                                                                                                                                        <td style="vertical-align: middle"><p>$. ${product.getPrice()} </p></td>
                                                                                                <td style="vertical-align: middle"><p>Total</p></td>

                                                                                  
                                                              </div>             
                                                          </table>
                                                                                    
                                                      
                                       
									</div>
								</div>
                                                                
       

          
                                                                
								<ul class="actions special">
									<li><a href="Buyer/product/productlist.jsp" class="button style1 large">GO Back</a></li>
									<li><a href="#" class="button style2 large">Conform Order</a></li>
								</ul>
							</form>
                                                        </section>

					</div>
				</section>

		

			

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>