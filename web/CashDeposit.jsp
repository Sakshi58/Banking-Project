<%@page import="java.util.*" %>

<html>
    <head>
        <style>
             *{
                font-family: arial;
            }
            body{
                margin: 20px;
                background-image: url('bank2.png');
                background-repeat: no-repeat;
                background-size: cover;
               }


            p{
                font-size: 20px;
                margin: 0;
            }
            h2{
                text-align: center;
                color: white;
                font-size: 50;
                font-weight: 600;
            }
            .card {
                /* Add shadows to create the "card" effect */
                margin: 5% 35% 0 35%;
                padding: 25px;
                background-color: #EAEDED;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
            }

            /* On mouse-over, add a deeper shadow */
            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

            /* Add some padding inside the card container */
            .container {
                padding: 2px 16px;
            }
            /*Add textbox style*/
            .textbox{
                margin-bottom: 25px;
                padding: 5px;
                border: 0;
                background-color: #EAEDED;
                border-bottom: 2px solid #8E44AD;
                font-size: 15px;
            }

            /*Add style for sign in button */
            .btn_Next{
                margin-top: 15px;
                width: 150px;
                border:0;
                background-color: #3498DB;
                color: #fff;
                padding: 10px 25px 10px 25px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            }
            /*On mouse-over, add a deeper shadow*/
            .btn_Next:hover{
                font-size: 15px;
                font-weight: bold;
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.3);
                background-color: #2874A6;
            }
            /*Add style for sign in button */
            .btn_signin{
                margin-top: 15px;
                width: 150px;
                border:0;
                background-color: #2ECC71;
                color: #fff;
                padding: 10px 25px 10px 25px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            }
            /*On mouse-over, add a deeper shadow*/
            .btn_signin:hover{
                font-size: 15px;
                font-weight: bold;
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.3);
                background-color: #239B56;
            }
        </style>
    </head>
    <body bgcolor="#cfd1d4">
        <% 
            Random rm= new Random();
        %>
        <h2 >Deposit for customer</h2>
        <form action="CashDepositDBMS.jsp" method="post">
             <div class="card">
                <div class="container" >
            <p>Account Number</p>
                    <input  class="textbox" type="text" name="accno">
               <p>Reference</p>
                   <input class="textbox" type="text" name="refname">
               
                    <p>Date of Transaction</p>
                    <input  class="textbox" type="date" name="dot">
               
                    <p>Transaction Id</p>
                    <input class="textbox" type="text" name="trid" value="<%=rm.nextInt()%>">
               
                    <p>Deposit Amount</p>
                    <input class="textbox" type="text" name="depamt">
               
                    <input class="btn_signin" type="submit" name="b1" value="Deposit">
               
                </div>
             </div>
        </form>
    </body>
</html>
