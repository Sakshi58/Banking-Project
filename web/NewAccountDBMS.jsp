<%@include file="DBCON.jsp" %>
<html>
    <body>
        <%
            try
            {
                String acno = request.getParameter("acno");
                String cname = request.getParameter("cname");
                String cfname = request.getParameter("cfname");
                String cdob = request.getParameter("cdob");
                String cgender = request.getParameter("cgender");
                String opdate = request.getParameter("opdate");
                String cadd = request.getParameter("cadd");
                String ccontact = request.getParameter("ccontact");
                String role = request.getParameter("role");
                String password = request.getParameter("password");
                String secques = request.getParameter("secques");
                String secans = request.getParameter("secans");
                
                String accountinsertquery="Insert into account values(?,?,?,?,?,?,?,?,?,?,?,?);";
                PreparedStatement pst1 = con.prepareStatement(accountinsertquery);
                
                pst1.setString(1, acno);
                pst1.setString(2, cname);
                pst1.setString(3, cfname);
                pst1.setString(4, cdob);
                pst1.setString(5, cgender);
                pst1.setString(6, opdate);
                pst1.setString(7, cadd);
                pst1.setString(8, ccontact);
                pst1.setString(9, role);
                pst1.setString(10, password);
                pst1.setString(11, secques);
                pst1.setString(12, secans);
                
                pst1.executeUpdate();
                out.println("<br>Account created..");
                
                String customertable ="create table "+acno+"(account_no varchar(20),ref varchar(20),do_trans varchar(20),trans_id varchar(20),dep_amount int,wdrw_amount int,net_bal int);";
                PreparedStatement pst2= con.prepareStatement(customertable);
                
                pst2.executeUpdate();
                
                out.println("Table created....");
            }
            catch(Exception e)
            {
                out.println("<br>Account not opened..."+e);
            }
            
        %>
    </body>
</html>
