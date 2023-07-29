<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="userprofile.css">
    <title>User profile </title>
</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.php " style="color:rgb(242, 244, 232, 1)"><img src="Vaidya.png" alt="Vaidya" width="100" height="auto" margin:50px></a></li>
                <!-- <li><a href="#" style="color:rgb(242, 244, 232, 1)">Contact Us</a></li> -->
                <li class="about"><a href="index.php">Home</a></li>
                <li class="about"><a href="about.html">About us</a></li>
                <li class="about"><a href="contact.php">Contact us</a></li>

            </ul>

        </nav>
        <nav class="reg">
            <ul>

                <li><a href="log.php">Log in</a></li>
                /
                <li><a href="reg.html">Sign up</a></li>
            </ul>
        </nav>
    </header>
    <div id="profile">
        <img src="file:///C:/xampp/htdocs/vaidya/profile.jpeg" alt="Profile picture" style="width: 185px;border-radius: 95px;border: 5px red solid;">
        <h1>John Doe</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fringilla justo eu elit ullamcorper
            ullamcorper. Aenean et euismod nisi. Donec commodo lobortis velit, nec rutrum felis euismod sed.</p>
        <ul>
            <li><a href="#">Edit Profile</a></li>
            <li><a href="#">Change Password</a></li>
            <li><a href="#">Logout</a></li>
        </ul>
    </div>
</body>

</html>