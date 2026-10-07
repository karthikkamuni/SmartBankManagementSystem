<%@ page import="java.util.List" import="com.model.Customer" language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers Details</title>
</head>
<body>

<h1 align="center">All Customers</h1>

<p align="right"><a href="${pageContext.request.contextPath}/admin/backtohomepage">Homepage</a></p>

<% List<Customer> customerList = (List<Customer>) (request.getAttribute("customerlist")); %>
<table align="center" border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>CustomerId</th>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>DateOfBirth</th>
        <th>Email</th>
        <th>PhoneNumber</th>
        <th>AadharNumber</th>
        <th>Occupation</th>
        <th>Street</th>
        <th>City</th>
        <th>Pincode</th>
        <th>State</th>
        <th>Country</th>
    </tr>
    <% for(Customer c : customerList) { %>
    <tr>
        <td align="center"><%= c.getCustomerId() %></td>
        <td align="center"><%= c.getName() %></td>
        <td align="center"><%= c.getAge() %></td>
        <td align="center"><%= c.getGender() %></td>
        <td align="center"><%= c.getDateOfBirth() %></td>
        <td align="center"><%= c.getEmail() %></td>
        <td align="center"><%= c.getPhoneNumber() %></td>
        <td align="center"><%= c.getAadharNumber() %></td>
        <td align="center"><%= c.getOccupation() %></td>
        <td align="center"><%= c.getAddress().getStreet() %></td>
        <td align="center"><%= c.getAddress().getCity() %></td>
        <td align="center"><%= c.getAddress().getPincode() %></td>
        <td align="center"><%= c.getAddress().getState() %></td>
        <td align="center"><%= c.getAddress().getCountry() %></td>
    </tr>
    <% } %>
</table>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
