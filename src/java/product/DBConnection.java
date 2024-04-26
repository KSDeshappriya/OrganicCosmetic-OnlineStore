package product;

import java.sql.*;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
                byte[] imagedata = getProductImageById(id);
                String name = resultSet.getString("product_name");
                String category = resultSet.getString("category");
                 String image = resultSet.getString("Image");
                 
                String description = resultSet.getString("product_description");
                double price = resultSet.getDouble("Price");
                product product = new product( id, imagedata, name, category, image, description, price);
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
                byte[] imagedata = getProductImageById(id);
                String name = resultSet.getString("product_name");
                String category = resultSet.getString("category");
                 String image = resultSet.getString("Image");           
                String description = resultSet.getString("product_description");
                double price = resultSet.getDouble("Price");
                product = new product(id, imagedata, name, category,image, description, price );
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
 
  public void insertOrderIntoDatabase(String customer_id,String name, String address, String phone, String paymentMethod, List<product> cartProducts) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Insert order details into the orders table
            String orderQuery = "INSERT INTO orders (customer_id ,name, address, phone, payment_method) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement orderStatement = connection.prepareStatement(orderQuery, Statement.RETURN_GENERATED_KEYS);
            orderStatement.setString(1, customer_id);
            orderStatement.setString(2, name);
            orderStatement.setString(3, address);
            orderStatement.setString(4, phone);
            orderStatement.setString(5, paymentMethod);
            orderStatement.executeUpdate();

            // Get the generated order ID
            ResultSet generatedKeys = orderStatement.getGeneratedKeys();
            int orderId = -1;
            if (generatedKeys.next()) {
                orderId = generatedKeys.getInt(1);
            }

            // Insert order items into the order_items table
            String orderItemQuery = "INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)";
            PreparedStatement orderItemStatement = connection.prepareStatement(orderItemQuery);
            for (product product : cartProducts) {
                orderItemStatement.setInt(1, orderId);
                orderItemStatement.setInt(2, product.getId());
                orderItemStatement.setInt(3, 1); // Set the quantity to 1 for now
                orderItemStatement.setDouble(4, product.getPrice());
                orderItemStatement.executeUpdate();
            }

            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

 
}
