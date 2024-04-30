<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Analytics</title> 
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">ss 
    <link rel="stylesheet" href="Styles.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-transparent">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">
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
    <br>
    <br>

    <div class="container5">
        <h1 class="mt-4 mb-4">Sales Analytics</h1>
        <div class="row">
            <div class="col-md-6">
                <h2>Sales Trends</h2>
                <canvas id="salesChartt" width="410" height="310"></canvas>
            </div>
            <div class="col-md-6">
                <h2>Popular Products</h2>
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
                            <td>40</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="Js/Sales_Analytics.js"></script>
</body>
</html>
