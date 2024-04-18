package product;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import product.product;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/organic_cosmetics";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<product> getProducts() {
        List<product> products = new ArrayList<>();

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get the connection
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Prepare the SQL query
            String query = "SELECT * FROM organic_cosmetics";
            PreparedStatement statement = connection.prepareStatement(query);

            // Execute the query and get the result set
            ResultSet resultSet = statement.executeQuery();

            // Process the result set and create Product objects
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                byte[] imageData = getProductImageById(id);
                String name = resultSet.getString("product_name");
                String category = resultSet.getString("category");
                 
                String description = resultSet.getString("product_description");
                double price = resultSet.getDouble("Price");
                product product = new product( id, imageData, name, category, description, price);
                products.add(product);
            }

            // Close the resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    public product getProductById(int productId) {
        product product = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get the connection
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Prepare the SQL query
            String query = "SELECT * FROM organic_cosmetics WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, productId);

            // Execute the query and get the result set
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                int id = resultSet.getInt("ID");
                byte[] imageData = getProductImageById(id);
                String name = resultSet.getString("product_name");
                String category = resultSet.getString("category");
                            
                String description = resultSet.getString("product_description");
                double price = resultSet.getDouble("Price");
                product = new product(id, imageData, name, category, description, price );
            }

            // Close the resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return product;
    }

 public byte[] getProductImageById(int productId) {
        byte[] imageData = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get the connection
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Prepare the SQL query
            String query = "SELECT Image FROM organic_cosmetics WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, productId);

            // Execute the query and get the result set
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                Blob imageBlob = resultSet.getBlob("Image");
                if (imageBlob != null) {
                    imageData = imageBlob.getBytes(1, (int) imageBlob.length());
                }
            }

            // Close the resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return imageData;
    }
}
