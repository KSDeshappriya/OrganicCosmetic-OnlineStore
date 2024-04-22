package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Product_002dManagement_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Add New Product</title>\n");
      out.write("   \n");
      out.write("    <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Styles.css\">\n");
      out.write("    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            padding: 20px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-transparent\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"index.jsp\">\n");
      out.write("                <img src=\"images/logo.png\" alt=\"Logo\" />\n");
      out.write("            </a>\n");
      out.write(" \n");
      out.write("            <div class=\"nav\">\n");
      out.write("                <a href=\"Oder-Management.jsp\" class=\"btn btn-coolNav mx-2\">\n");
      out.write("                    <i class='bx bxs-shopping-bag icon-box'></i>\n");
      out.write("                    Order Management\n");
      out.write("                </a>\n");
      out.write("                <a href=\"Product-Management.jsp\" class=\"btn btn-coolNav\">\n");
      out.write("                    <i class='bx bxs-package icon-box'></i>\n");
      out.write("                    Product Management\n");
      out.write("                </a>\n");
      out.write("                <a href=\"Sales-Analitics.jsp\" style=\"font-size: 2.1vh;\" class=\"btn btn-coolNav\">\n");
      out.write("                    <i class='bx bx-line-chart icon-box'></i>\n");
      out.write("                    Sales Analytics\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <br><br>\n");
      out.write("\n");
      out.write("    <div class=\"container5\">\n");
      out.write("        <h1 class=\"mt-4 mb-4\">Add New Product</h1>\n");
      out.write("        <form action=\"Myservlet\" method=\"POST\"  enctype=\"multipart/form-data\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"productName\">Product Name:</label>\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"productName\" name=\"productName\" required>\n");
      out.write("            </div>\n");
      out.write("<!--            <div class=\"form-group\">\n");
      out.write("                <label for=\"productDesc\">Description:</label>\n");
      out.write("                <textarea class=\"form-control\" id=\"productDesc\" name=\"productDesc\" rows=\"3\" required></textarea>\n");
      out.write("            </div>-->\n");
      out.write("<!--            <div class=\"form-group\">\n");
      out.write("                <label for=\"productPrice\">Price:</label>\n");
      out.write("                <input type=\"number\" class=\"form-control\" id=\"productPrice\" name=\"productPrice\" step=\"0.01\" required>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"productImage\">Image:</label>\n");
      out.write("                <input type=\"file\" class=\"form-control-file\" id=\"productImage\" name=\"productImage\" accept=\"image/*\" required>\n");
      out.write("            </div>-->\n");
      out.write("            <button type=\"submit\" class=\"btn btn-custom\">Add Product</button>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script src=\"Js/scripts.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
