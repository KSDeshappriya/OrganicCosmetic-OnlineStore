package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uemail = request.getParameter("uemail");
        String upwd = request.getParameter("password");
        // Retrieve the referrer value from the request parameters
        String referrer = request.getParameter("referrer");
        
        Connection con = null;
        try {
            con = DatabaseConnection.getConnection();
            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE uemail = ? AND upwd = ?");
            pst.setString(1, uemail);
            pst.setString(2, upwd);
            
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("name", rs.getString("uname"));
                
                if (referrer != null) {
                    // Redirect to the original request URI
                    response.sendRedirect(referrer);
                } else {
                    // If no original request URI is found, redirect to a default page
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Admin/auth/login.jsp?status=failed");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnection.closeConnection(con);
        }
    }
}
