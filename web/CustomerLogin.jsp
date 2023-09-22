<html>
    <head>
        <title>Customer Login</title>
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
        <h2 align="center" class="nav">Welcome, <%=session.getAttribute("login_id")%> Customer Login
            <br>
            <%=session.getAttribute("login_time")%>
        </h2>
    <center>
        
            <div class="container">
            <a href="CustomerStatement.jsp">View Statement</a><br>
            <a href="CustomerProfile.jsp">Customer Profile</a><br>
            <a href="ChangePassword.jsp">Customer Change Password</a><br>
            <a href="CustomerFundTransfer.jsp">Customer Fund Transfer</a><br>
            <a href="Info.jsp">Information</a><br>
            </div>
    </center>
    </body>
</html>
