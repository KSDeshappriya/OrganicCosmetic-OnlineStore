<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Dimension by HTML
	Free for personal and commercial use under the CCA 3.0 license
-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
    </head>
    <body>
          <form action="checkout.jsp" method="post">
        <input type="hidden" name="amount" value="10.00">
        <input type="submit" value="Pay with PayPal">
        
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name" required><br>

  <label for="email">Email:</label><br>
  <input type="email" id="email" name="email" required><br>

  <label for="message">Message:</label><br>
  <textarea id="message" name="message" rows="4" cols="50" required></textarea><br>

  <input type="submit" value="Submit">

    </form>
    </body>
</html>
