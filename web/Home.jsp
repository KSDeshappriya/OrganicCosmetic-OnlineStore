<%-- Document : Home Created on : Apr 14, 2024, 9:59:52 AM Author : Avishka --%>

  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Home Page</title>
      <link rel="stylesheet" href="style.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
      <link rel="stylesheet"
        href=" https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@0,400..800;1,400..800&display=swap"
        rel="stylesheet">
    </head>

    <body>
      <!-----------------------------------Navigation Bar------------------------------------>

      <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
          <a class="navbar-brand" style="padding: 0 140px; font-size:22px" href="#">
            <span style="color: white">Life</span>
            <span style="color: rgb(255, 87, 25)">Live</span>
            <span style="color: white">Cleam</span>
          </a>

          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#" style="color:rgb(255, 87, 25)!important;">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Shop</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Orders</a>
              </li>
            </ul>
          </div>

          <div class="btn-box">
            <a href="login.jsp" class="btn-btn-box">Login</a>
          </div>
        </div>
      </nav>
      <!-----------------------------------Hero Section-------------------------------------->
      <div class="hero-container-fluid">
        <div class="cover">
          <div class="cover-text">
            <div class="cover-text1">
              <p>FEEL LIKE YOURSELF <br>
                EVERY BREATH YOGA</p>
            </div>
            <div class="cover-text2">
              LIFE LIVE CLEAM
            </div>
          </div>
        </div>

      </div>

      <!-----------------------------------Products------------------------------------------>
      <div class="product">
        <div class="card" style="width: 18rem;">
          <img src="./Image/Cover.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-outline-secondary">View More</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="./Image/Cover.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-outline-secondary">View More</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="./Image/Cover.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-outline-secondary">View More</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="./Image/Cover.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-outline-secondary">View More</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="./Image/Cover.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-outline-secondary">View More</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="./Image/Cover.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-outline-secondary">View More</button>
          </div>
        </div>
      </div>

      <!--------------------------------About-------------------------------------------->

      <div class="about-section">
        <div class="about-image">
          <img src="./Image/About.png" alt="About Image"  class="about-image"/>
        </div>
        <div class="about-text">
          <p class="abt-text1">Live Life Cleam</p>
          <h1 class="abt-text2">"  CHANGING <br>
            THE IDEAL OF LIFE</h1>
          <P class="abt-text3">Live Life Clean is an eco - system of everything you world need to live your life cleaner. In our eco -
            system, you will find the right books, the right treatment English. Many desktop publishing packages and web
            page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover
            many web sites still in their infancy. Various versions have evolved over the years, sometimes by ac </P>
        </div>
        

      </div>

    </body>

    </html>