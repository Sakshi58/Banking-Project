<html>
    <head>
        <title>Admin Login</title>
        <style>
            *{

                font-family: arial;
            }
            body
            {
                margin: 20px;
                background-image: url('bg.jpg');
                background-repeat: no-repeat;
                background-size: cover;
                font-weight: 600;
                color: black;
            }

            .nav
            {
                width: 100%;
                height: 20%;
                background-color:#adb5bd;   
                padding-top: 50px;
            }
            .container
            {
                alignment-adjust: line;
                display: flex;
                flex-direction: column;
                flex-wrap:nowrap;
                gap: 5px;
                gap: 10px 20px; /* row-gap column gap */
                // row-gap: 10px;
                column-gap: 20px;
                font-size: 20;
                font-weight: 500;
            }
        </style>
    </head>
    <body>
        <h2 align="center" class="nav">Welcome <%=session.getAttribute("login_id")%> 
            <%=session.getAttribute("acc_name")%> Admin login 
            <%=session.getAttribute("login_time")%> </h2>
    <center>

        <div class="container">
            <a href="NewAccount.jsp">New Account</a><br>

            <a href="ViewCustomer.jsp">View Customer</a><br>
            <a href="DeleteCustomer.jsp">Delete Customer</a><br>
            <a href="UpdateCustomer.jsp">Update Customer</a><br>
            <a href="ViewStatement.jsp">View Statement</a><br>
            <a href="UpdateStatement.jsp">Update Statement</a><br>
            <a href="CancelStatement.jsp">Cancel Statement</a><br>
            <a href="FundTransfer.jsp">Fund Transfer</a><br>
            <a href="CashWithdraw.jsp">Cash Withdraw</a><br>
            <a href="CashDeposit.jsp">Cash Deposit</a><br>
            <a href="AdminChangePassword.jsp">Admin Change Password</a><br>
            <a href="ChangePassword.jsp">Customer Change Password</a><br>
            <a href="Logout.jsp">Logout</a>

        
       
        </div>
    </center>
</body>
</html>
