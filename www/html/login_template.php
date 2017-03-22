<?php
include 'functions.php';

$conn = db_connect('userdbsearch1', 'passdbsearch1');

$user = fetch_post("user");
$pass = fetch_post("pass");

$results = null;
// Very badly coded db :
if ($user !== "" and $pass !== "")
{
  $sql =  "SELECT * FROM db1.login WHERE username = '" .
  $user .
  "' AND password = '" .
  $pass .
  "';";

  //echo $sql;

  $results = $conn->query($sql);
}
?>


<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="login-page">
  <div class="form">
  <h1>Login</h1>
    <form class="login-form">
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <button>login</button>
    </form>
  </div>
</div>
</body>
</html>