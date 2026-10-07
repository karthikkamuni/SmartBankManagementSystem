<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8" />
<title>Account Dashboard</title>
</head>
<body>

<h1 align="center">Account DashBoard</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtohome">Home</a></p>

<table align="center" border="1" cellpadding="10" cellspacing="0">
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/account/viewbalance">View Balance</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/account/transactions">Transactions</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/account/loanstatus">Loan Status</a></td>
    </tr>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
