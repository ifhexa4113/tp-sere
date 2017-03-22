<?php
include 'functions.php';

$conn = db_connect('userdb1', 'passdb1');

$user = fetch_post("user");
$pass = fetch_post("pass");
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

			<?php
			if ($user !== "" and $pass !== "")
			{
				$sql = 	"SELECT * FROM db1.login WHERE username = '" .
				$user .
				"' AND password = '" .
				$pass .
				"';";

				//echo $sql;

				$results = $conn->query($sql);

				if ($results and $results->num_rows == 1)
				{
					?>

					<p>
					<b>Bienvenue</b> <?php echo $user ?>
					</p>


					<?php
				}

			}
			?>
		</div>
	</div>
</body>
</html>
