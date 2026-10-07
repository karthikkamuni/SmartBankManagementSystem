<%@ page language="java" import="java.util.List,com.model.Loan"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loan Status</title>
</head>
<body>

<h1 align="center">Loan Status</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtohome">Home</a></p>

<table align="center" border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>LoanId</th>
        <th>Loan Amount</th>
        <th>Loan Type</th>
        <th>Applied Date &amp; Time</th>
        <th>Loan Status</th>
    </tr>
    <%
    List<Loan> loans = (List<Loan>) request.getAttribute("loans");
    for (Loan loan : loans) {
    %>
    <tr>
        <td align="center"><%=loan.getLoanId()%></td>
        <td align="center"><%=loan.getLoanAmount()%></td>
        <td align="center"><%=loan.getLoanType()%></td>
        <td align="center"><%=loan.getAppliedDateAndTime()%></td>
        <td align="center"><%=loan.getStatus()%></td>
    </tr>
    <% } %>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
