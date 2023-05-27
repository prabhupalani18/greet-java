<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Registration Form</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f4f4f4;
		}
		
		.container {
			max-width: 500px;
			margin: auto;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0px 0px 10px #999;
		}
		
		h2 {
			text-align: center;
			margin-bottom: 20px;
		}
		
		input[type=text], input[type=password] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}
		
		button[type=submit] {
			background-color: #4CAF50;
			color: #fff;
			padding: 12px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			width: 100%;
		}
		
		button[type=submit]:hover {
			background-color: #45a049;
		}
		
		.cancelbtn {
			width: auto;
			padding: 10px 18px;
			background-color: #f44336;
			color: #fff;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			float: right;
		}
		
		.cancelbtn:hover {
			background-color: #dc3545;
		}
		
		.imgcontainer {
			text-align: center;
			margin: 24px 0 12px 0;
		}
		
		img.avatar {
			width: 40%;
			border-radius: 50%;
		}
		
		span.psw {
			float: right;
			padding-top: 16px;
		}
		
		@media screen and (max-width: 600px) {
			.container {
				max-width: 100%;
			}
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>Registration Form</h2>
		<form action="register.jsp" method="post">
			<div class="imgcontainer">
				<img src="avatar.png" alt="Avatar" class="avatar">
			</div>

			<label for="name"><b>Name</b></label>
			<input type="text" placeholder="Enter Name" name="name" required>

			<label for="email"><b>Email</b></label>
			<input type="text" placeholder="Enter Email" name="email" required>

			<label for="psw"><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="psw" required>

			<label for="psw-repeat"><b>Repeat Password</b></label>
			<input type="password" placeholder="Repeat Password" name="psw-repeat" required>

			<button type="submit">Register</button>
			<a href="#" class="cancelbtn">Reject</a>
		</form>
	</div>
</body>
</html>