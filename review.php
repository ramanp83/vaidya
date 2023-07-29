<?php
// database connection settings
$host = "localhost";
$username = "root";
$password = "";
$dbname = "vaidya";

// create database connection
$conn = new mysqli($host, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $rating = $_POST['rating'];
    $comment = $_POST['comment'];

    $sql = "INSERT INTO reviews ( cgn gname, email, rating, comment) VALUES ('$name', '$email', '$rating', '$comment')";
    if (mysqli_query($conn, $sql)) {
    echo "Review submitted successfully.";
    } else {
    echo "Error: " . mysqli_error($conn);
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="review.css">
    <title>Review</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="home.php " style="color:rgb(242, 244, 232, 1)"><img src="Vaidya.png" alt="Vaidya" width="100" height="28"></a></li>
            <!-- <li><a href="#" style="color:rgb(242, 244, 232, 1)">Contact Us</a></li> -->
            <li class="about"><a href="index.php">Home</a></li>
            <li class="about"><a href="about.html">About us</a></li>
            <li class="about"><a href="contact.php">Contact us</a></li>
        </ul>
        
    </nav>
    <nav class="reg">
        <ul>
            
            <li><a href="index.php">Logout</a></li>
            
        </ul>
    </nav>
</header>
    <div style="
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 20px;">
    <form method="post">
    <h2 style="text-align: center;">Review</h2>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <br>
            <label for="rating">Rating:</label>
            <select id="rating" name="rating" required>
                <option value="">Select a rating</option>
                <option value="1">1 star</option>
                <option value="2">2 stars</option>
                <option value="3">3 stars</option>
                <option value="4">4 stars</option>
                <option value="5">5 stars</option>
            </select>
            <br>
            <label for="comment">Comment:</label>
            <textarea id="comment" name="comment" required></textarea>
            <br>
            <input type="submit" name="submit" value="Submit">
    </form>
    </div>
    <div>
            <?php
            $sql = "SELECT * FROM reviews";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                echo "<h2>Reviews</h2>";
                while ($row = mysqli_fetch_assoc($result)) {
                echo "<p><strong>" . $row['name'] . "</strong> (" . $row['rating'] . " stars)</p>";
                echo "<p>" . $row['comment'] . "</p>";
                }
            } else {
                echo "<p>No reviews yet.</p>";
            }
            ?>
    </div>
</body>
</html>