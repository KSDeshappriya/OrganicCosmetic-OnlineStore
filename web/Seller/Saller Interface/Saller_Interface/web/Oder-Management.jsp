<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management</title>
    
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



    <div class="container3">
        <h1 class="mt-4 mb-4">Order Management</h1>
        <table class="table order-table">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Date</th>
                    <th>Customer Name</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>2024-04-16</td>
                    <td>John Doe</td>
                    <td>Processing</td>
                    <td>
                        <select class="custom-select btn-update">
                            <option selected>Update Status</option>
                            <option value="shipped">Shipped</option>
                            <option value="delivered">Delivered</option>
                            <option value="cancelled">Cancelled</option>
                        </select>
                    </td>
                </tr>
               
            </tbody>
        </table>
    </div>

    <script src="Js/scripts.js"></script>
</body>
</html>
