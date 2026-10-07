<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fund Transfer</title>
</head>
<body>

<h1 align="center">Fund Transfer</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtohome">Home</a></p>

<form action="fundtransfer" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="accNum">Enter Reciever's Account Number :</label></td>
            <td><input type="number" id="accNum" name="accNum" required></td>
        </tr>
        <tr>
            <td><label for="amount">Enter Amount :</label></td>
            <td><input type="number" id="amount" name="amount" min="1"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Send"></td>
        </tr>
    </table>
</form>

<h2 align="center">${notFound} ${insufficient} ${success} ${reciever}</h2>

<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
