<%@include file="DBCON.jsp" %>
<html>
    <body>
        <%
            try
            {
                int lastbal=0;
                String viewquery = "select * from transactionbank";
                Statement stmt = con.createStatement();
                ResultSet rs2 = stmt.executeQuery(viewquery);
                
                while(rs2.next())
                {
                    lastbal = rs2.getInt(7);
                }
                
                String accno = request.getParameter("accno");
                String refname = request.getParameter("refname");
                String dot = request.getParameter("dot");
                String trid = request.getParameter("trid");
                int depamt = Integer.parseInt(request.getParameter("depamt"));
//                int netbalance = Integer.parseInt(request.getParameter("netbal"));
                
                String depositquery = "insert into transactionbank values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst1 = con.prepareStatement(depositquery);
                
                pst1.setString(1, accno);
                pst1.setString(2, refname);
                pst1.setString(3, dot);
                pst1.setString(4, trid);
                pst1.setInt(5, depamt);
                pst1.setInt(6, 0);
                pst1.setInt(7, (depamt+lastbal));
                
                pst1.executeUpdate();
                
                out.println("Transaction deposit successfully..");
                
                //-------------for customerr-------------///////
                
                int lastbalcustomer=0;
                String viewquerylastcustomer = "select * from "+accno;
                Statement stmt2 = con.createStatement();
                ResultSet rs3 = stmt2.executeQuery(viewquerylastcustomer);
                
                while(rs3.next())
                {
                    lastbalcustomer = rs3.getInt(7);
                }
                
                String depositquerycustomer = "insert into "+accno+" values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst2 = con.prepareStatement(depositquerycustomer);
                
                pst2.setString(1, accno);
                pst2.setString(2, refname);
                pst2.setString(3, dot);
                pst2.setString(4, trid);
                pst2.setInt(5, depamt);
                pst2.setInt(6, 0);
                pst2.setInt(7, (lastbalcustomer+ depamt));
                
                pst2.executeUpdate();
                
                out.println("cash deposit in customer "+accno+" table successfully...");
                 
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
