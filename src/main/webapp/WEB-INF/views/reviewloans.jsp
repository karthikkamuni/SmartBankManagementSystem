<%@ page language="java" import="java.util.List,com.model.Loan" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Loans</title>
</head>
<body>

<h1 align="center">Review Loans</h1>

<h3 align="right">
    <a href="${pageContext.request.contextPath}/admin/backtohomepage">Homepage</a>
</h3>

<table align="center" border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>LoanId</th>
        <th>Account Number</th>
        <th>Loan Amount</th>
        <th>Loan Type</th>
        <th>Applied Date &amp; Time</th>
        <th>Loan Status</th>
        <th>Update Status</th>
    </tr>
    <%
        List<Loan> loans = (List<Loan>) request.getAttribute("loans");
        for (Loan loan : loans) {
    %>
    <tr>
        <td align="center"><%=loan.getLoanId()%></td>
        <td align="center"><%=loan.getAccountNumber()%></td>
        <td align="center"><%=loan.getLoanAmount()%></td>
        <td align="center"><%=loan.getLoanType()%></td>
        <td align="center"><%=loan.getAppliedDateAndTime()%></td>
        <td align="center"><%=loan.getStatus()%></td>
        <td align="center">
            <form action="${pageContext.request.contextPath}/admin/updatestatus" method="get">
                <select name="status">
                    <option value="">-- Update Status --</option>
                    <option value="Approved">Approved</option>
                    <option value="Pending">Pending</option>
                    <option value="Rejected">Rejected</option>
                </select>
                <input type="hidden" name="id" value="<%= loan.getLoanId() %>">
                <button type="submit">Update</button>
            </form>
        </td>
    </tr>
    <% } %>
</table>

</body>
</html>
