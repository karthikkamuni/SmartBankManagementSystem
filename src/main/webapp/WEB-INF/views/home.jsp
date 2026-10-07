<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

<h1 align="center">Welcome ${name}</h1>

<p align="right"><a href="${pageContext.request.contextPath}/customer/logout">Logout</a></p>

<table align="center" border="1" cellpadding="10" cellspacing="0">
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/customer/mydetails">My Details</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/customer/dashboard">Account Dashboard</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/account/fundtransfer">Fund Transfer</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/account/ministatement">Mini Statement</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/account/applyloan">Loan Application</a></td>
    </tr>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
