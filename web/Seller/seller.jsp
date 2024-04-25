 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Live Life Cleam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    <link href='Styles.css' rel='stylesheet'>
</head>

<body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true"
    tabindex="0">
    <form>

        <section class="header-section">
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

            <div>
                <h1 class="welcome-text top">
                    <span style="color: white;">Live</span>
                     <span style="color: rgb(255, 87, 25)">Life</span>
                      <span style="color: white;">Cleam</span></h1>
                <h2 class="welcome-text bot" id="typer">Discovering Authentic Flavors from Around the World...</h2>
                <button class="btn btn-outline-primary btn-cool rounded-pill">See More...</button>
            </div>
        </section>


        <div class="topHead container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-6 ">
                    <h1 class="mt-4 mb-4">Orgenic Skin Care Products</h1>
                </div>
            </div>
        </div>
        <br>
        <div class="container1">

            <div class="row">
                <div class="col-md-6">
                    <h2>Product Management</h2>
                    <p>Click below to manage products:</p>
                    <a href="Product-Management.jsp" class="btn btn-custom">Product Management</a>
                </div>
                <div class="OderMng col-md-6">
                    <h2>Order Management</h2>
                    <p>Click below to manage orders:</p>
                    <a href="Oder-Management.jsp" class="btn btn-custom">Order Management</a>
                </div>
            </div>


            <div class="overview-section">
                <h2>Sales Overview</h2>
                <div class="row">
                    <div class="col-md-6">
                        <div class="chart-container1">
                            <canvas id="totalSalesChart"></canvas>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="chart-container1">
                            <canvas id="monthlySalesChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>


            <div class="overview-section">
                <h2>Orders Overview</h2>
                <div class="row">
                    <div class="col-md-6">
                        <div class="chart-container1">
                            <canvas id="totalOrdersChart"></canvas>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="chart-container1">
                            <canvas id="pendingOrdersChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <footer class="footer fixed-bottom py-2">
            <div class="row">
                <div class="col-12 text-right footer">
                    <p class="mb-0">&copy; 2024 Global Flavors Hub. All rights reserved.</p>
                </div>
            </div>
        </footer>
    </form>


    <script src="Js/scripts.js"></script>
</body>

</html>
