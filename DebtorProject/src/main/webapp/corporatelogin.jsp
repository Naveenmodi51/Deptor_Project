<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoginFrom</title>
    <link rel="stylesheet" href="./corporatelogin.css">
</head>
<body>
    <div class="loginbox">
        <img src="Images/user.png" alt="Image Coming Soon..." class="user">
        <h1 id="h12">CORPORATE LOGIN</h1>
        <form action="ServletController">
            <p>Email</p>
            <input type="text" name="email" placeholder="Enter Email">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <input type="submit" value="LOG IN"><br> <br>
           <input type="hidden"  name="action" value="corporate_login">

           
        </form>

    </div>

</body>
</html>
