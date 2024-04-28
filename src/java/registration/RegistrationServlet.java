package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String umobile = request.getParameter("contact");
        String role = request.getParameter("role"); // Retrieve selected role
        
        Connection con = null;
        try {
            con = DatabaseConnection.getConnection();
            PreparedStatement pst = con.prepareStatement("INSERT INTO users(uname, upwd, uemail, umobile, role) VALUES(?,?,?,?, ?)");
            pst.setString(1, uname);
            pst.setString(2, upwd);
            pst.setString(3, uemail);
            pst.setString(4, umobile);
            pst.setString(5, role); // Set the role in the PreparedStatement
            
            int rowCount = pst.executeUpdate();
            String status = (rowCount > 0) ? "success" : "failed";
            
            // Redirect with status to suitable page
            response.sendRedirect(request.getContextPath() + "/Admin/auth/registration.jsp?status=" + status);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnection.closeConnection(con);
        }
    }
}
