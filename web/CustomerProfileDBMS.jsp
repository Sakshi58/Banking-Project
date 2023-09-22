<%@include file="DBCON.jsp" %>

<html>
    <body>
        Welcome <%=session.getAttribute("login_id")%> 
        <%
            try
            {
                String customerprofilequery = "select * from account where acc_no='"+session.getAttribute("login_id")+"'";
                Statement smt = con.createStatement();
                
                ResultSet rs = smt.executeQuery(customerprofilequery);
                
                while(rs.next())
                {
                    out.println("<br><br> ");
                    out.println("Account No. :  "+rs.getString(1));
                    out.println("<br> ");
                    out.println("Customer Name:  "+rs.getString(2));
                    out.println("<br> ");
                    out.println("Father name:  "+rs.getString(3));
                    out.println("<br> ");
                    out.println("DOB : "+rs.getString(4));
                    out.println("<br> ");
                    out.println("Gender:  "+rs.getString(5));
                    out.println("<br> ");
                    out.println("Account Opening Date:   "+rs.getString(6));
                    out.println("<br> ");
                    out.println("Address:  "+rs.getString(7));
                    out.println("<br> ");
                    out.println("Contact :  "+rs.getString(8));
                    out.println("<br> ");
                    out.println("Role :  "+rs.getString(9));
                    out.println("<br> ");
                    out.println("Password :  "+rs.getString(10));
                    out.println("<br> ");
                    out.println("Security Question:  "+rs.getString(11));
                    out.println("<br> ");
                    out.println("Security Answer :  "+rs.getString(12));
                }
            }
            catch(Exception e)
            {
                out.println("no data found !!!!... "+e);
            }
        %>
    </body>
</html>
