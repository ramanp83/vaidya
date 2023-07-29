<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="log.css">
</head>

<body>
    <form id="login-form" action="login.php" method="post">
        <form id="login-form" action="login.js" method="post">
            <div class="home">
            </div>
            <section>
                <div class="form-box">
                    <div class="form=value">
                        <h2>Login</h2>
                        <div class="inputbox">
                            <ion-icon name="contact"></ion-icon>
                            <input type="username" name="username" required>
                            <label for="">Username</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock"></ion-icon>
                            <input type="Password" name="password" required>
                            <label for="">Password</label>
                        </div>
                        <div class="forget"></div>
                        <button type="submit"> Log in</button>
                        <div class="register">
                            <p style="font-weight:bold; text-decoration:underline;">Don't have a account? <a href="reg.html">Register</a></p>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </form>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
</body>

</html>