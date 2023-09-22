package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class CashDeposit_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("             *{\n");
      out.write("                font-family: arial;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                margin: 20px;\n");
      out.write("                background-image: url('bank2.png');\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("               }\n");
      out.write("\n");
      out.write("\n");
      out.write("            p{\n");
      out.write("                font-size: 20px;\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("            h2{\n");
      out.write("                text-align: center;\n");
      out.write("                color: white;\n");
      out.write("                font-size: 50;\n");
      out.write("                font-weight: 600;\n");
      out.write("            }\n");
      out.write("            .card {\n");
      out.write("                /* Add shadows to create the \"card\" effect */\n");
      out.write("                margin: 5% 35% 0 35%;\n");
      out.write("                padding: 25px;\n");
      out.write("                background-color: #EAEDED;\n");
      out.write("                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);\n");
      out.write("                transition: 0.3s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* On mouse-over, add a deeper shadow */\n");
      out.write("            .card:hover {\n");
      out.write("                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Add some padding inside the card container */\n");
      out.write("            .container {\n");
      out.write("                padding: 2px 16px;\n");
      out.write("            }\n");
      out.write("            /*Add textbox style*/\n");
      out.write("            .textbox{\n");
      out.write("                margin-bottom: 25px;\n");
      out.write("                padding: 5px;\n");
      out.write("                border: 0;\n");
      out.write("                background-color: #EAEDED;\n");
      out.write("                border-bottom: 2px solid #8E44AD;\n");
      out.write("                font-size: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*Add style for sign in button */\n");
      out.write("            .btn_Next{\n");
      out.write("                margin-top: 15px;\n");
      out.write("                width: 150px;\n");
      out.write("                border:0;\n");
      out.write("                background-color: #3498DB;\n");
      out.write("                color: #fff;\n");
      out.write("                padding: 10px 25px 10px 25px;\n");
      out.write("                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);\n");
      out.write("            }\n");
      out.write("            /*On mouse-over, add a deeper shadow*/\n");
      out.write("            .btn_Next:hover{\n");
      out.write("                font-size: 15px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.3);\n");
      out.write("                background-color: #2874A6;\n");
      out.write("            }\n");
      out.write("            /*Add style for sign in button */\n");
      out.write("            .btn_signin{\n");
      out.write("                margin-top: 15px;\n");
      out.write("                width: 150px;\n");
      out.write("                border:0;\n");
      out.write("                background-color: #2ECC71;\n");
      out.write("                color: #fff;\n");
      out.write("                padding: 10px 25px 10px 25px;\n");
      out.write("                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);\n");
      out.write("            }\n");
      out.write("            /*On mouse-over, add a deeper shadow*/\n");
      out.write("            .btn_signin:hover{\n");
      out.write("                font-size: 15px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.3);\n");
      out.write("                background-color: #239B56;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#cfd1d4\">\n");
      out.write("        ");
 
            Random rm= new Random();
        
      out.write("\n");
      out.write("        <h2 >Deposit for customer</h2>\n");
      out.write("        <form action=\"CashDepositDBMS.jsp\" method=\"post\">\n");
      out.write("             <div class=\"card\">\n");
      out.write("                <div class=\"container\" >\n");
      out.write("            <p>Account Number</p>\n");
      out.write("                    <input  class=\"textbox\" type=\"text\" name=\"accno\">\n");
      out.write("               <p>Reference</p>\n");
      out.write("                   <input class=\"textbox\" type=\"text\" name=\"refname\">\n");
      out.write("               \n");
      out.write("                    <p>Date of Transaction</p>\n");
      out.write("                    <input  class=\"textbox\" type=\"date\" name=\"dot\">\n");
      out.write("               \n");
      out.write("                    <p>Transaction Id</p>\n");
      out.write("                    <input class=\"textbox\" type=\"text\" name=\"trid\" value=\"");
      out.print(rm.nextInt());
      out.write("\">\n");
      out.write("               \n");
      out.write("                    <p>Deposit Amount</p>\n");
      out.write("                    <input class=\"textbox\" type=\"text\" name=\"depamt\">\n");
      out.write("               \n");
      out.write("                    <input class=\"btn_signin\" type=\"submit\" name=\"b1\" value=\"Deposit\">\n");
      out.write("               \n");
      out.write("                </div>\n");
      out.write("             </div>\n");
      out.write("        </form>\n");
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
