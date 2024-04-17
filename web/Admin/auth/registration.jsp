<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/auth.css">
</head>

<body>

    <input type="hidden" id="status" value='<%= request.getAttribute("status")%>'>
    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>

                        <form method="post" action="../../RegistrationServlet" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label> <input
                                    type="text" name="name" id="name" placeholder="Your Name" />
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label> <input type="email"
                                    name="email" id="email" placeholder="Your Email" />
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label> <input type="password"
                                    name="pass" id="pass" placeholder="Password" />
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />
                            </div>
                            <div class="form-group">
                                <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="text" name="contact" id="contact" placeholder="Contact no" />
                            </div>
                            <div class="form-group">
                                <p style="margin-bottom: -1%;">Select Role:</p>
                                <label for="role" class="role-label" style="visibility: hidden;">Select Role:</label>
                                <div class="select-wrapper">
                                    <select id="role" name="role" class="role-select">
                                        <option value="consumer">Consumer</option>
                                        <option value="seller">Seller</option>
                                    </select>
                                    <i class="zmdi zmdi-caret-down"></i> <!-- Icon for dropdown arrow -->
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" /> <label
                                    for="agree-term" class="label-agree-term"><span><span></span></span>I
                                    agree all statements in <a href="#" class="term-service">Terms
                                        of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure>
                            <img src="images/signup-image.jpg" alt="sing up image">
                        </figure>
                        <a href="login.jsp" class="signup-image-link">I am already
                            member</a>
                    </div>
                </div>
            </div>
        </section>


    </div>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const params = new URLSearchParams(window.location.search);
            const status = params.get('status');
            if (status == "success") {
                swal("Congrats", "Account Created Successfully", "success")
            }
        });
    </script>
    <style>
        .form-group {
            margin-bottom: 20px;
        }

        .role-label {
            display: block;
            margin-bottom: 5px;
        }

        .select-wrapper {
            position: relative;
        }

        .role-select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            appearance: none;
            /* Removes default arrow in Firefox */
            -webkit-appearance: none;
            /* Removes default arrow in Webkit browsers */
        }

        .role-select::-ms-expand {
            display: none;
            /* Removes default arrow in IE Edge */
        }

        .role-select option {
            padding: 10px;
        }

        /* Styling the dropdown arrow icon */
        .select-wrapper i {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            pointer-events: none;
            /* Make sure the icon doesn't interfere with select functionality */
        }
    </style>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>