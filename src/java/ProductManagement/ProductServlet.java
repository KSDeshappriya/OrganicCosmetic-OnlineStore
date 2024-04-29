package ProductManagement;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

@MultipartConfig
@WebServlet(name = "ProductServlet", urlPatterns = {"/ProductServlet"})
public class ProductServlet extends HttpServlet {

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
        out.println("Selected Image File Name: " + imageFileName);
        String uploadPath = "D://NSBM - git/Online_Store/OrganicCosmetic-OnlineStore-5792a3f403864a810944876863941d654c43cb39/web/Seller/images/" + imageFileName;

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

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/youtube";
        String query = "INSERT INTO product_details(product_name, product_type, category, imageFileName, product_description, price) VALUES (?, ?, ?, ?, ?, ?)";

        Connection con = null;

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, "root", "");
            PreparedStatement statement = con.prepareStatement(query);

            statement.setString(1, product_name);
            statement.setString(2, product_type);
            statement.setString(3, category);
            statement.setString(4, imageFileName);
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

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().println("An error occurred while processing your request. Please try again later.");
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
