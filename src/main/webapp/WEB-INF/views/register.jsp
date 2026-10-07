<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>

<h2 align="center">User Registration Form</h2>

<form action="saveCustomer" method="post">
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr>
            <td><label for="name">Name:</label></td>
            <td><input type="text" id="name" name="name" required></td>
        </tr>
        <tr>
            <td><label for="age">Age:</label></td>
            <td><input type="number" id="age" name="age" required></td>
        </tr>
        <tr>
            <td><label for="gender">Gender:</label></td>
            <td>
                <select id="gender" name="gender" required>
                    <option value="">--Select--</option>
                    <option value="MALE">Male</option>
                    <option value="FEMALE">Female</option>
                    <option value="OTHER">Other</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><label for="occupation">Occupation:</label></td>
            <td><input type="text" id="occupation" name="occupation" required></td>
        </tr>
        <tr>
            <td><label for="dateOfBirth">Date of Birth:</label></td>
            <td><input type="date" id="dateOfBirth" name="dateOfBirth" required></td>
        </tr>
        <tr>
            <td><label for="email">Email:</label></td>
            <td><input type="email" id="email" name="email" required></td>
        </tr>
        <tr>
            <td><label for="aadharNumber">Aadhar Number:</label></td>
            <td><input type="text" id="aadharNumber" name="aadharNumber" minlength="12" maxlength="12" required></td>
        </tr>
        <tr>
            <td><label for="phoneNumber">Phone Number:</label></td>
            <td><input type="text" id="phoneNumber" name="phoneNumber" minlength="10" maxlength="10" required></td>
        </tr>

        <!-- Address Section -->
        <tr>
            <td colspan="2" align="center"><h3>Address</h3></td>
        </tr>
        <tr>
            <td><label for="street">Street:</label></td>
            <td><input type="text" id="street" name="address.street" required></td>
        </tr>
        <tr>
            <td><label for="pincode">Pincode:</label></td>
            <td><input type="text" id="pincode" name="address.pincode" required></td>
        </tr>
        <tr>
            <td><label for="city">City:</label></td>
            <td><input type="text" id="city" name="address.city" required></td>
        </tr>
        <tr>
            <td><label for="state">State:</label></td>
            <td><input type="text" id="state" name="address.state" required></td>
        </tr>
        <tr>
            <td><label for="country">Country:</label></td>
            <td><input type="text" id="country" name="address.country" required></td>
        </tr>

        <tr>
            <td colspan="2" align="center"><input type="submit" value="Register"></td>
        </tr>
    </table>
</form>

<h2 align="center">Account already exists ? <a href="${pageContext.request.contextPath}/customer/login">Login</a></h2>

</body>
</html>
