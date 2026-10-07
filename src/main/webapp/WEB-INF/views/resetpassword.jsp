<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
</head>
<body>

<h2 align="center">Reset Password</h2>

<form action="resetpassword" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="newpassword">New Password :</label></td>
            <td><input type="password" id="newpassword" name="newpassword" placeholder="Enter New Password" maxlength="20" required></td>
        </tr>
        <tr>
            <td><label for="confirmpassword">Confirm Password :</label></td>
            <td><input type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" maxlength="20" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Change Password"></td>
        </tr>
    </table>
</form>

<h2 align="center">${msg}</h2>

<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
