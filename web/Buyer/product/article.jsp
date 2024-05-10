<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Article Blogs</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
            /* Button styles */
            .btnx1 {
                display: inline-block;
                padding: 10px 20px;
                background-color: #007bff; /* Bootstrap primary blue */
                color: #fff;
                text-align: center;
                text-decoration: none;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            /* Hover effect */
            .btnx1:hover {
                background-color: #0056b3; /* Darker shade of blue on hover */
            }
        </style>
    </head>
    <body class="left-sidebar is-preload">
        <div id="page-wrapper">

            <!-- Header -->
            <section id="header" class="wrapper">

                <!-- Logo -->
                <div id="logo">
                    <h1><a href="">Article Blogs</a></h1>
                    <p>A free responsive site template by HTML5 UP</p>
                    <a href="../../Admin/ViewArticles.jsp" class="btnx1">Click me</a>
                </div>

                <!-- Nav -->
                <nav id="nav">
                    <ul>
                        <li><a href="home.jsp">Home</a></li>

                        <li><a href="productlist.jsp">Products</a></li>

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
                        <!-- 				<li><a href="left-sidebar.html">Left Sidebar</a></li>		-->
                        <li class="current"><a href="contactus.jsp">Contact Us</a></li>		
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


            <!-- Intro -->
            <section id="intro" class="wrapper style3">
                <div class="title">Article Blogs</div>
                <div class="container">
                    <p class="style1">So in case you were wondering what this is all about ...</p>
                    <div class="container">
                        <div class="row aln-center mySlides w3-animate-right" >
                            <!------------------------------------------------->

                            <div class="col-4 col-12-medium" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article4.jpg" alt="" /></a>
                                    <h3><a href="#">*Indulge Your Hands with Rose Hand Cream*</a></h3>
                                    <p>Introducing "Rose Hand Cream," a luxurious treat...</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article5.jpg" alt="" /></a>
                                    <h3><a href="#">*Reveal Soft, Pink Lips with Pink Lips Scrub + Balm Duo*</a></h3>
                                    <p>Introducing the ultimate lip care duo: Pink Lips Scrub + Balm...</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article6.jpg" alt="" /></a>
                                    <h3><a href="#">*Indulge in Frosty Bliss with Sisiliana Ice Lotion*</a></h3>
                                    <p>Introducing "Sisiliana Ice Lotion," a tantalizing treat...</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>


                        </div>

                        <div class="row aln-center mySlides w3-animate-right" >
                            <!------------------------------------------------->

                            <div class="col-4 col-12-medium" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article1.jpg" alt="" /></a>
                                    <h3><a href="#">*Unveil Youthful Radiance with Samaya Under Eye Cream*</a></h3>
                                    <p>Introducing "Samaya Under Eye Cream," a transformative elixir...</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article2.jpg" alt="" /></a>
                                    <h3><a href="#">*Embrace Radiant Skin with RadiantGlow Fairness Face Oil*</a></h3>
                                    <p>Introducing "RadiantGlow Fairness Face Oil," a luxurious...</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article3.jpg" alt="" /></a>
                                    <h3><a href="#">*Nourish Your Beard with Roots Beard Growth Serum Nurture*</a></h3>
                                    <p>Introducing "Roots Beard Growth Serum," a powerful elixir...</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>


                        </div>



                        <button class="w3-button w3-white w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                        <button class="w3-button w3-white w3-display-right" onclick="plusDivs(1)">&#10095;</button>
                        <!------------------------------------------------->
                        <script>
                            var slideIndex = 1;
                            showDivs(slideIndex);

                            function plusDivs(n) {
                                showDivs(slideIndex += n);
                            }

                            function showDivs(n) {
                                var i;
                                var x = document.getElementsByClassName("mySlides");
                                if (n > x.length) {
                                    slideIndex = 1
                                }
                                if (n < 1) {
                                    slideIndex = x.length
                                }
                                for (i = 0; i < x.length; i++) {
                                    x[i].style.display = "none";
                                }
                                x[slideIndex - 1].style.display = "";
                            }

                            var myIndex = 0;
                            carousel();

                            function carousel() {
                                var i;
                                var x = document.getElementsByClassName("mySlides");
                                for (i = 0; i < x.length; i++) {
                                    x[i].style.display = "none";
                                }
                                myIndex++;
                                if (myIndex > x.length) {
                                    myIndex = 1
                                }
                                x[myIndex - 1].style.display = "";
                                setTimeout(carousel, 3000);
                            }
                        </script>

                        <!------------------------------------------------->							



                    </div>
            </section>

            <!-- Intro -->
            <section id="intro" class="wrapper style3">
                <div class="container">
                    <p class="style1">So in case you were wondering what this is all about ...</p>
                    <div class="container">
                        <div class="row aln-center " >
                            <div class="col-4 col-12-medium" style="width:50%">
                                <section class="highlight" >
                                    <a href="#" class="image featured" ><img src="images/article1.jpg"  alt="" /></a>
                                    <h3><a href="#">*Unveil Youthful Radiance with Samaya Under Eye Cream*</a></h3>
                                    <p>Introducing "Samaya Under Eye Cream," a transformative elixir designed to 
                                        rejuvenate and revitalize the delicate skin around your eyes. Infused with potent 
                                        botanical extracts and age-defying antioxidants, Samaya's advanced formula works
                                        tirelessly to diminish the appearance of dark circles, puffiness, and fine lines, 
                                        restoring a youthful radiance to your gaze. With each application, indulge in the 
                                        luxurious texture as it melts effortlessly into your skin, delivering deep hydration 
                                        and nourishment. Experience the power of natural ingredients meticulously crafted to 
                                        unveil brighter, firmer, and more luminous under-eyes. Elevate your skincare routine with 
                                        Samaya Under Eye Cream and embrace a timeless beauty that reflects your inner vitality.
                                    </p>
                                    <p><b>Transform your under-eye area with Samaya's revolutionary formula and discover the secret to youthful, radiant eyes...</b></p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" style="width:50%" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article2.jpg" alt="" /></a>
                                    <h3><a href="#">*Embrace Radiant Skin with RadiantGlow Fairness Face Oil*
                                        </a></h3>
                                    <p>Introducing "RadiantGlow Fairness Face Oil," a luxurious elixir crafted to enhance 
                                        your natural radiance and illuminate your complexion. Formulated with a harmonious 
                                        blend of skin-loving botanicals and potent antioxidants, RadiantGlow deeply nourishes
                                        and replenishes your skin, promoting a luminous and even-toned appearance. This lightweight 
                                        yet indulgent oil absorbs quickly, leaving your skin feeling soft, supple, and deeply hydrated. 
                                        Harnessing the power of nature, RadiantGlow Fairness Face Oil works to diminish the appearance of dark spots, 
                                        blemishes, and uneven skin tone, revealing a brighter, more luminous complexion with each use. 
                                        Embrace the beauty of radiant skin with RadiantGlow Fairness Face Oil and let your inner glow shine through.
                                    </p>
                                    <p>
                                        <b>Illuminate your complexion and reveal the beauty of radiant skin with RadiantGlow Fairness Face Oil...</b></p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" style="width:50%">
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article3.jpg" alt="" /></a>
                                    <h3><a href="#">*Nourish Your Beard with Roots Beard Growth Serum*
                                        </a></h3>
                                    <p>Introducing "Roots Beard Growth Serum," a powerful elixir crafted to 
                                        nurture and enhance the natural growth of your beard. Enriched with a
                                        synergistic blend of botanical extracts and essential vitamins, Roots
                                        deeply nourishes and stimulates hair follicles, promoting fuller, thicker,
                                        and healthier beard growth. This lightweight serum absorbs quickly, leaving
                                        your skin and beard feeling refreshed and revitalized. Harnessing the power 
                                        of nature, Roots Beard Growth Serum works to address common concerns such as 
                                        patchy beard growth and slow hair growth, revealing a beard that exudes confidence
                                        and masculinity with every application. Elevate your grooming routine with Roots 
                                        Beard Growth Serum and unlock the full potential of your beard.
                                    </p>
                                    <p><b>Unlock the full potential of your beard with Roots Beard Growth Serum...</b></p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>

                            <div class="col-4 col-12-medium" style="width:50%" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article4.jpg" alt="" /></a>
                                    <h3><a href="#">*Indulge Your Hands with Rose Hand Cream*
                                        </a></h3>
                                    <p>Introducing "Rose Hand Cream," a luxurious treat for your hands infused
                                        with the delicate scent of roses. Enriched with nourishing botanical 
                                        extracts and moisturizing oils, our hand cream deeply hydrates and 
                                        rejuvenates dry, tired hands, leaving them feeling soft, smooth, and
                                        delicately fragranced. The soothing properties of rose extract help 
                                        to calm irritated skin and restore moisture balance, while antioxidants
                                        protect against environmental stressors, keeping your hands looking youthful
                                        and radiant. With its lightweight and non-greasy formula, Rose Hand Cream 
                                        absorbs quickly, providing instant relief to parched hands without leaving
                                        any residue. Elevate your hand care routine with the timeless elegance of 
                                        roses and embrace the beauty of soft, supple hands with Rose Hand Cream.
                                    </p>
                                    <p><b>Experience the luxurious pampering of Rose Hand Cream and treat your hands to the nourishment they deserve...</b></p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" style="width:50%" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article5.jpg" alt="" /></a>
                                    <h3><a href="#">*Reveal Soft, Pink Lips with Pink Lips Scrub + Balm Duo*
                                        </a></h3>
                                    <p>Introducing the ultimate lip care duo: Pink Lips Scrub + Balm, designed to exfoliate,
                                        nourish, and hydrate for irresistibly soft and pink lips. Begin your routine with
                                        Pink Lips Scrub, a gentle exfoliating treatment enriched with natural sugars and
                                        hydrating oils. This luxurious scrub buffs away dry, flaky skin, revealing smoother,
                                        more supple lips underneath. Follow up with Pink Lips Balm, infused with nourishing
                                        ingredients like shea butter and vitamin E, to lock in moisture and soothe dryness. 
                                        Together, this dynamic duo works to restore your lips' natural rosy hue while keeping
                                        them velvety soft and kissably smooth. Treat yourself to the indulgence of Pink Lips
                                        Scrub + Balm and embrace the beauty of hydrated, pink lips.
                                    </p>
                                    <p><b>Experience the transformative power of Pink Lips Scrub + Balm Duo and unlock the secret to soft, pink lips...</b></p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="col-4 col-12-medium" style="width:50%" >
                                <section class="highlight">
                                    <a href="#" class="image featured"><img src="images/article6.jpg" alt="" /></a>
                                    <h3><a href="#">*Indulge in Frosty Bliss with Sisiliana Ice Lotion*
                                        </a></h3>
                                    <p>Introducing "Sisiliana Ice Lotion," a tantalizing treat for your skin 
                                        that brings the refreshing chill of ice to your daily skincare routine. 
                                        Immerse yourself in a world of frosty bliss as this luxurious lotion envelops 
                                        your skin in a cool, soothing sensation, leaving you feeling invigorated and
                                        rejuvenated. Infused with hydrating ingredients and a hint of mint, Sisiliana 
                                        Ice Lotion provides instant relief from dryness and discomfort, while imparting
                                        a subtle, refreshing fragrance that lingers throughout the day. Whether you're
                                        seeking relief from the summer heat or simply craving a revitalizing pick-me-up,
                                        Sisiliana Ice Lotion is your ticket to a frosty indulgence that will leave your 
                                        skin feeling refreshed, hydrated, and irresistibly smooth.

                                    </p>
                                    <p><b>Experience the exhilarating sensation of Sisiliana Ice Lotion and treat your skin to a frosty indulgence like never before...</b></p>
                                    <ul class="actions">
                                        <li><a href="#" class="button style1">Learn More</a></li>
                                    </ul>
                                </section>
                            </div>



                        </div>





                    </div>

                </div>
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