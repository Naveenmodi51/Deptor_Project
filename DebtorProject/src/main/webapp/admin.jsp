<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <title>Admin login page</title>
    <style>
        img{
            height: 100px;
            width: 170px;
            align-items: center;
        }
    </style>
</head>
<body>
    <form action="ServletController">
        <section class="container ">
            <article class="col-md-4 mx-auto">
                <h1 class="text-center text-uppercase text-primary pb-2 pt-2">admin</h1>
                <img src="Images\admin.png" alt="">
                <div class="form-group">
                    <label for="uname">USERNAME</label>
                    <input class="form-control" type="text" placeholder="Enter Username" name="email">
                </div>
                <div class="form-group">
                    <label for="password">PASSWORD</label>
                    <input class="form-control" type="text" placeholder="Enter Password" name="password">
                </div>
                <div class="form-group">
                    <input type="submit" value="Log In">
                </div>
    
            </article>
        </section>
        <input type="hidden"  name="action" value="admin_login">
    </form>
</body>
</html>