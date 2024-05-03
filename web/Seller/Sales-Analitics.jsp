<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Analytics</title> 
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- <link rel="stylesheet" href="Styles.css"> -->
    <style>
        /* Your custom styles here */
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #007bff; /* Blue Navbar */
        }

        .card {
            background-color: #fff; /* White cards */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #28a745; /* Green header for cards */
            color: #fff; /* White text */
            border-bottom: none; /* No border */
            border-radius: 10px 10px 0 0; /* Rounded corners only on top */
        }

        .btn-coolNav {
            background-color: #17a2b8 !important; /* Turquoise buttons in the navbar */
            border-color: #17a2b8 !important; /* Turquoise border color */
        }

        .btn-coolNav:hover {
            background-color: #138496 !important; /* Darker turquoise on hover */
            border-color: #138496 !important; /* Darker turquoise border on hover */
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-transparent bg-transparent" style="background-color: darkgray;">
        <div class="container">
            <a class="navbar-brand" href="seller.jsp">
                <img src="images/logo.png" alt="Logo" height="40">
            </a>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link btn btn-coolNav mx-2" href="../OServlet">
                            <i class='bx bxs-shopping-bag icon-box'></i>
                            Order Management
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-coolNav" href="Product-Management.jsp">
                            <i class='bx bxs-package icon-box'></i>
                            Product Management
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-coolNav" href="Sales-Analitics.jsp">
                            <i class='bx bx-line-chart icon-box'></i>
                            Sales Analytics
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Sales Analytics</h1>
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Sales Trends</h2>
                    </div>
                    <div class="card-body">
                        <canvas id="salesChart" width="400" height="300"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Popular Products</h2>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Quantity Sold</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Product A</td>
                                    <td>50</td>
                                </tr>
                                <tr>
                                    <td>Product B</td>
                                    <td>50</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- <script src="Js/Sales_Analytics.js"></script> -->
</body>
</html>
