<?php
require_once('db.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $comment = $_POST['comment'];

    $query = "INSERT INTO contact (name, email, comment) VALUES ('$name', '$email', '$comment')";
    $result = mysqli_query($conn, $query);

    if ($result) {
    } else {
        $error_message = "Error adding comment.";
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <link rel="icon" type="image/x-icon" href="vaidya.png">
    <title>Contact | Vaidya</title>
    <link rel="stylesheet" href="contact.css">
    <style>
        * {
            font-family: sans-serif;
        }

        header {
            background: transparent;
            position: absolute;
            top: 0;
            left: 15px;
            right: 15px;
            height: 50px;
            display: flex;
            align-items: center;

        }

        header * {
            display: inline;
        }

        header li {
            margin: 20px;
        }

        header li a {
            color: black;
            text-decoration: none;
        }

        .head-text {
            -webkit-animation: rotate-top 0.5s cubic-bezier(0.455, 0.030, 0.515, 0.955) both;
            animation: rotate-top 0.5s cubic-bezier(0.455, 0.030, 0.515, 0.955) both;
        }

        .reg {
            margin-right: 100px;
            margin-left: auto;
            color: black;
        }

        /* Center the title */
        h1 {
            text-align: center;
            margin-top: 80px;
        }

        /* Style form labels */
        label {
            display: block;
            margin-bottom: 10px;
        }

        /* Style form input fields */
        input,
        textarea {
            display: block;
            width: 70%;
            padding: 10px;
            margin-bottom: 20px;
            margin-left: 15%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Style submit button */
        button[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-bottom: 100px;
        }

        button:hover {
            background-color: #0062cc;
        }
    </style>
</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="home.php " style="color:rgb(242, 244, 232, 1)"><img src="Vaidya.png" alt="Vaidya" width="100" height="28"></a></li>
                <!-- <li><a href="#" style="color:rgb(242, 244, 232, 1)">Contact Us</a></li> -->
                <li class="about"><a href="index.php">Home</a></li>
                <li class="about"><a href="about.html">About us</a></li>
                <li class="about"><a href="contact.html">Contact us</a></li>
            </ul>

        </nav>
        <nav class="reg">
            <ul>

                <li><a href="index.php">Logout</a></li>

            </ul>
        </nav>
    </header>
    <div>

        <h1>Contact Us</h1>

        <?php if (isset($success_message)) : ?>
            <p><?php echo $success_message; ?></p>
        <?php endif; ?>
        <?php if (isset($error_message)) : ?>
            <p><?php echo $error_message; ?></p>
        <?php endif; ?>
        <form method="post" style="display: block; text-align: center;">
            <div>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="comment">Comment:</label>
                <textarea id="comment" name="comment" required></textarea>
            </div>
            <div>
                <button type="submit">Submit</button>
            </div>
        </form>

    </div>
</body>

</html>