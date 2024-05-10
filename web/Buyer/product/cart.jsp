<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, product.product, product.DBConnection" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Objects" %>

<%
    String username = (session != null) ? (String) session.getAttribute("name") : null;
%>
<!DOCTYPE HTML>
<!--

	Free for personal and commercial use under the CCA 3.0 license 
-->
<html>
	<head>
		<title>Cart</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="Buyer/product/assets/css/main.css" />
		
	</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
						<div id="logo">
							<h1><a href="">Cart</a></h1>
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
							<% if (username == null) { %>
                                                            <!-- Show login button if user is not logged in -->
                                                            <li><a href="../../Admin/auth/login.jsp"><img src="images/user2.png">Login</a></li>
                                                        <% } else { %>
                                                            <!-- Show username if user is logged in -->
                                                            <li><a><%= username %></a></li>
                                                        <% } %>
                                                        <li><a href="Logout"><img src="images/user2.png">Logout</a></li>		-->
							</ul>
						</nav>

				</section>

			

			<!-- Main -->
				<section id="main" class="wrapper style3">
					<div class="title">Cart</div>
					

						<!-- Features -->
							<section id="features">
								<header class="style1">
									<h2>Dolor consequat feugiat amet veroeros</h2>
									<p>Feugiat dolor nullam orci pretium phasellus justo</p>
								</header>
                                                            
                                                           
								<div class="feature-list">
									<div class="row">
                                                        <%
                                                            List<product> products = (List<product>) request.getAttribute("products");
                                                            if (products != null) {
                                                                System.out.println("Products in cart: " + products.size());
                                                            } else {
                                                                System.out.println("No products in cart");
                                                            }
                                                        %>      
                                                        <table>
                                                                    <tr>
                                                                        <th><h2>Product ID<h2></th>
                                                                        <th><h2>Image<h2></th>
                                                                        <th><h2>Product Name<h2></th>
                                                                        <th><h2>category<h2></th>
                                                                        
                                                                        <th><h2>product_description<h2></th>
                                                                        <th><h2>Price<h2></th>
                                                                        <th><h2>Quantity<h2></th>
                                                                    </tr>
                                                              <div class="col-6 col-12-medium">
                                                                 
                                                                  <c:forEach items="${products}" var="product">
                                                                      
                                                                                   <tr>     
                                                                                                <td style="vertical-align: middle"><p> ${product.getId()} </p></td>
																								<td style="vertical-align: middle"><p><img class="image" src=" ${product.getImage()}" style="width:50%"> </p></td>
                                                                                                <td style="vertical-align: middle"><p> ${product.getName()} </p></td>
                                                                                                <td style="vertical-align: middle"><p> ${product.getCategory()} </p></td>
                                                                                                <td style="vertical-align: middle"><p> ${product.getDescription()} </p></td>
                                                                                                <td style="vertical-align: middle"><p>$. ${product.getPrice()} </p></td>
																								<td style="vertical-align: middle"><input style="height: 30px; width:5px;" class="button style2 " name="qty" type="number" max="5" min="1"></td>
																							</tr>
                                                                                
                                                                        </c:forEach> 
                                                                                  
                                                              </div>             
                                                          </table>
                                                                                    
                                                      
                                       
									</div>
								</div>
								<ul class="actions special">
									<li><a href="Buyer/product/productlist.jsp" class="button style1 large">GO Back</a></li>
									<li><a href="CheckoutServlet" class="button style2 large">Checkout Now</a></li>
								</ul>
							
                                                        </section>

					</div>
				</section>

		

			<!-- Footer -->
				<section id="footer" class="wrapper">
					<div class="title">The Rest Of It</div>
					<div class="container">
						<header class="style1">
							<h2>Ipsum sapien elementum portitor?</h2>
							<p>
								Sed turpis tortor, tincidunt sed ornare in metus porttitor mollis nunc in aliquet.<br />
								Nam pharetra laoreet imperdiet volutpat etiam feugiat.
							</p>
						</header>
						<div class="row">
							<div class="col-6 col-12-medium">

								<!-- Contact Form -->
									<section>
										<form method="post" action="#">
											<div class="row gtr-50">
												<div class="col-6 col-12-small">
													<input type="text" name="name" id="contact-name" placeholder="Name" />
												</div>
												<div class="col-6 col-12-small">
													<input type="text" name="email" id="contact-email" placeholder="Email" />
													

												</div>
												<div class="col-12">
													<textarea name="message" id="contact-message" placeholder="Message" rows="4"></textarea>
												</div>

												<div class="col-12">
													<ul class="actions">
														<li><input type="submit" class="style1" value="Send" /></li>
														<li><input type="reset" class="style2" value="Reset" /></li>
													</ul>
												</div>
											</div>
										</form>
									</section>

							</div>
							<div class="col-6 col-12-medium">

								<!-- Contact -->
									<section class="feature-list small">
										<div class="row">
											<div class="col-6 col-12-small">
												<section>
													<h3 class="icon solid fa-home">Mailing Address</h3>
													<p>
														Untitled Corp<br />
														1234 Somewhere Rd<br />
														Nashville, TN 00000
													</p>
												</section>
											</div>
											<div class="col-6 col-12-small">
												<section>
													<h3 class="icon solid fa-comment">Social</h3>
													<p>
														<a href="#">@untitled-corp</a><br />
														<a href="#">linkedin.com/untitled</a><br />
														<a href="#">facebook.com/untitled</a>
													</p>
												</section>
											</div>
											<div class="col-6 col-12-small">
												<section>
													<h3 class="icon solid fa-envelope">Email</h3>
													<p>
														<a href="#">info@untitled.tld</a>
													</p>
												</section>
											</div>
											<div class="col-6 col-12-small">
												<section>
													<h3 class="icon solid fa-phone">Phone</h3>
													<p>
														(000) 555-0000
													</p>
												</section>
											</div>
										</div>
									</section>

							</div>
						</div>
						<div id="copyright">
							<ul>
								<li>&copy; Untitled.</li><li>Design: <a href="">HTML</a></li>
							</ul>
						</div>
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