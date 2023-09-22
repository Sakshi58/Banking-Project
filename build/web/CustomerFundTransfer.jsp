<%@page import="java.util.*" %>

<html>
    <body bgcolor="#cfd1d4">
         <% 
            Random rm= new Random();
        %>
        Welcome <%=session.getAttribute("login_id")%> 
        <h2 align="center">Transfer amount more safely and securely :) </h2>
        <form action="CustomerFundTransferDBMS.jsp" method="post">
            <center><table>
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accno"></td>
                </tr>
                <tr>
                    <td>Reference</td>
                    <td><input type="text" name="refname"></td>
                </tr>
                <tr>
                    <td>Date of Transfer</td>
                    <td><input type="date" name="dot"></td>
                </tr>
                <tr>
                    <td>Transfer Id</td>
                    <td><input type="text" name="trid" value="<%=rm.nextInt()%>"></td>
                </tr>
                <tr>
                    <td>Amount to be Transfered</td>
                    <td><input type="text" name="depamt"></td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="b1" value="Transfer"</td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table></center>
        </form>
    </body>
</html>
