<%@include file="DBCON.jsp" %>
<%@include file="ViewCustomer.jsp" %>
<html>
    <body>
        <%
            try
            {
                String choice = request.getParameter("choice");
                String Customerviewquery = "";
                
                if(choice.equalsIgnoreCase("customername"))
                {
                    String cn = request.getParameter("cuchoice");
                    Customerviewquery = "select * from account where c_name='"+cn+"';";
                }
                else if(choice.equalsIgnoreCase("address"))
                {
                    String cn = request.getParameter("cuchoice");
                    Customerviewquery = "select * from account where c_add='"+cn+"';";
                }
                else
                {
                    Customerviewquery = "select * from account;";
                }
                
                Statement stmt = con.createStatement();
                
                ResultSet rs1 = stmt.executeQuery(Customerviewquery);
                while(rs1.next())
                {
                    out.println(" "+rs1.getString(1));
                    out.println(" "+rs1.getString(2));
                    out.println(" "+rs1.getString(3));
                    out.println(" "+rs1.getString(4));
                    out.println(" "+rs1.getString(5));
                    out.println(" "+rs1.getString(6));
                    out.println(" "+rs1.getString(7));
                    out.println(" "+rs1.getString(8));
                    out.println("<br>");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
