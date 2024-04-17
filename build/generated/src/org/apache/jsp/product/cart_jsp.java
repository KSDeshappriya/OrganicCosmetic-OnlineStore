package org.apache.jsp.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import product.product;
import product.DBConnection;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<!--\r\n");
      out.write("\r\n");
      out.write("\tFree for personal and commercial use under the CCA 3.0 license \r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>Cart</title>\r\n");
      out.write("\t\t<meta charset=\"utf-8\" />\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"product/assets/css/main.css\" />\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body class=\"homepage is-preload\">\r\n");
      out.write("\t\t<div id=\"page-wrapper\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- Header -->\r\n");
      out.write("\t\t\t\t<section id=\"header\" class=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- Logo -->\r\n");
      out.write("\t\t\t\t\t\t<div id=\"logo\">\r\n");
      out.write("\t\t\t\t\t\t\t<h1><a href=\"index.jsp\">Cart</a></h1>\r\n");
      out.write("\t\t\t\t\t\t\t<p>A free responsive site template by HTML5 UP</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- Nav -->\r\n");
      out.write("\t\t\t\t\t\t<nav id=\"nav\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"../home/index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t \t\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"productlist.jsp\">Products</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\">Category</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Category 1</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Category 2</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Category 3</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\">Sed consequat</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Lorem dolor</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Amet consequat</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Magna phasellus</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Etiam nisl</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Sed feugiat</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Category 4</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t<!-- \t\t\t\t<li><a href=\"left-sidebar.html\">Left Sidebar</a></li>\t\t-->\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"contactus.jsp\">Contact Us</a></li>\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"aboutus.jsp\">About Us</a></li>\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"current\"><a href=\"cart.jsp\">Cart</a></li>\r\n");
      out.write("\t\t\t<!-- \t\t\t\t<li><a href=\"no-sidebar.html\">No Sidebar</a></li>\t\t\t-->\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</nav>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- Main -->\r\n");
      out.write("\t\t\t\t<section id=\"main\" class=\"wrapper style3\">\r\n");
      out.write("\t\t\t\t\t<div class=\"title\">The Details</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<!-- Features -->\r\n");
      out.write("\t\t\t\t\t\t\t<section id=\"features\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<header class=\"style1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2>Dolor consequat feugiat amet veroeros</h2>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Feugiat dolor nullam orci pretium phasellus justo</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t</header>\r\n");
      out.write("                                                            \r\n");
      out.write("                                                            <form action=\"#\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"feature-list\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("                                                                                                                                ");

                                                            List<product> products = (List<product>) request.getAttribute("products");
                                                            if (products != null) {
                                                                System.out.println("Products in cart: " + products.size());
                                                            } else {
                                                                System.out.println("No products in cart");
                                                            }
                                                        
      out.write("      \r\n");
      out.write("                                                        <table>\r\n");
      out.write("                                                                    <tr>\r\n");
      out.write("                                                                        <th><h2>Product ID<h2></th>\r\n");
      out.write("                                                                        <th><h2>Image<h2></th>\r\n");
      out.write("                                                                        <th><h2>Product Name<h2></th>\r\n");
      out.write("                                                                        <th><h2>category<h2></th>\r\n");
      out.write("                                                                        \r\n");
      out.write("                                                                        <th><h2>product_description<h2></th>\r\n");
      out.write("                                                                        <th><h2>Price<h2></th>\r\n");
      out.write("                                                                        <th><h2>Select<h2></th>\r\n");
      out.write("                                                                    </tr>\r\n");
      out.write("                                                              <div class=\"col-6 col-12-medium\">\r\n");
      out.write("                                                                 \r\n");
      out.write("                                                                  ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write(" \r\n");
      out.write("                                                                                  \r\n");
      out.write("                                                              </div>             \r\n");
      out.write("                                                          </table>\r\n");
      out.write("                                                                                    \r\n");
      out.write("                                                      \r\n");
      out.write("                                       \r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"actions special\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\" class=\"button style1 large\">GO Back</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\" class=\"button style2 large\">Checkout Now</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("                                                        </section>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- Footer -->\r\n");
      out.write("\t\t\t\t<section id=\"footer\" class=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t<div class=\"title\">The Rest Of It</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t\t<header class=\"style1\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2>Ipsum sapien elementum portitor?</h2>\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\tSed turpis tortor, tincidunt sed ornare in metus porttitor mollis nunc in aliquet.<br />\r\n");
      out.write("\t\t\t\t\t\t\t\tNam pharetra laoreet imperdiet volutpat etiam feugiat.\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t</header>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-6 col-12-medium\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Contact Form -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<form method=\"post\" action=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row gtr-50\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-6 col-12-small\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"name\" id=\"contact-name\" placeholder=\"Name\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-6 col-12-small\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"email\" id=\"contact-email\" placeholder=\"Email\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea name=\"message\" id=\"contact-message\" placeholder=\"Message\" rows=\"4\"></textarea>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"actions\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><input type=\"submit\" class=\"style1\" value=\"Send\" /></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><input type=\"reset\" class=\"style2\" value=\"Reset\" /></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-6 col-12-medium\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Contact -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<section class=\"feature-list small\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-6 col-12-small\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"icon solid fa-home\">Mailing Address</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tUntitled Corp<br />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t1234 Somewhere Rd<br />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tNashville, TN 00000\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-6 col-12-small\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"icon solid fa-comment\">Social</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\">@untitled-corp</a><br />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\">linkedin.com/untitled</a><br />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\">facebook.com/untitled</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-6 col-12-small\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"icon solid fa-envelope\">Email</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\">info@untitled.tld</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-6 col-12-small\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"icon solid fa-phone\">Phone</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t(000) 555-0000\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</section>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"copyright\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>&copy; Untitled.</li><li>Design: <a href=\"\">HTML</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- Scripts -->\r\n");
      out.write("\t\t\t<script src=\"assets/js/jquery.min.js\"></script>\r\n");
      out.write("\t\t\t<script src=\"assets/js/jquery.dropotron.min.js\"></script>\r\n");
      out.write("\t\t\t<script src=\"assets/js/browser.min.js\"></script>\r\n");
      out.write("\t\t\t<script src=\"assets/js/breakpoints.min.js\"></script>\r\n");
      out.write("\t\t\t<script src=\"assets/js/util.js\"></script>\r\n");
      out.write("\t\t\t<script src=\"assets/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${products}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("product");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                                                  \r\n");
          out.write("                                                                                   <tr>     \r\n");
          out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td><h3 class=\"icon fa-comment\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h3></td>\r\n");
          out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td><p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getImage()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p></td>\r\n");
          out.write("                                                                                                <td><p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p></td>\r\n");
          out.write("                                                                                                <td><p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getCategory()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p></td>\r\n");
          out.write("                                                                                                <td><p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getDescription()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p></td>\r\n");
          out.write("                                                                                                <td><p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getPrice()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p></td>\r\n");
          out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td><label for=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></label><p><input type=\"checkbox\" id=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" name=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></p></td>\r\n");
          out.write("\t\t\t\t\t\t\t\t\t\t  </tr>\r\n");
          out.write("                                                                                 \r\n");
          out.write("                                                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
