/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.13
 * Generated at: 2023-10-27 09:15:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class AboutUs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>RouteMaste</title>\r\n");
      out.write("    <style>\r\n");
      out.write("        @font-face {\r\n");
      out.write("        font-family: 'Roboto-Light'; /* Font family name */\r\n");
      out.write("        src: url('Fonts/Roboto-Light.ttf') format('truetype'); /* URL to your font file */\r\n");
      out.write("        font-weight: normal;\r\n");
      out.write("        font-style: italic;\r\n");
      out.write("        }\r\n");
      out.write("        @font-face {\r\n");
      out.write("        font-family: 'Raleway-Light'; /* Font family name */\r\n");
      out.write("        src: url('Fonts/Raleway-Light.ttf') format('truetype'); /* URL to your font file */\r\n");
      out.write("        font-weight: normal;\r\n");
      out.write("        font-style: italic;\r\n");
      out.write("        }\r\n");
      out.write("        @font-face {\r\n");
      out.write("        font-family: 'Roboto-Bold'; /* Font family name */\r\n");
      out.write("        src: url('Fonts/Roboto-Bold.ttf') format('truetype'); /* URL to your font file */\r\n");
      out.write("        font-weight: normal;\r\n");
      out.write("        font-style: italic;\r\n");
      out.write("        }\r\n");
      out.write("        a{	\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("        }\r\n");
      out.write("        body{\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("			background-color: #FAD961;\r\n");
      out.write("			background-image: linear-gradient(90deg, #FAD961 0%, #F76B1C 100%);\r\n");
      out.write("            background-size: cover;\r\n");
      out.write("            background-repeat: no-repeat;\r\n");
      out.write("            background-position: center;\r\n");
      out.write("            height: 100vh;\r\n");
      out.write("            \r\n");
      out.write("        }\r\n");
      out.write("      \r\n");
      out.write("        .head{\r\n");
      out.write("            display: flex;\r\n");
      out.write("            flex-direction: row;\r\n");
      out.write("            justify-content: right;\r\n");
      out.write("        }\r\n");
      out.write("        header h3{\r\n");
      out.write("            color: var(--div-color1);\r\n");
      out.write("            font-size:1rem;\r\n");
      out.write("            margin-right: 3rem;\r\n");
      out.write("            cursor: grab;\r\n");
      out.write("            padding: 0.5rem;\r\n");
      out.write("            border-radius: 0.5rem;\r\n");
      out.write("            outline: none;\r\n");
      out.write("            font-family: 'Roboto-Light'; \r\n");
      out.write("        }\r\n");
      out.write("        h1{\r\n");
      out.write("          font-size: 2.5rem;\r\n");
      out.write("          text-align: center;\r\n");
      out.write("          margin-top: 3rem;\r\n");
      out.write("        }\r\n");
      out.write("        h2{\r\n");
      out.write("            font-size: 2rem;\r\n");
      out.write("          text-align: center;\r\n");
      out.write("          margin-top: 3rem;\r\n");
      out.write("          font-family: 'Roboto-Bold';\r\n");
      out.write("          width: 50rem;\r\n");
      out.write("          margin-left: auto;\r\n");
      out.write("          margin-right: auto;\r\n");
      out.write("          line-height: 3rem;\r\n");
      out.write("        }\r\n");
      out.write("        h4{\r\n");
      out.write("            font-family: 'Roboto-Light'; \r\n");
      out.write("            font-size: 1rem;\r\n");
      out.write("            width: 40rem;\r\n");
      out.write("            margin-left: auto;\r\n");
      out.write("            margin-right: auto;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            line-height: 2rem;\r\n");
      out.write("        }\r\n");
      out.write("        </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <header>\r\n");
      out.write("        <div class=\"head\">\r\n");
      out.write("           <a href=\"Home.jsp\"><h3 id=\"m1\">Home</h3></a>\r\n");
      out.write("           <a href=\"AboutUs.jsp\"><h3 id=\"m2\">About</h3></a>\r\n");
      out.write("            <a href=\"ContactUS.jsp\"><h3 id=\"m3\">Contact</h3></a>\r\n");
      out.write("           <a href=\"login.jsp\"><h3 id=\"m4\">Login</h3></a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <main>\r\n");
      out.write("        <h1>About Us</h1>\r\n");
      out.write("        <h2>Welcome to RouteMaster - Your Ultimate Bus Ticket Reservation Platform!</h2>\r\n");
      out.write("        <h4>At RouteMaster, we're dedicated to simplifying your journey. We understand that travel should be a seamless and enjoyable experience, \r\n");
      out.write("            and that's why we've created a platform that makes booking bus tickets as easy as a walk in the park.</h4>\r\n");
      out.write("    </main>\r\n");
      out.write("    <script>\r\n");
      out.write("\r\n");
      out.write("        var M1=document.getElementById(\"m1\");\r\n");
      out.write("        var M2=document.getElementById(\"m2\");\r\n");
      out.write("        var M3=document.getElementById(\"m3\");\r\n");
      out.write("        var M4=document.getElementById(\"m4\");\r\n");
      out.write("        var BTN=document.getElementById(\"btn\");\r\n");
      out.write("    \r\n");
      out.write("        M1.onmousemove=function(){\r\n");
      out.write("          M1.style.backgroundColor=\"var(--div-color3)\";\r\n");
      out.write("          M1.style.color=\"var(--div-color4)\";\r\n");
      out.write("        }\r\n");
      out.write("        M1.onmouseout=function(){\r\n");
      out.write("          M1.style.backgroundColor=\"\";\r\n");
      out.write("          M1.style.color=\"var(--div-color1)\";\r\n");
      out.write("        }\r\n");
      out.write("        M2.onmousemove=function(){\r\n");
      out.write("          M2.style.backgroundColor=\"var(--div-color3)\";\r\n");
      out.write("          M2.style.color=\"var(--div-color4)\";\r\n");
      out.write("        }\r\n");
      out.write("        M2.onmouseout=function(){\r\n");
      out.write("          M2.style.backgroundColor=\"\";\r\n");
      out.write("          M2.style.color=\"var(--div-color1)\";\r\n");
      out.write("        }\r\n");
      out.write("        M3.onmousemove=function(){\r\n");
      out.write("          M3.style.backgroundColor=\"var(--div-color3)\";\r\n");
      out.write("          M3.style.color=\"var(--div-color4)\";\r\n");
      out.write("        }\r\n");
      out.write("        M3.onmouseout=function(){\r\n");
      out.write("          M3.style.backgroundColor=\"\";\r\n");
      out.write("          M3.style.color=\"var(--div-color1)\";\r\n");
      out.write("        }\r\n");
      out.write("        M4.onmousemove=function(){\r\n");
      out.write("          M4.style.backgroundColor=\"var(--div-color3)\";\r\n");
      out.write("          M4.style.color=\"var(--div-color4)\";\r\n");
      out.write("        }\r\n");
      out.write("        M4.onmouseout=function(){\r\n");
      out.write("          M4.style.backgroundColor=\"\";\r\n");
      out.write("          M4.style.color=\"var(--div-color1)\";\r\n");
      out.write("        }\r\n");
      out.write("        /* Above javascript code must include all tha page.don't change the code.*/\r\n");
      out.write("        BTN.onmousemove=function(){\r\n");
      out.write("          BTN.style.color=\"var(--div-color1)\";\r\n");
      out.write("          BTN.style.backgroundColor=\"var(--div-color4)\";\r\n");
      out.write("        }\r\n");
      out.write("        BTN.onmouseout=function(){\r\n");
      out.write("          BTN.style.color=\"var(--div-color4)\";\r\n");
      out.write("          BTN.style.backgroundColor=\"var(--div-color1)\";\r\n");
      out.write("        }\r\n");
      out.write("       </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
