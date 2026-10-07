<%@ page language="java" import="java.util.List,com.model.Transactions" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mini Statement</title>
</head>
<body>

<h1 align="center">Mini Statement</h1>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtoacc">Dashboard</a></p>

<table align="center" border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>TransactionId</th>
        <th>Account Number</th>
        <th>Amount</th>
        <th>Date &amp; Time</th>
        <th>TransactionType</th>
    </tr>
    <% 
    List<Transactions> ministatement = (List<Transactions>) request.getAttribute("ministatement"); 
    String accNum = (String) request.getAttribute("accNum");
    for(Transactions t : ministatement) {
        String accountNumber = t.getSenderAccountNumber();
        String type = "CREDIT";
        if(t.getSenderAccountNumber().equals(accNum)){
            accountNumber = t.getRecieverAccountNumber();
            type = "DEBIT";
        }
    %>
    <tr>
        <td align="center"><%= t.getTransactionId() %></td>
        <td align="center"><%= accountNumber %></td>
        <td align="center"><%= t.getAmount() %></td>
        <td align="center"><%= t.getTransactionDateAndTime() %></td>
        <td align="center"><%= type %></td>
    </tr>
    <% } %>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
