<?php
include 'functions.php';

$conn = db_connect('userdb1', 'passdb1');

$user = fetch_post("user");
$pass = fetch_post("pass");

$results = null;
// Very badly coded db :
if ($user !== "" and $pass !== "")
{
	$sql = 	"SELECT * FROM db1.login WHERE username = '" .
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
	<title>Login 1</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<div class="login-page">
		<div class="form">
			<h1> Login </h1>
			<form action="login1.php"  method="post">
				<input type="text" name="user" placeholder="username"><br>
				<input type="text" name="pass" placeholder="password"><br><br>
				<button>login</button>
			</form> 

			<?php if ($results and $results->num_rows == 1): ?>
				<?php $row = $results->fetch_assoc(); ?>
					<hr>
					<p>
					<b>Welcome</b> <?php echo $row["username"] ?>
					</p>

					<p>
						Your informations :	
					</p>

					<input type="text" name="user" disabled value="<?php echo $row["username"] ?>"><br>
					<input type="password" name="pass" disabled value="<?php echo $row["password"] ?>"><br>

			<?php else: ?>
				<hr>
				<p>Login Failed ...</p>
			<?php endif; ?>
		</div>
	</div>
</body>
</html>
