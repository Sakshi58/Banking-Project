<html>
    <body>
        <h3>Welcome <%=session.getAttribute("login_id")%> Login Page</h3>
        <br>
        <br>
        <h3>You can change your password </h3>
        <form action="ChangePasswordDBMS.jsp" method="post">
            Enter Old password 
            <input type="text" name="oldpass">
            <br>
            Enter new Password
            <input type="text" name="newpass">
            <br>
            Enter confirm your password
            <input type="text" name="cnpass">
            <br><br>
            <input type="submit" name="b1" value="Update">
        </form>
    </body>
</html>
