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
            head{
                align: center;
                color: #11151c;
                font-weight: 300;
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
        <form action="NewAccountDBMS.jsp" method="post">
            <div class="card">
                <div class="container" >
                    <h2 class="head">New Account Registration</h2>
                    <p>Account Number</p>
                    <input class="textbox"  type="text" name="acno">

                    <p>Customer Name</p>
                    <input class="textbox"  type="text" name="cname">
                    <p>Father Name</p>
                    <input class="textbox"  type="text" name="cfname">
                    <p>Date of Birth</p>
                    <input class="textbox"  type="date" name="cdob">
                    <p>Gender</p>
                    <select name="cgender" class="s1">
                        <option>Female</option>
                        <option>Male</option>
                        <option>Other</option>
                         <br>
                    </select>
                     <br><br>
                    <p>Account Opening Date</p>
                    <input class="textbox"  type="date" name="opdate">
                    <p>Address</p>
                    <input class="textbox"  type="text" name="cadd">
                    <p>Contact Number</p>
                    <input class="textbox"  type="text" name="ccontact">

                    <p>Role</p>

                    <select name="role" class="s1">
                        <option value="admin">Admin</option>
                        <option value="customer">Customer</option>
                         <br>
                    </select>
                      <br><br>
                   
                    <p>Password</p>
                    <input class="textbox"  type="password" name="password">

                    <p>Security Question</p>

                    <select name="secques" class="s1">
                        <option value="birthplace">Birth Place</option>
                        <option value="firstSchool">First School</option>
                        <option value="bestfriend">Best Friend</option>
                        <br>
                    </select>
                    <br><br>
                    <p>Security Answer</p>
                    <input class="textbox"  type="text" name="secans">

                    <input class="btn_signin" type="submit" name="b1" value="Submit">
                    <input class="btn_clear" type="reset" name="b2" value="Reset">
                </div>
            </div>
        </form>
    </body>
</html>
