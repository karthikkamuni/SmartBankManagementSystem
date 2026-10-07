<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<h1 align="center">Login</h1>

<form action="login" method="post">
	<table align="center" border="1" cellpadding="8" cellspacing="0">
		<tr>
			<td><label for="accountNumber">Enter Account Number :</label></td>
			<td><input type="number" id="accountNumber" name="accountNumber" required></td>
		</tr>
		<tr>
			<td><label for="password">Enter Password :</label></td>
			<td><input type="password" id="password" name="password" required></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="Login"></td>
		</tr>
	</table>
</form>

<h3 align="center">Forgot Password ? <a href="${pageContext.request.contextPath}/customer/forgotpassword">Click Here</a></h3>
<h2 align="center">${msg}</h2><br>
<h2 align="center">New user? <a href="${pageContext.request.contextPath}/customer/register">Register</a></h2>

</body>
</html>
