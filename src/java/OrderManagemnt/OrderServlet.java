/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package OrderManagemnt;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thilina
 */
public class OrderServlet extends HttpServlet {

   private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        
        Connection conn2 = null;
        PreparedStatement stmt2 = null;
        ResultSet rs2 = null;

        try {
            // JDBC connection for the first database
            Class.forName("com.mysql.jdbc.Driver");

            // JDBC connection for the second database
            conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/OrganicCosmeticStore", "root", "");
            out.println("hi1");
            
            String sql = "SELECT oi.order_id, oi.date, u.uname FROM orders_items oi JOIN users u ON oi.order_id = u.id;";
            stmt2 = conn2.prepareStatement(sql);
            rs2 = stmt2.executeQuery();
            
            out.println("hi2");
            // Set data as attribute in request object
//            request.setAttribute("resultSet1", rs1);
            request.setAttribute("resultSet2", rs2);
            
            out.println("hi3");
            // Forward request to the JSP page
            request.getRequestDispatcher("Seller/newjsp.jsp").forward(request, response);
            out.println("hi3.1");
            
        } catch (ClassNotFoundException | SQLException e) {
            out.println("hi4");
            e.printStackTrace();
            // Handle exceptions appropriately
        } catch(Exception e){
            out.println("hi4.1"+ e);
        }finally {
            out.println("hi5");
            // Closing resources
            try {
                if (rs2 != null) rs2.close();
                if (stmt2 != null) stmt2.close();
                if (conn2 != null) conn2.close();
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle exceptions appropriately
            }
        }
    }
}
