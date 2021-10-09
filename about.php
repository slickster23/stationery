<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>

  <main>
    <!-- HERO -->
    <div class="nero">
      <div class="nero__heading">
        <span class="nero__bold">About</span> us
      </div>
      <p class="nero__text">
      </p>
    </div>
  </main>

<div id="content" ><!-- content Starts -->
<div class="container" ><!-- container Starts -->

<div class="col-md-12" ><!-- col-md-12 Starts -->

<div class="box" ><!-- box Starts -->

<?php

$get_about_us = "select * from about_us";

$run_about_us = mysqli_query($con,$get_about_us);

$row_about_us = mysqli_fetch_array($run_about_us);

$about_heading = $row_about_us['about_heading'];

$about_short_desc = $row_about_us['about_short_desc'];

$about_desc = $row_about_us['about_desc'];

?>

<h1> About Us: </h1>

<ul>
  <li>Small scale startup in its nascent stage.</li>
  <li>Your (virtual) next door neighbour store.</li>
  <li>Primarily focused on delivering </li>
  <ul>
    <li>Regular Office supplies</li> 
    <li>Home Office supplies</li> 
    <li>School supplies</li> 
  </ul>
</ul>

<h3>What Drives Us? </h3>
<ul>
  <li> We are not just your regular stationery store.</li>
  <li> We drive to promote home made products with recycling as a core ideology.</li>
  <li>We are in the process of reaching out to small scale businesses that are into paper and plastic recycling and delivering recycled products</li>

</ul>

</div><!-- box Ends -->

</div><!-- col-md-12 Ends -->



</div><!-- container Ends -->
</div><!-- content Ends -->



<?php

include("includes/footer.php");

?>

<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>

</body>
</html>
