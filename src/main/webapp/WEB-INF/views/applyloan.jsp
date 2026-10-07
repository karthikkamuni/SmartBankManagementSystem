<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loan Application</title>
</head>
<body>

<h1 align="center">Loan Application</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtohome">Home</a></p>

<form action="applyloan" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="loanAmount">Loan Amount :</label></td>
            <td><input type="number" id="loanAmount" name="loanAmount" min="50000" max="1000000" required></td>
        </tr>
        <tr>
            <td><label for="loanType">Loan Type :</label></td>
            <td><input type="text" id="loanType" name="loanType" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

<h2 align="center">${applied}</h2>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
