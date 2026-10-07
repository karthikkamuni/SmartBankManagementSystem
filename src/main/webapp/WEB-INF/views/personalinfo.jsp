<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Info</title>
</head>
<body>

<h2 align="center">Personal Info</h2>

<p align="right"><a href="${pageContext.request.contextPath}/account/backtohome">Home</a></p>

<form action="savepersonalinfo" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="customerId">Customer ID :</label></td>
            <td><input type="number" id="customerId" name="customerId" value="${customer.customerId}" readonly></td>
        </tr>
        <tr>
            <td><label for="name">Name:</label></td>
            <td><input type="text" id="name" name="name" value="${customer.name}" readonly></td>
        </tr>
        <tr>
            <td><label for="age">Age:</label></td>
            <td><input type="number" id="age" name="age" value="${customer.age}" readonly></td>
        </tr>
        <tr>
            <td><label for="gender">Gender:</label></td>
            <td>
                <select id="gender" name="gender" disabled>
                    <option value="${customer.gender}">${customer.gender}</option>
                    <option value="MALE">Male</option>
                    <option value="FEMALE">Female</option>
                    <option value="OTHER">Other</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><label for="occupation">Occupation:</label></td>
            <td><input type="text" id="occupation" name="occupation" value="${customer.occupation}" maxlength="30" minlength="2"></td>
        </tr>
        <tr>
            <td><label for="dateOfBirth">Date of Birth:</label></td>
            <td><input type="date" id="dateOfBirth" name="dateOfBirth" value="${customer.dateOfBirth}" readonly></td>
        </tr>
        <tr>
            <td><label for="email">Email:</label></td>
            <td><input type="email" id="email" name="email" value="${customer.email}"></td>
        </tr>
        <tr>
            <td><label for="aadharNumber">Aadhar Number:</label></td>
            <td><input type="text" id="aadharNumber" name="aadharNumber" value="${customer.aadharNumber}" readonly></td>
        </tr>
        <tr>
            <td><label for="phoneNumber">Phone Number:</label></td>
            <td><input type="text" id="phoneNumber" name="phoneNumber" value="${customer.phoneNumber}" minlength="10" maxlength="10"></td>
        </tr>
        <tr>
            <td><label for="registeredAt">Registered At :</label></td>
            <td><input type="text" id="registeredAt" name="registeredAt" value="${customer.registeredAt}" readonly></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><strong>Address</strong></td>
        </tr>
        <tr>
            <td><label for="street">Street:</label></td>
            <td><input type="text" id="street" name="address.street" value="${customer.address.street}"></td>
        </tr>
        <tr>
            <td><label for="pincode">Pincode:</label></td>
            <td><input type="text" id="pincode" name="address.pincode" value="${customer.address.pincode}"></td>
        </tr>
        <tr>
            <td><label for="city">City:</label></td>
            <td><input type="text" id="city" name="address.city" value="${customer.address.city}"></td>
        </tr>
        <tr>
            <td><label for="state">State:</label></td>
            <td><input type="text" id="state" name="address.state" value="${customer.address.state}"></td>
        </tr>
        <tr>
            <td><label for="country">Country:</label></td>
            <td><input type="text" id="country" name="address.country" value="${customer.address.country}"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>

<br>
<p align="center">&copy; 2025 Smart Bank. All rights reserved.</p>

</body>
</html>
