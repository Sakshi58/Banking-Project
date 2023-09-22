<%@include file="DBCON.jsp" %>

<html>
    <body>
         <h3>Welcome <%=session.getAttribute("login_id")%> Login Page</h3>
         
        <%
          String oldpassword= request.getParameter("oldpass");
          String newpassword= request.getParameter("newpass");
          String confirmpassword= request.getParameter("cnpass");
          
          out.println(oldpassword);
          out.println(newpassword);
          out.println(confirmpassword);
          
          try
          {
              String passchangequery = "select * from account where acc_no='"+session.getAttribute("login_id")+"'";
              Statement smt = con.createStatement();
              
              ResultSet rs = smt.executeQuery(passchangequery);
              
              int count=0;
              while(rs.next())
              {
                  //out.println(" "+rs.getString(10));
                  if(oldpassword.equals(rs.getString(10)))
                  {
                      count++;
                      break;
                  }
              }
              //out.println(" ");
              if(count>0)
              {
                  out.println("old password match");
                  if(newpassword.equals(confirmpassword))
                  {
                      out.print("both are same");
                      String updatepasswordquery = "update account set password='"+newpassword+"' where acc_no='"+session.getAttribute("login_id")+"'";
                      PreparedStatement pst = con.prepareStatement(updatepasswordquery);
                      
                      pst.executeUpdate();
                      out.println("password upated.... ");
                      out.println("<br><a href=Login.jsp>Login Again !!!</a>");
                  }
                  else
                  {
                      out.println("both are not same");
                  }
              }
              else
              {
                  out.println("old password  doesn't match");
              }
          }
          catch(Exception e)
          {
              out.println(e);
          }
        %>
    </body>
</html>
