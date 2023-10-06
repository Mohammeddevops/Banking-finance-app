<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banking Web Application</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Navbar and Background Image -->
    <style>
        body {
            background-image: url('images/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .navbar {
            background-color: #0056b3; /* Change the background color to a different shade of blue */
        }

        .navbar-nav .nav-link {
            color: #fff; /* Set the text color to white */
        }

        .navbar-nav .nav-link:hover {
            color: #fff; /* Set the hover text color to white */
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Banking and Finance Domain</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <!-- Your existing content here -->
        <form action="addpolicy" id="polcyForm" method="POST">
            <br>
            Account Number: <input type="text" name="id" size="20">
            <br>
            Customer Name: <input type="text" name="name" size="20">
            <br>
            Customer Addr: <input type="text" name="address" size="50">
            <br>
            Contact Number: <input type="text" name="contact" size="50">
            
            <table class="table table-striped mt-3">
                <thead>
                    <tr>
                        <th>Account ID</th>
                        <th>Customer Name</th>
                        <th>Customer Address</th>
                        <th>Contact Number</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${accountList}" var="account">
                        <tr>
                            <td>${account.accountId}</td>
                            <td>${account.customerName}</td>
                            <td>${account.customerAddress}</td>
                            <td>${account.contactNumber}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
            <input type="submit" class="btn btn-primary" value="Create account" onClick="createAccount()" />
            <input type="button" class="btn btn-success" value="Update account" onclick="updateAccount()" />
            <input type="button" class="btn btn-danger" value="Delete account" onclick="deleteAccount()" />
        </form>
    </div>

    <!-- Include Bootstrap JS and jQuery at the end of the body section -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Your JavaScript functions (createAccount, updateAccount, deleteAccount) can be placed here -->
    <script>
    function createAccount() {
        alert("Account created");
        var form = document.getElementById("polcyForm");
        form.action = "createaccount";
        form.method = "POST";
        form.method.type = "POST";
        form.submit();
    }

    function updateAccount() {
        alert("Account updated");
        var form = document.getElementById("polcyForm");
        form.action = "updateaccount";
        form.method = "POST"; // You can adjust the method as needed
        form.method.type = "POST"; // You can adjust the method as needed
        form.submit();
    }

    function deleteAccount() {
        alert("Account deleted");
        var form = document.getElementById("polcyForm");
        form.action = "deleteaccount";
        form.method = "POST"; // You can adjust the method as needed
        form.method.type = "POST"; // You can adjust the method as needed
        form.submit();
    }
    </script>
</body>
</html>
