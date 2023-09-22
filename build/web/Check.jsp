<%@include file="DBCON.jsp" %>
<%@page import="java.util.Date" %>

<html>
    <body>
        <%            String role = request.getParameter("role");
            String loginid = request.getParameter("username");
            String password = request.getParameter("password");

            session.setAttribute("login_id", loginid);
            session.setAttribute("login_time", new Date());

            try {
                String viewquery = "select c_name from account where acc_no='"+loginid+"'";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);

                while (rs.next()) {
                    out.println("  "+rs.getString(1));
                    break;
                }
                //out.println("  "+rs.getString(2));
                String sname = rs.getString(1);
                session.setAttribute("acc_name", sname);

                String viewaccountquery = "Select * from account ";
                Statement stmt = con.createStatement();

                ResultSet rs1 = stmt.executeQuery(viewaccountquery);

                int count = 0;
                while (rs1.next()) {
                    //out.println(" "+rs1.getString(1));              ///account number
                    //out.println(" "+rs1.getString(9));              ///role
                    //out.println(" "+rs1.getString(10));             ///password

                    //out.println("<br>");
                    if (role.equalsIgnoreCase(rs1.getString(9)) && loginid.equalsIgnoreCase(rs1.getString(1)) && password.equalsIgnoreCase(rs1.getString(10))) {
                        count++;
                        break;
                    }
                }
                if (count > 0) {
                    if (role.equalsIgnoreCase("Admin")) {
                        //out.println("Admin login success");
                        response.sendRedirect("AdminLogin.jsp");
                    } else {
                        //out.println("Customer login success");
                        response.sendRedirect("CustomerLogin.jsp");
                    }
                } else {
                    RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                    dis.include(request, response);

                    out.println("<h3><center>Invalid User ID or password</center></h3> ");
                }
            } catch (Exception e) {
                out.println(e);
            }

        %>
    </body>
</html>
