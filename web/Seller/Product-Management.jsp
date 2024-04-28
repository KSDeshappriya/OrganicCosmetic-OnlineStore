<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Product</title>
   
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Styles.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        body {
            padding: 20px;
        }
    </style>
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-transparent">
        <div class="container-fluid">
            <a class="navbar-brand" href="seller.jsp">
                <img src="images/logo.png" alt="Logo" />
            </a>
 
            <div class="nav">
                <a href="Oder-Management.jsp" class="btn btn-coolNav mx-2">
                    <i class='bx bxs-shopping-bag icon-box'></i>
                    Order Management
                </a>
                <a href="Product-Management.jsp" class="btn btn-coolNav">
                    <i class='bx bxs-package icon-box'></i>
                    Product Management
                </a>
                <a href="Sales-Analitics.jsp" style="font-size: 2.1vh;" class="btn btn-coolNav">
                    <i class='bx bx-line-chart icon-box'></i>
                    Sales Analytics
                </a>
            </div>

        </div>
    </nav>

    <br><br>

    <div class="container5">
        <h1 class="mt-4 mb-4">Add New Product</h1>
        <form action="../ProductServlet" method="POST" enctype="multipart/form-data">
<!--            <div class="form-group">
                <label for="productId">Product ID:</label>
                <input type="number" class="form-control" id="productId" name="productId" required>
            </div>-->
            <div class="form-group">
                <label for="productName">Product Name:</label>
                <input type="text" class="form-control" id="productName" name="productName" required>
            </div>
            <div class="form-group">
                <label for="productType">Product Type:</label>
                <input type="text" class="form-control" id="productType" name="productType" required>
            </div>
            <div class="form-group">
                <label for="pcategory">Category:</label>
                <input type="text" class="form-control" id="pcategory" name="pcategory" required>
            </div>
            <div class="form-group">
                <label for="productDesc">Description:</label>
                <textarea class="form-control" id="productDesc" name="productDesc" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <label for="productPrice">Price:</label>
                <input type="number" class="form-control" id="productPrice" name="productPrice" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="productImage">Image:</label>
                <input type="file" class="form-control-file" id="productImage" name="productImage" accept="image/*" required>
            </div>
            <button type="submit" class="btn btn-custom">Add Product</button>
        </form>
    </div>

    <script src="Js/scripts.js"></script>
    </body>
</html>
