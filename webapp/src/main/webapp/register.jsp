<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Registration Form</title>
	<style>
	/* CSS styling for the registration form */
	form {
		max-width: 600px;
		margin: 0 auto;
		padding: 20px;
		background-color: #f2f2f2;
		border-radius: 10px;
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
	button[type=submit], button[type=reset] {
		background-color: #4CAF50;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		border-radius: 4px;
		cursor: pointer;
	}
	button[type=submit]:hover, button[type=reset]:hover {
		background-color: #45a049;
	}
	</style>
</head>
<body>
	<%
		// Get the form data submitted by the user
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String repeatPassword = request.getParameter("repeatPassword");
		
		// Validate the form data (you should add your own validation logic here)
		boolean hasError = false;
		String errorMessage = "";
		
		if (name == null || name.trim().isEmpty()) {
			hasError = true;
			errorMessage += "Name is required.<br>";
		}
		
		if (email == null || email.trim().isEmpty()) {
			hasError = true;
			errorMessage += "Email is required.<br>";
		}
		
		if (password == null || password.trim().isEmpty()) {
			hasError = true;
			errorMessage += "Password is required.<br>";
		}
		
		if (repeatPassword == null || repeatPassword.trim().isEmpty()) {
			hasError = true;
			errorMessage += "Repeat password is required.<br>";
		}
		
		if (!password.equals(repeatPassword)) {
			hasError = true;
			errorMessage += "Password and repeat password do not match.<br>";
		}
		
		// If there's an error, display the error message
		if (hasError) {
			out.println("<h2>Error:</h2>");
			out.println("<p>" + errorMessage + "</p>");
			out.println("<p><button onclick=\"history.back()\">Go back and correct the errors</button></p>");
		}
		// If there's no error, process the form data
		else {
			// Add your own code to process the form data here, such as storing it in a database
			out.println("<h2>Thank you for registering!</h2>");
			out.println("<p>Your name: " + name + "</p>");
			out.println("<p>Your email: " + email + "</p>");
			out.println("<p>Your password: " + password + "</p>");
			out.println("<p><button onclick=\"location.href='index.jsp'\">Go back to the homepage</button></p>");
		}
	%>
</body>
</html>