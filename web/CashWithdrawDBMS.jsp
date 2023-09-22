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
                int wthamt = Integer.parseInt(request.getParameter("wthamt"));
                
                String wthinsertquery= "insert into transactionbank values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst2 = con.prepareStatement(wthinsertquery);
                
                pst2.setString(1, accno);
                pst2.setString(2, refname);
                pst2.setString(3, dot);
                pst2.setString(4, trid);
                pst2.setInt(5, 0);
                pst2.setInt(6, wthamt);
                pst2.setInt(7, (lastbal-wthamt));
                
                pst2.executeUpdate();
                
                out.println("Withdrawal  Successfull!");
                
                //-------------for customer---------//
                
                int lastbalcustomer=0;
                String viewquerylastcustomer = "select * from "+accno;
                Statement stmt2 = con.createStatement();
                ResultSet rs3 = stmt2.executeQuery(viewquerylastcustomer);
                
                while(rs3.next())
                {
                    lastbalcustomer = rs3.getInt(7);
                }
                
                String wthinsertquerycustomer= "insert into "+accno+" values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst3 = con.prepareStatement(wthinsertquerycustomer);
                
                pst3.setString(1, accno);
                pst3.setString(2, refname);
                pst3.setString(3, dot);
                pst3.setString(4, trid);
                pst3.setInt(5, 0);
                pst3.setInt(6, wthamt);
                pst3.setInt(7, (lastbalcustomer-wthamt));
                
                pst3.executeUpdate();
                
                out.println("Wthdrawal sucessful and table "+accno+" updated...");
            }
          catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>
