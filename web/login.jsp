<%-- 
    Document   : login
    Created on : Apr 15, 2024, 11:41:11 AM
    Author     : Avishka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="LoginServlet" method="POST">
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td>Conform Password</td>
                        <td><input type="password" name="conpassword" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
