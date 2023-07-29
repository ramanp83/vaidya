<?php
$host="localhost";
$username="root";
$password="";
$database_name="vaidya";

$conn = mysqli_connect($host,$username,$password,$database_name);
//now check the connection
if(!$conn)
{
die("Connection Failed:" . mysqli_connect_error());

}

if(isset($_POST['Register']))
{
    $Username = $_POST['username'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    $sql_query = "INSERT INTO user_info (username,first_name,last_name,email,password)
VALUES ('$Username','$first_name','$last_name','$email','$password')";


    // $result = mysqli_query($conn ,$sql_query);

if (mysqli_query($conn, $sql_query) or die(mysqli_error($conn)))
{
echo "<script>location.href='login.php'</script>";
    }
else
{
		echo "Error: " . $sql . "" . mysqli_error($conn);
}
mysqli_close($conn);
}
