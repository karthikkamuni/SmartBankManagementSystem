<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>

<h1 align="center">Welcome Admin</h1>

<p align="right"><a href="${pageContext.request.contextPath}/admin/logout">Logout</a></p>

<table align="center" border="1" cellpadding="10" cellspacing="0">
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/admin/allcustomers">View All Customers</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/admin/allaccounts">View All Accounts</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/admin/reviewloans">Review Loans</a></td>
    </tr>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
