package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CustomerLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Customer Login</title>\n");
      out.write("        <style>\n");
      out.write("            *{\n");
      out.write("\n");
      out.write("                font-family: arial;\n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin: 20px;\n");
      out.write("                background-image: url('bg.jpg');\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                font-weight: 600;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .nav\n");
      out.write("            {\n");
      out.write("                width: 100%;\n");
      out.write("                height: 20%;\n");
      out.write("                background-color:#adb5bd;   \n");
      out.write("                padding-top: 50px;\n");
      out.write("            }\n");
      out.write("            .container\n");
      out.write("            {\n");
      out.write("                alignment-adjust: line;\n");
      out.write("                display: flex;\n");
      out.write("                flex-direction: column;\n");
      out.write("                flex-wrap:nowrap;\n");
      out.write("                gap: 5px;\n");
      out.write("                gap: 10px 20px; /* row-gap column gap */\n");
      out.write("                // row-gap: 10px;\n");
      out.write("                column-gap: 20px;\n");
      out.write("                font-size: 20;\n");
      out.write("                font-weight: 500;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h2 align=\"center\" class=\"nav\">Welcome, ");
      out.print(session.getAttribute("login_id"));
      out.write(" Customer Login\n");
      out.write("            <br>\n");
      out.write("            ");
      out.print(session.getAttribute("login_time"));
      out.write("\n");
      out.write("        </h2>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("            <div class=\"container\">\n");
      out.write("            <a href=\"CustomerStatement.jsp\">View Statement</a><br>\n");
      out.write("            <a href=\"CustomerProfile.jsp\">Customer Profile</a><br>\n");
      out.write("            <a href=\"ChangePassword.jsp\">Customer Change Password</a><br>\n");
      out.write("            <a href=\"CustomerFundTransfer.jsp\">Customer Fund Transfer</a><br>\n");
      out.write("            <a href=\"Info.jsp\">Information</a><br>\n");
      out.write("            </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
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
