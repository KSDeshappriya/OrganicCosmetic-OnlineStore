package product;

import java.sql.Blob;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import product.product;
import product.DBConnection;




public class CheckoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<product> cartProducts = getCartProducts(session);
        request.setAttribute("cartProducts", cartProducts);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer/product/checkout.jsp");
        dispatcher.forward(request, response);
    }

    private List<product> getCartProducts(HttpSession session) {
        List<Integer> cart = (List<Integer>) session.getAttribute("cart");
        List<product> products = new ArrayList<>();
        if (cart != null) {
            DBConnection dbConnection = new DBConnection();
            for (int productId : cart) {
                product product = dbConnection.getProductById(productId);
                if (product != null) {
                    products.add(product);
                }
            }
        }
        return products;
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String payment = request.getParameter("payment");

    // Retrieve the cart products from the session
    HttpSession session = request.getSession();
    List<product> cartProducts = getCartProducts(session);

    // Process the order and customer information
    // (You can add your logic here to save the order, process the payment, etc.)

    // Clear the cart session after successful checkout
    session.removeAttribute("cart");

    // Redirect to a success page or display a success message
    response.sendRedirect("success.jsp");
}
}