/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

/**
 *
 * @author SIM ASHAD
 */
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import product.product;
import product.DBConnection;

public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<product> cartProducts = getCartProducts(session);
        request.setAttribute("cartProducts", cartProducts);
        request.getRequestDispatcher("Buyer/product/checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customer_id  = request.getParameter("customer_id");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String paymentMethod = request.getParameter("paymentMethod");

        HttpSession session = request.getSession();
        List<product> cartProducts = getCartProducts(session);

        DBConnection dbConnection = new DBConnection();
        dbConnection.insertOrderIntoDatabase(customer_id, name, address, phone, paymentMethod, cartProducts);

        session.removeAttribute("cart");
        response.sendRedirect("Buyer/product/orderSuccess.jsp");
    }

    private List<product> getCartProducts(HttpSession session) {
        List<Integer> cart = (List<Integer>) session.getAttribute("cart");
        List<product> products = new ArrayList<>();
        if (cart != null) {
            DBConnection dbConnection = new DBConnection();
            for (int productId : cart) {
                System.out.println("Fetching product with ID: " + productId);
                product product = dbConnection.getProductById(productId);
                if (product != null) {
                    products.add(product);
                }
            }
        }
        return products;
    }
}
