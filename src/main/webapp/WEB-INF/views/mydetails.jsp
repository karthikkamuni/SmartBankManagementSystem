<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Details</title>
</head>
<body>

<h1 align="center">My Details</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtohome">Home</a></p>

<table align="center" border="1" cellpadding="10" cellspacing="0">
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/customer/personalinfo">Personal Info</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/account/accdetails">Account Details</a></td>
    </tr>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
