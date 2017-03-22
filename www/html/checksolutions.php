<?php
include 'functions.php';

$conn = db_connect('usersolu', 'passsolu');

$name = fetch_post("name");
$pass = fetch_post("pass");

$results = null;
$results_status = 0;

// Get records
$sql = "SELECT name FROM solutions.solutions";
$results_name = $conn->query($sql);


// Check results
if ($name !== null and $pass !== null)
{
  $sql =  "SELECT * FROM solutions.solutions WHERE name = ? AND password = ?";
  $stmt = $conn->prepare($sql);
  $stmt->bind_param("ss", $name, $pass);

  $stmt->execute();

  $results = $stmt->get_result();

  if ($results && $results->num_rows == 1) {
    $results_status = 1;
  }
  elseif($results)
  {
    $results_status = -1;
  }

  $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background-image: url(res/bg4.jpeg);">
  <div class="login-page">
    <div class="form">
      <h1>SQL Exploits</h1>
      <p>Use this page to check if you have found a correct solution for the problems.</p>
      <p><em>This page should be secure ;)</em></p>

      <form action="checksolutions.php"  method="post">

        <div class="select-style">
          <select name="name">
            <?php while($row = $results_name->fetch_assoc()): ?>
              <option  value="<?php echo $row["name"] ?>"><?php echo $row["name"] ?></option>
            <?php endwhile; ?>
          </select>
        </div>
        <input type="text" name="pass" placeholder="password"><br><br>
        <button>check</button>
      </form> 

      <?php if ($results_status !== 0): ?>
        <?php $row = $results->fetch_assoc(); ?>
        <hr>
        <?php if($results_status == 1): ?>
          <p>Password correct !</p>
        <?php else: ?>
          <p>Wrong password ...</p>
        <?php endif; ?> 
      <?php endif; ?>


    </div>
  </div>
</body>
</html>