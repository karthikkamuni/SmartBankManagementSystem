<%@ page import="java.util.List" import="com.model.Account" language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accounts</title>
</head>
<body>

<h1 align="center">All Accounts</h1>

<p align="right"><a href="${pageContext.request.contextPath}/admin/backtohomepage">Homepage</a></p>

<% List<Account> accountList = (List<Account>) (request.getAttribute("accounts")); %>
<table align="center" border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>AccountId</th>
        <th>Name</th>
        <th>AccountNumber</th>
        <th>Balance</th>
        <th>Date&amp;TimeOfReg</th>
        <th>AccountStatus</th>
        <th>Update Status</th>
        <th>AddAmount</th>
    </tr>
    <% for(Account a : accountList) { %>
    <tr>
        <td align="center"><%= a.getId() %></td>
        <td align="center"><%= a.getCustomer().getName() %></td>
        <td align="center"><%= a.getAccountNumber() %></td>
        <td align="center"><%= a.getBalance() %></td>
        <td align="center"><%= a.getCustomer().getRegisteredAt() %></td>
        <td align="center"><%= a.getAccountStatus() %></td>
        <td align="center">
            <form action="${pageContext.request.contextPath}/admin/updateaccstatus" method="get">
                <select name="status">
                    <option value="">-- Update Status --</option>
                    <option value="Deactivated">Deactive</option>
                    <option value="Activated">Active</option>
                </select>
                <input type="hidden" name="id" value="<%= a.getId() %>">
                <button type="submit">Update</button>
            </form>
        </td>
        <td align="center">
            <form action="${pageContext.request.contextPath}/admin/addamount" method="get">
                <input type="number" name="balance" min="1" required>
                <input type="hidden" name="id" value="<%= a.getId() %>">
                <button type="submit">Add</button>
            </form>
        </td>
    </tr>
    <% } %>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
