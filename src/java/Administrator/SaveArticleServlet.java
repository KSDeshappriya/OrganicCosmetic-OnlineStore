package Administrator;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author kavindu
 */
@WebServlet("/SaveArticleServlet")
public class SaveArticleServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get title and content from request parameters
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        
        // JDBC Connection parameters
        String url = "jdbc:mysql://localhost:3306/OrganicCosmeticStore";
        String username = "root";
        String password = "";

        // JDBC variables
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Open a connection
            conn = DriverManager.getConnection(url, username, password);

            // SQL query to insert article into database
            String sql = "INSERT INTO articles (title, content) VALUES (?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, title);
            pstmt.setString(2, content);
            
            // Execute the query
            int rowsAffected = pstmt.executeUpdate();
            
            // Check if the insertion was successful
            if (rowsAffected > 0) {
                // Send response back to client
                PrintWriter out = response.getWriter();
                out.println("Article saved successfully!");
            } else {
                // Send error response back to client
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                PrintWriter out = response.getWriter();
                out.println("Failed to save article!");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
            // Send error response back to client
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            PrintWriter out = response.getWriter();
            out.println("Failed to save article!");
        } finally {
            // Close JDBC objects
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}