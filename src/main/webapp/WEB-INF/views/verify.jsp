<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify</title>
</head>
<body>

<h2 align="center">${msg}</h2>
<h2 align="center">${incorrect}</h2>

<form action="verify" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="otp">Please Enter The OTP Below :</label></td>
            <td><input type="text" id="otp" name="otp" minlength="4" maxlength="4" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
