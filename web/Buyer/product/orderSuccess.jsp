<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--

	Free for personal and commercial use under the CCA 3.0 license 
-->
<html>
	<head>
		<title>Order Success</title>
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
                        <h1><a href="">Thank you for your order!</a></h1>
                        <p>Your order has been placed successfully.</p>
                    </div>

                <!-- Nav -->
                    

            </section>

				

			

			

			

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
                        <script>
				// Function to redirect to another page after 5 seconds
				function redirect() {
					setTimeout(function() {
						window.location.href = '../product/home.jsp'; // Replace with your destination URL
					}, 1500); // 1500 milliseconds = 1.5 seconds
				}
		
				// Call the redirect function when the page loads
				window.onload = redirect;
			</script>

	</body>
</html>