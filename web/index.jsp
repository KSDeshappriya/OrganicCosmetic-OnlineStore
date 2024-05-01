<%@page contentType="text/html" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
	<html>

	<head>
		<title>Loading...✨</title>

		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
		<link rel="stylesheet" href="loading.css">
	</head>

	<body>
		<!-- partial:index.partial.html -->
		<input class="sr-only" type="checkbox" id="flip">
		<label for="flip"></label>
		<h1>tap.</h1>
		<div class="container">
			<div class="scene">
				<span class="loading-label">Loading...</span>
				<!-- Note:: You could write a quick JavaScript generator to do this -->
				<!-- Need a notion of the number of segments in the bar plus the layout for the grid -->
				<div class="bar" style="--columns: 20% 0 10% 0 10% 0 10% 0 20% 0 10% 0 20%; --total-length: 400;">
					<!-- Kind of a weird way to do it but... -->
					<!-- The --length is the percentage length of the container -->
					<!-- The --depth is a depth off the center line as a percentage of the container -->
					<!-- The aligned should add to 100 as we're doing grid -->
					<!-- The non-aligned dictate the depth being used -->
					<!-- Needs to be the length of the depth currently plus the destination depth -->
					<div style="--name:  segment-1; --delay:   0; --length: 20; --depth:   0;"
						class="bar__segment bar__segment--aligned"></div>
					<div style="--name:  segment-2; --delay:  20; --length: 30; --depth:   0;"
						class="bar__segment bar__segment--front"></div>
					<div style="--name:  segment-3; --delay:  50; --length: 10; --depth:  30;"
						class="bar__segment bar__segment--aligned"></div>
					<div style="--name:  segment-4; --delay:  60; --length: 50; --depth:  30;"
						class="bar__segment bar__segment--back"></div>
					<div style="--name:  segment-5; --delay: 110; --length: 10; --depth: -20;"
						class="bar__segment bar__segment--aligned"></div>
					<div style="--name:  segment-6; --delay: 120; --length: 60; --depth: -20;"
						class="bar__segment bar__segment--front"></div>
					<div style="--name:  segment-7; --delay: 180; --length: 10; --depth:  40;"
						class="bar__segment bar__segment--aligned"></div>
					<div style="--name:  segment-8; --delay: 190; --length: 70; --depth:  40;"
						class="bar__segment bar__segment--back"></div>
					<div style="--name:  segment-9; --delay: 260; --length: 20; --depth: -30;"
						class="bar__segment bar__segment--aligned"></div>
					<div style="--name: segment-10; --delay: 280; --length: 50; --depth: -30;"
						class="bar__segment bar__segment--front"></div>
					<div style="--name: segment-11; --delay: 330; --length: 30; --depth:  20;"
						class="bar__segment bar__segment--aligned"></div>
					<div style="--name: segment-12; --delay: 360; --length: 20; --depth:  20;"
						class="bar__segment bar__segment--back"></div>
					<div style="--name: segment-13; --delay: 380; --length: 20; --depth:   0;"
						class="bar__segment bar__segment--aligned"></div>
				</div>
			</div>
		</div>
		<!-- partial -->

		<script>
			// Redirect to a new page after 5 seconds
			setTimeout(function () {
				window.location.href = "Buyer/home/start.jsp";
			}, 5000); // 5000 milliseconds = 5 seconds

		</script>
		<!-- <li><a href="Seller/seller.jsp" class="button style2 large">Seller</a></li> -->
	</body>

	</html>