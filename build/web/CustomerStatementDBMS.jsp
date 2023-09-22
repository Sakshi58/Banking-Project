<%@include file="DBCON.jsp" %>
<html>
    <body>
        Welcome <%=session.getAttribute("login_id")%>
        <%
            try {
                String customerstatementview = "select *from "+session.getAttribute("login_id");

                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(customerstatementview);

                while (rs.next()) 
                {
                    out.println(" " + rs.getString(1));
                    out.println(" " + rs.getString(2));
                    out.println(" " + rs.getString(3));
                    out.println(" " + rs.getString(4));
                    out.println(" " + rs.getInt(5));
                    out.println(" " + rs.getInt(6));
                    out.println(" " + rs.getInt(7));
                    
                    out.println("<br> ");
                }
            } catch (Exception e) {
                out.println("errorr...." + e);
            }
        %>
    </body>
</html>
