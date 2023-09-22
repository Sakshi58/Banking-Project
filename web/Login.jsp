<html>
    <head>
<!---------- Style css---------->
        <style>
            *{
                font-family: arial;
            }
            body{
	background-image: url('bank2.png');
	background-repeat: no-repeat;
	background-size: cover;
}


            p{
                font-size: 20px;
                margin: 0;
            }
            h1{
                color: #11151c;
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
            /*Add style for sign in button */
            .btn_clear{
                width: 150px;
                border:0;
                background-color: #E74C3C;
                color: #fff;
                padding: 10px 25px 10px 25px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            }
            /*On mouse-over, add a deeper shadow*/
            .btn_clear:hover{
                font-size: 15px;
                font-weight: bold;
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.3);
                background-color: #B03A2E;
            }
            .s1{
                font-size: 22px;
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.3);
                background-color: #c1c1c1;
            }

        </style>
    </head>

    <body>

        <form action="Check.jsp" method="post">
            <div class="card">
                <div class="container" >
                    <h1><b>Login</b></h1>
                    <br>
                    <p> Role </p>

                    <select name="role" class="s1">
                        <option value="select">Select</option>
                        <option value="admin">Admin</option>
                        <option value="customer">Customer</option>
                    </select>
                    <br> 
                    <br>
                    <p> Account Number </p>
                    <input class="textbox" type="text" name="username" placeholder="Enter The Account number" size="35">
                    <br>
                    <p> Password </p>
                    <input class="textbox" type="password" name="password" placeholder="Enter The Password" size="35">
                    <br>
                    <input  class="btn_signin" type="submit" name="b1" value="LogIn">
                    <input class="btn_clear" type="reset" name="b2" value="Reset">
                    <br>
                    <a href="ForgetPassword.jsp">Forget Password</a>

                </div>
            </div>
        </form>

    </body>
</html>
