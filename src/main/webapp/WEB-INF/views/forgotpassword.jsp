<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
</head>
<body>

<h2 align="center">Enter Your Registered Email</h2>

<form action="forgotpassword" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="email">Email :</label></td>
            <td><input type="email" id="email" name="email" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

<h2 align="center">${msg}</h2>

<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
