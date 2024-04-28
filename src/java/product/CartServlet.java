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
import product.Product;
import product.DBConnection;

public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if (action != null && action.equalsIgnoreCase("add")) {
            int productId = Integer.parseInt(request.getParameter("id"));
            addToCart(session, productId);
            response.sendRedirect("Buyer/product/productlist.jsp");
        } else if (action != null && action.equalsIgnoreCase("view")) {
            List<Integer> cart = (List<Integer>) session.getAttribute("cart");
            System.out.println("Cart contents: " + cart);

            List<Product> cartProducts = getCartProducts(session);
            request.setAttribute("products", cartProducts);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer/product/cart.jsp");
            dispatcher.forward(request, response);
        }
    }

    private void addToCart(HttpSession session, int productId) {
        List<Integer> cart = (List<Integer>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }
        cart.add(productId);
    }

    private List<Product> getCartProducts(HttpSession session) {
        List<Integer> cart = (List<Integer>) session.getAttribute("cart");
        List<Product> products = new ArrayList<>();
        if (cart != null) {
            DBConnection dbConnection = new DBConnection();
            for (int productId : cart) {
                System.out.println("Fetching product with ID: " + productId);
                Product product = dbConnection.getProductById(productId);
                if (product != null) {
                    products.add(product);
                }
            }
        }
        return products;
    }
}