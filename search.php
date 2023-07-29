<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "vaidya";
    // Connect to the database
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Get the search query from the URL
    $search_query = $_GET['search'];

    // Prepare a SQL query to search for diseases by name and join the remedies table
    $sql_1 = "SELECT health_con.health_id, health_con.health_name, health_con.health_desc, health_con.health_cause, health_con.health_sym FROM health_con WHERE health_name LIKE '%$search_query%' ";
    $result_1 = mysqli_query($conn,$sql_1);

    $sql_2= "SELECT remedies.reme_name, remedies.reme_desc ,remedies.reme_inst FROM remedies 
    WHERE Used_for LIKE '%$search_query%' ";
    $result_2 = mysqli_query($conn,$sql_2);
    
    
  ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="search.css">
  <title>Search Result</title>

  <style>
    
  </style>
</head>

<body>
<header>
    <nav>
        <ul>
            <li><a href="index.php " style="color:rgb(242, 244, 232, 1)"><img src="Vaidya.png" alt="Vaidya" width="100" height="auto" margin:50px
            ></a></li>
            <!-- <li><a href="#" style="color:rgb(242, 244, 232, 1)">Contact Us</a></li> -->
        <li class="about"><a href="index.php">Home</a></li>
        <li class="about"><a href="about.html">About us</a></li>
        <li class="about"><a href="contact.html">Contact us</a></li>
        
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
  <div>
    <?php

    // if(mysqli_multi_query($conn,$sql_1)){
    //   do
    //   {
    //     //store first result set
    //     if($result_1= mysqli_store_result($conn))
    //     {
          while($row = mysqli_fetch_array($result_1))
          {
        //  print your results
          
            echo '<b>' . $row['health_name'] . '</b>';
            echo '<p class="desc">' . $row['health_desc'] . '</p>';
            echo '<b>Caused by:</b><p class="cause_by">' . $row['health_cause'] . '</p>';
            echo '<b>Symptoms:</b><p class="sym">' . $row['health_sym'] . '</p>';
            while($row = mysqli_fetch_array($result_2))
            {
            echo '<p>Remedie Solution:</p>  <h3 class="rem">' . $row['reme_name'] . '</h3>';
            echo '<p class="rem_desc">' . $row['reme_desc'] . '</p>';
            echo '<p class="rem_inst">Instructions:' . $row['reme_inst'] . '</p>';
            }
          }
?> 
  </div>
        <div>
          <a href="review.php" class="review">Review</a>
        </div>
</body>

</html>