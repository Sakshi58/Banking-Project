<%@include file="DBCON.jsp" %>
<%@include file="ViewStatement.jsp" %>
<html>
    <body>
        <%
             try
            {
                String choice = request.getParameter("choice");
                String Statementviewquery = "";
                
                if(choice.equalsIgnoreCase("AccountNo"))
                {
                    String chaccount = request.getParameter("cuchoice");
                    Statementviewquery = "select * from "+chaccount;
                }
                
                else
                {
                    Statementviewquery = "select * from transactionbank ";
                }
                
                Statement stmt1 = con.createStatement();
                
                ResultSet rs1 = stmt1.executeQuery(Statementviewquery);
                while(rs1.next())
                {
                    out.println(" "+rs1.getString(1));
                    out.println(" "+rs1.getString(2));
                    out.println(" "+rs1.getString(3));
                    out.println(" "+rs1.getString(4));
                    out.println(" "+rs1.getString(5));
                    out.println(" "+rs1.getString(6));
                    out.println(" "+rs1.getString(7));
                    
                    out.println("<br>");
                }
            }
            catch(Exception e)
            {
                out.println("No record found!! "+e);
            }
        %>
    </body>
</html>
