<%@page import="java.lang.System.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, product.product, product.DBConnection, java.util.Base64" %>
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
		<title>products</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

	</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
						<div id="logo">
							<h1><a href="">The Products</a></h1>
							<p>A free responsive site template by HTML5 UP</p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								
								<li><a href="home.jsp">Home</a></li>

								<li class="current"><a href="../product/productlist.jsp">Products</a></li>

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
								</li>
							<li><a href="contactus.jsp">Contact Us</a></li>		
							<li><a href="aboutus.jsp">About Us</a></li>		
							<li><a href="article.jsp">Article</a></li>			
							<li><a href="" style="display: none;">Empty Space</a></li>			
							<li><a href="../../CartServlet?action=view"><img src="images/cart2.png">Cart</a></li>
							<% if (username == null) { %>
                                                            <!-- Show login button if user is not logged in -->
                                                            <li><a href="../../Admin/auth/login.jsp"><img src="images/user2.png">Login</a></li>
                                                        <% } else { %>
                                                            <!-- Show username if user is logged in -->
                                                            <li><a><%= username %></a></li>
                                                        <% } %>
                                                        <li><a href="../../Logout"><img src="images/user2.png">Logout</a></li>
							</ul>
						</nav>

				</section>


			<!-- Highlights -->
				<section id="highlights" class="wrapper style3">
					<div class="title">The Products</div>
					<div class="container">
						<div class="row aln-center">
<h2>Discover the Latest Categories</h2>
							<div class="container">
								<!-------------------------------->	
								
	
		
							<div class="row aln-center mySlides3 w3-animate-right" >		
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/face.jpg" alt="" /></a>
										<h3><a href="#">Face</a></h3>
										<p>Explore our skincare essentials for radiant complexion.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/eyes.jpg" alt="" /></a>
										<h3><a href="#">Eyes</a></h3>
										<p>Enhance your gaze with our eye makeup collection.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/lips.jpg" alt="" /></a>
										<h3><a href="#">Lips</a></h3>
										<p>Achieve luscious lips with our vibrant lipstick shades.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
									</div>
								</div>
							<div class="row aln-center mySlides3 w3-animate-right" >
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/hair.jpg" alt="" /></a>
										<h3><a href="#">Hair</a></h3>
										<p>Elevate your hair game with our premium haircare.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/body.jpg" alt="" /></a>
										<h3><a href="#">Body</a></h3>
										<p>Pamper your skin with our luxurious body care range.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/hands.jpg" alt="" /></a>
										<h3><a href="#">Hands</a></h3>
										<p>Indulge in hand care for soft, smooth hands.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
							</div>
							<div class="row aln-center mySlides3 w3-animate-right" >
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/feet.jpg" alt="" /></a>
										<h3><a href="#">Feet</a></h3>
										<p>Treat your feet to rejuvenating foot care solutions.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/mantraoil.jpg" alt="" /></a>
										<h3><a href="#">Mantra Oils</a></h3>
										<p>Experience holistic wellness with our potent oils.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
								<div class="col-4 col-12-medium">
									<section class="highlight">
										<a href="#" class="image featured"><img src="images/bundeldeals.jpg" alt="" /></a>
										<h3><a href="#">Bundel Deals</a></h3>
										<p>Save big with our curated product bundles.</p>
										<ul class="actions">
											<li><a href="productlist.jsp" class="button style2">See More ></a></li>
										</ul>
									</section>
								</div>
							</div>	
				
				<button class="w3-button w3-white w3-display-left" onclick="plusDivs3(-1)">&#10100;</button>
				  <button class="w3-button w3-white w3-display-right" onclick="plusDivs3(1)">&#10101;</button>
		<!----------------------------------------------->
		<script>
		var slideIndex3 = 1;
		showDivs3(slideIndex3);
		
		function plusDivs3(n3) {
		  showDivs3(slideIndex3 += n3);
		}
		
		function showDivs3(n3) {
		  var i3;
		  var x3 = document.getElementsByClassName("mySlides3");
		  if (n3 > x3.length) {slideIndex3 = 1}
		  if (n3 < 1) {slideIndex2 = x3.length}
		  for (i3 = 0; i3 < x3.length; i3++) {
			x3[i3].style.display = "none";  
		  }
		  x3[slideIndex3-1].style.display = "";  
		}
		
		var myIndex3 = 0;
		carousel3();
		
		function carousel3() {
		var i3;
		var x3 = document.getElementsByClassName("mySlides3");
		for (i3 = 0; i3 < x3.length; i3++) {
			x3[i3].style.display = "none";  
		}
		myIndex3++;
		if (myIndex3 > x3.length) {myIndex3 = 1}    
		x3[myIndex3-1].style.display = "";  
		setTimeout(carousel3, 3000);    
		}
		</script>
		<!------------------------------------------------>
		
					
							</div>
							<!--<div class="col-4 col-12-medium">
								<section class="highlight">
									<a href="#" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
									<h3><a href="#">Aliquam diam consequat</a></h3>
									<p>Eget mattis at, laoreet vel amet sed velit aliquam diam ante, dolor aliquet sit amet vulputate mattis amet laoreet lorem.</p>
									<ul class="actions">
										<li><a href="../home/conform.jsp#product" class="button style1">+ Add to cart</a></li>
									</ul>
								</section>
							</div>-->
                                                    
 <!--  ------------------------------------------------------------------------------   -->
                                               
 <h2>Discover the Latest Additions to Our Collection - Shop Now!</h2>

                            <%
                               DBConnection dbConnection = new DBConnection();
                               List<product> products = dbConnection.getProducts();
                               request.setAttribute("products", products);
                           %>

      <!--  ------------------------------------------------------------------------------   -->
                                        
                                                
                                                     <c:forEach items="${products}" var="product">
      
													<div class="col-4 col-12-medium" style="width:25%">
														<section class="highlight">
										
                                                                                 <p>Category: ${product.getCategory()}</p>
                                                                                 <a href="#" class="image featured">
                                                                                        <img src="${product.getImage()}" alt="" />
                                                                                    </a>
                                                                                 
                                                                                            <h3><a href="#">${product.getName()}</a></h3>
                                                      
                                                  
                                                                <br>"${product.getDescription()}"</p>
                                                                <h3>$. ${product.getPrice()}</h3>
                                                               <ul class="actions">
										<li><a href="../../CartServlet?action=add&id=${product.getId()}" class="button style1">+ Add to cart</a></li>
									</ul>
                                                                        
                                                                        <c:choose>
                                                                                <c:when test="${not empty product.getImagedata()}">
                                                                                    <a href="#" class="image featured">
                                                                                        <img src="data:image/jpg;base64,${base64Image}" alt="" />
                                                                                    </a>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <a href="#" class="image featured">
                                                                                        <img src="default_image.jpg" alt="" />
                                                                                    </a>
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        
                                                                </section>
                                                                
                                                                
							</div>
                                                          </c:forEach>              
                                                                        
	
						</div>
					</div>
                          <center> <br> <a class="button style1" href="../../CartServlet?action=view">View Cart</a> </center>
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

