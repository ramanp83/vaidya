<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>home</title>
  <link rel="stylesheet" href="home.css">
</head>

<body>
<header>
  <nav>
        <ul>
            <li><a href="home.php " style="color:rgb(242, 244, 232, 1)"><img src="Vaidya.png" alt="Vaidya" width="100" height="28"></a></li>
            <!-- <li><a href="#" style="color:rgb(242, 244, 232, 1)">Contact Us</a></li> -->
            <li class="about"><a href="index">Home</a></li>
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
  
    <!-- javascript for menu -->

    <script>
      function openNav() {
        document.getElementById("mySidenav").style.width = "100%";
      }

      function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
      }
    </script>

    <div class="log_pg"
      style="position: absolute; width: 90px;height: 48.17px;right: 13px;top: 2px;font-size: 42px;text-align: center">
      <a href="logout.php"
        style="font-size: 29px;text-decoration: underline; color:black">
              </a>
    </div>
  </div>

  <!------------------------------------ SEARCH BAR ----------------------------->

  <svg xmlns="http://www.w3.org/2000/svg" style="display:none">
    <symbol xmlns="http://www.w3.org/2000/svg" id="sbx-icon-search-17" viewBox="0 0 40 40">
      <path
        d="M35.567 31.158L28.6 24.192c1.634-2.465 2.584-5.42 2.584-8.6C31.184 6.983 24.204 0 15.592 0 6.982 0 0 6.98 0 15.593c0 8.61 6.98 15.592 15.592 15.592 3.178 0 6.134-.95 8.6-2.583l10.24 10.24c1.173 1.175 3.077 1.174 4.252 0l.155-.156c1.18-1.182 1.175-3.08 0-4.254l-2.17-2.172-1.102-1.104v.002zm-1.103 1.102l-6.022-6.02c-.388-.39-1.024-.39-1.416.002l-.785.785c-.393.394-.393 1.027-.003 1.417l6.022 6.02 2.204-2.204zm1.103 1.103l2.488 2.488c.39.392.39 1.024-.003 1.418l-.785.785c-.393.392-1.028.392-1.417.004l-2.488-2.49 2.205-2.204zm-19.975-3.737c7.75 0 14.033-6.283 14.033-14.033 0-7.75-6.283-14.034-14.033-14.034C7.842 1.56 1.56 7.84 1.56 15.592c0 7.75 6.282 14.033 14.032 14.033zm0-25.728c-.645 0-1.284.053-1.912.156-.425.07-.713.47-.643.896.07.425.47.712.896.642.545-.09 1.1-.135 1.66-.135.43 0 .78-.35.78-.78 0-.43-.35-.78-.78-.78zm-5.31 1.273c-3.885 1.984-6.384 5.98-6.384 10.423 0 .43.35.78.78.78.43 0 .78-.35.78-.78 0-3.85 2.165-7.314 5.533-9.034.385-.196.537-.666.34-1.05-.195-.383-.664-.535-1.048-.34z"
        fill-rule="evenodd" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="sbx-icon-clear-5" viewBox="0 0 20 20">
      <path
        d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10zm1.35-10.123l3.567 3.568-1.225 1.226-3.57-3.568-3.567 3.57-1.226-1.227 3.568-3.568-3.57-3.57 1.227-1.224 3.568 3.568 3.57-3.567 1.224 1.225-3.568 3.57zM10 18.272c4.568 0 8.272-3.704 8.272-8.272S14.568 1.728 10 1.728 1.728 5.432 1.728 10 5.432 18.272 10 18.272z"
        fill-rule="evenodd">
    </symbol>
  </svg>

  <form  onsubmit="return true;" class="searchbox sbx-custom " action="search.php" method="GET">
    <div role="search" class="sbx-custom__wrapper">
      <input type="search" name="search" placeholder="Search here" autocomplete="on" required="required"
        class="sbx-custom__input">
<!-- button submit  -->
      <button type="submit" title="Submit your search query." class="sbx-custom__submit">

        <svg role="img" aria-label="Search">
          <use xlink:href="#sbx-icon-search-17"></use>
        </svg>

      </button>

<!-- button reset -->

      <button type="reset" title="Clear the search query." class="sbx-custom__reset">

        <svg role="img" aria-label="Reset">
          <use xlink:href="#sbx-icon-clear-5"></use>
        </svg>
        
      </button>
    </div>
  </form>

  <script type="text/javascript">
    document.querySelector('.searchbox [type="reset"]').addEventListener('click', function () { this.parentNode.querySelector('input').focus(); });
  </script>
  <!------------------- end search bar here ---------------------------->
  <!-- <form action="search.php" method="GET">
  <label for="search">Search for a disease:</label>
  <input type="text" id="search" name="search">
  <button type="submit">Search</button>
</form> -->

</body>

</html>