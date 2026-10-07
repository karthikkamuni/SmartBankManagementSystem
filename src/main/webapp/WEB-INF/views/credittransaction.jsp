<%@ page import="java.util.List,com.model.Transactions" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Credit Transactions</title>
</head>
<body>

<h1 align="center">Credit Transactions</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtoacc">Dashboard</a></p>

<table align="center" border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>TransactionId</th>
        <th>Recieved From AccNumber</th>
        <th>Amount Recieved</th>
        <th>Date &amp; Time</th>
    </tr>
    <% 
    List<Transactions> list = (List<Transactions>) request.getAttribute("creditTransactions");
    for(Transactions t : list) {
    %>
    <tr>
        <td align="center"><%= t.getTransactionId() %></td>
        <td align="center"><%= t.getSenderAccountNumber() %></td>
        <td align="center"><%= t.getAmount() %></td>
        <td align="center"><%= t.getTransactionDateAndTime() %></td>
    </tr>
    <% } %>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
