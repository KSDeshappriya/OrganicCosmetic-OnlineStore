package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" <!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Live Life Cleam</title>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/chart.js\"></script>\n");
      out.write("    \n");
      out.write("    <link href=\"Styles.css\" rel='stylesheet'>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body data-bs-spy=\"scroll\" data-bs-target=\"#navbar\" data-bs-root-margin=\"0px 0px -40%\" data-bs-smooth-scroll=\"true\"\n");
      out.write("    tabindex=\"0\">\n");
      out.write("    <form>\n");
      out.write("\n");
      out.write("        <section class=\"header-section\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-transparent\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.jsp\">\n");
      out.write("                        <img src=\"images/logo.png\" alt=\"Logo\" />\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <div class=\"nav\">\n");
      out.write("                        <a href=\"Oder-Management.jsp\" class=\"btn btn-coolNav mx-2\">\n");
      out.write("                            <i class='bx bxs-shopping-bag icon-box'></i>\n");
      out.write("                            Order Management\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"Product-Management.jsp\" class=\"btn btn-coolNav\">\n");
      out.write("                            <i class='bx bxs-package icon-box'></i>\n");
      out.write("                            Product Management\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"Sales-Analitics.jsp\" style=\"font-size: 2.1vh;\" class=\"btn btn-coolNav\">\n");
      out.write("                            <i class='bx bx-line-chart icon-box'></i>\n");
      out.write("                            Sales Analytics\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <h1 class=\"welcome-text top\">\n");
      out.write("                    <span style=\"color: white;\">Live</span>\n");
      out.write("                     <span style=\"color: rgb(255, 87, 25)\">Life</span>\n");
      out.write("                      <span style=\"color: white;\">Cleam</span></h1>\n");
      out.write("                <h2 class=\"welcome-text bot\" id=\"typer\">Discovering Authentic Flavors from Around the World...</h2>\n");
      out.write("                <button class=\"btn btn-outline-primary btn-cool rounded-pill\">See More...</button>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"topHead container-fluid\">\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"col-md-6 \">\n");
      out.write("                    <h1 class=\"mt-4 mb-4\">Orgenic Skin Care Products</h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"container1\">\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6\">\n");
      out.write("                    <h2>Product Management</h2>\n");
      out.write("                    <p>Click below to manage products:</p>\n");
      out.write("                    <a href=\"Product-Management.jsp\" class=\"btn btn-custom\">Product Management</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"OderMng col-md-6\">\n");
      out.write("                    <h2>Order Management</h2>\n");
      out.write("                    <p>Click below to manage orders:</p>\n");
      out.write("                    <a href=\"Oder-Management.jsp\" class=\"btn btn-custom\">Order Management</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"overview-section\">\n");
      out.write("                <h2>Sales Overview</h2>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"chart-container1\">\n");
      out.write("                            <canvas id=\"totalSalesChart\"></canvas>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"chart-container1\">\n");
      out.write("                            <canvas id=\"monthlySalesChart\"></canvas>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"overview-section\">\n");
      out.write("                <h2>Orders Overview</h2>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"chart-container1\">\n");
      out.write("                            <canvas id=\"totalOrdersChart\"></canvas>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"chart-container1\">\n");
      out.write("                            <canvas id=\"pendingOrdersChart\"></canvas>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer class=\"footer fixed-bottom py-2\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12 text-right footer\">\n");
      out.write("                    <p class=\"mb-0\">&copy; 2024 Global Flavors Hub. All rights reserved.</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"Js/scripts.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
