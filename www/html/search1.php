<?php
include 'functions.php';

$conn = db_connect('userdbsearch1', 'passdbsearch1');
$conn->select_db("dbsearch1");

$search = fetch_post("search");

$results = null;
// Very badly coded db :
if ($search !== null)
{
  $sql =  "SELECT title, content FROM articles WHERE title LIKE '%" .
  $search . "%';";

  $results = $conn->query($sql);
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Login 1</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body style="background-image: url(res/bg2.jpeg);">
  <div class="login-page">
    <div class="form">
      <h1> Search </h1>
      <form action="search1.php"  method="post">
        <input type="text" name="search" placeholder="search"><br>
        <button>search</button>
      </form> 

      <?php if ($results): ?>
      	<h3>Found <?php echo $results->num_rows?> result(s) for <?php echo $search?></h3>
      	<hr>
      	<?php while($row = $results->fetch_assoc()): ?>
      		<h1> <?php echo $row["title"] ?> </h1>
      		<p> <?php  echo $row["content"]?></p>
      	<?php endwhile; ?>

      <?php elseif($conn->error): ?>
      	<h3>Error : <?php echo $conn->error ?></h3>
      <?php endif; ?>
    </div>
  </div>
</body>
</html>
