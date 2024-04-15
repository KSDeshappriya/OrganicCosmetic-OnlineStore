<%-- Document : login Created on : Apr 15, 2024, 11:41:11 AM Author : Avishka --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
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
            <div class="logpage">
                <div class="register">
                    <h1 style="text-align: center; color:black">Rgister</h1><br><br>
                    <form action="LoginServlet" method="POST">
                        <table border="0"  >
    
                            <tbody>
                                <tr>
                                    <td>User Name: <br>
                                    <input type="text" name="uname" /></td>
                                </tr>
                                <tr>
                                    <td>Password: <br>
                                        <input type="password" name="password" /></td>
                                </tr>
                                <tr>
                                    <td>Conform Password: <br>
                                        <input type="password" name="conpassword" value="" /></td>
                                </tr>
                                <tr>
                                    <td><p>Alredy have Account <a href="login.jsp">Login</a></p></td>
                                </tr>
                                
                                <tr>
                                    <td><button type="button" class="btn btn-success" >Sign In</button></td>
                                </tr>
                            </tbody>
                        </table>
    
                    </form>
    
                </div>
            </div>

            
        </body>

        </html>