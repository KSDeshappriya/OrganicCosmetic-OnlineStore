/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProductManagement;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Avishka
 */
@MultipartConfig
@WebServlet(name = "ProductServlet", urlPatterns = {"/ProductServlet"})
public class ProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ProductServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ProductServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
//
//    
  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
       

        String product_name = request.getParameter("productName");
        String product_type = request.getParameter("productType");
        String category = request.getParameter("pcategory");
        String product_description = request.getParameter("productDesc");
        String pprice = request.getParameter("productPrice");
        Float price = Float.parseFloat(pprice);
        Part file = request.getPart("productImage");
        String imageFileName = file.getSubmittedFileName();
        String uploadPath = "D://NSBM - git/Online_Store/OrganicCosmetic-OnlineStore/web/Seller/images/" + imageFileName;
        
        //................................................................................................
        
        //..................Upload Photo............................
        
        try {
            FileOutputStream fos = new FileOutputStream(uploadPath);
            InputStream is = file.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        //................................................................................................
         
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/youtube";
        String query = "INSERT INTO product_details(product_name, product_type, category, imageFileName, product_description, price) VALUES (?, ?, ?, ?, ?, ?)";
        
       Connection con = null;
       
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,"root","");
            PreparedStatement statement = con.prepareStatement(query);
            
            statement.setString(1, product_name);
            statement.setString(2, product_type);
            statement.setString(3, category);
            statement.setString(4,imageFileName);
            statement.setString(5, product_description);
            statement.setFloat(6, price);
            
            int rowsInserted = statement.executeUpdate();

        if (rowsInserted > 0) {
            // Product added successfully
            response.getWriter().println("Product added successfully!");
        } else {
            // Failed to add product
            response.getWriter().println("Failed to add product.");
        }
            
          } catch (ClassNotFoundException |SQLException ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }  


//processRequest(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
