package ProductManagement;

import DB.GenericDAO;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
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

    private final GenericDAO dao = new GenericDAO();
    private final String[] columns = {"product_name", "product_type", "category", "imageFileName", "product_description", "price"};

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
        String uploadPath = "/home/kavindu/Downloads/VSCode/DEA-Project/GitHub/OrganicCosmetic-OnlineStore/web/Seller/images/" + imageFileName;
        
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
         
        try {
            Object[] values = {product_name, product_type, category, imageFileName, product_description, price};
            dao.addRecord("product_details", columns, values);
            response.getWriter().println("Product added successfully!");
        } catch (SQLException ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().println("Failed to add product.");
        }
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
