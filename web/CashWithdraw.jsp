<%@page import="java.util.*" %>
<html>
    <body bgcolor="#cfd1d4">
         <% 
            Random rm= new Random();
        %>
        <h2 align="center">Withdrawal for customer</h2>
        <form action="CashWithdrawDBMS.jsp" method="post">
            <table>
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accno"></td>
                </tr>
                <tr>
                    <td>Reference</td>
                    <td><input type="text" name="refname"></td>
                </tr>
                <tr>
                    <td>Date of Transaction</td>
                    <td><input type="date" name="dot"></td>
                </tr>
                <tr>
                    <td>Transaction Id</td>
                    <td><input type="text" name="trid" value="<%=rm.nextInt()%>"></td>
                </tr>
                <tr>
                    <td>Withdraw Amount</td>
                    <td><input type="text" name="wthamt"></td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="b1" value="Withdraw"</td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
