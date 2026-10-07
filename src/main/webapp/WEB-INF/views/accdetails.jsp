<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
</head>
<body>

<h1 align="center">Account Details</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtohome">Home</a></p>

<form action="saveaccdetails" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="id">Account ID :</label></td>
            <td><input type="number" id="id" name="id" value="${account.id}" readonly></td>
        </tr>
        <tr>
            <td><label for="accountNumber">Account Number :</label></td>
            <td><input type="number" id="accountNumber" name="accountNumber" value="${account.accountNumber}" readonly></td>
        </tr>
        <tr>
            <td><label for="password">Password :</label></td>
            <td><input type="text" id="password" name="password" value="${account.password}"></td>
        </tr>
        <tr>
            <td><label for="balance">Balance :</label></td>
            <td><input type="number" id="balance" name="balance" value="${account.balance}" readonly></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
