<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<script>

function createAccount(){
	alert("Account created ");
	var form = document.getElementById("polcyForm");
	
	form.action="createaccount";
	//alert (document.getElementById("polcyForm").action);
	form.method="POST";
	form.method.type="POST";
	//alert (document.getElementById("polcyForm").method);
	form.submit();
}

function updateAccount(){
	alert("Account updated ");
	var form = document.getElementById("polcyForm");
	form.action="updateaccount";
	form.method="PUT";
	form.method.type="PUT";
	form.submit();
}

function deleteAccount(){
	alert("Account deleted ");
	var form = document.getElementById("polcyForm");
	form.action="deleteaccount";
	form.method="DELETE";
	form.method.type="DELETE";
	form.submit();
}
</script>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking web application</title>
</head>
<body>
   	<form action="addpolicy" id="polcyForm" type="POST">

	<br>
    	Enter your ID: <input type="text" name="id" size="20">
    <br>
    	Enter your name: <input type="text" name="name" size="20">
    <br>	
    	Enter your address: <input type="text" name="address" size="50">
    	
    <br>	
    	Enter your contact: <input type="text" name="contact" size="50">
    	
    	
    	  <table>
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
    	
    	
    	<input type="submit" value="Create account"  onClick="createAccount()"/>
    	<input type="button" value="Update account"  onclick="updateAccount()"/>
    	<input type="button" value="Delete account"  onclick="deleteAccount()"/>
    	
	</form>
</body>
</html>
