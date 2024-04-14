/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kavindu
 */
public class RegistrationServlet extends HttpServlet {


//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }


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
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String umobile = request.getParameter("contact");
        
//        PrintWriter out = response.getWriter();
//        out.println(uname);
//        out.println(uemail);
//        out.println(upwd);
//        out.println(umobile);
        
        RequestDispatcher dispatcher = null;
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "");
            PreparedStatement pst = con.prepareStatement("INSERT INTO users(uname, upwd, uemail, umobile) VALUES(?,?,?,?)");
            pst.setString(1, uname);
            pst.setString(2, upwd);
            pst.setString(3, uemail);
            pst.setString(4, umobile);
            
            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("registration.jsp");
            if(rowCount > 0){
                 request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try{
                con.close();
            } catch(SQLException e){
                e.printStackTrace();
            }
        }
    }


}
