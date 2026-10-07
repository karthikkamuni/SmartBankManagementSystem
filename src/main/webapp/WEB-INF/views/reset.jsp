<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset</title>
</head>
<body>

<h1 align="center">Welcome ${name}</h1>
<h2 align="center">This is your AccountNumber: ${accountNumber}</h2>
<h2 align="center">Your Password: ${password}</h2>
<h2 align="center">Please Reset your Password</h2>

<form action="reset" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="currentPassword">Current Password :</label></td>
            <td><input type="password" id="currentPassword" name="currentPassword" placeholder="Enter Current Password" required></td>
        </tr>
        <tr>
            <td><label for="newPassword">New Password :</label></td>
            <td><input type="password" id="newPassword" name="newPassword" placeholder="Enter New Password" required></td>
        </tr>
        <tr>
            <td><label for="confirmPassword">Confirm Password :</label></td>
            <td><input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Reset"></td>
        </tr>
    </table>
</form>

<h1 align="center">${msg}</h1>

<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
