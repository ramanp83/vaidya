document.getElementById("login-form").addEventListener("submit", function(event) {
    event.preventDefault(); // prevent form submission
    var username = document.getElementsByName("username")[0].value;
    var password = document.getElementsByName("password")[0].value;
    // perform login authentication process here
    
    // if login is successful, redirect to main page
    window.location.href = "homepg.php";
});
