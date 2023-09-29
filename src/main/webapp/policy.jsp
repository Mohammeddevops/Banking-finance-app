<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hello World Web Application</title>
<style>
  /* Reset some default styles */
  body {
    margin: 0;
    padding: 0;
  }

  /* Apply styles to the form */
  form {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f5f5f5;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  }

  /* Style headings */
  h1 {
    text-align: center;
    color: #333;
  }

  /* Style input fields and labels */
  .input-group {
    margin-bottom: 20px;
  }

  label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }

  input[type="text"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
  }

  /* Style the table */
  .policy-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
  }

  .policy-table th, .policy-table td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: left;
  }

  /* Style the buttons */
  .button-group {
    text-align: center;
  }

  .button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    margin-right: 10px;
  }

  .button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<form action="addpolicy" id="policyForm" type="POST">
  <h1>Insurance Web Application</h1>
  <div class="input-group">
    <label for="id">Enter your ID:</label>
    <input type="text" id="id" name="id" size="20">
  </div>
  <div class="input-group">
    <label for="name">Enter your name:</label>
    <input type="text" id="name" name="name" size="20">
  </div>
  <div class="input-group">
    <label for="address">Enter your address:</label>
    <input type="text" id="address" name="address" size="50">
  </div>
  <div class="input-group">
    <label for="contact">Enter your contact:</label>
    <input type="text" id="contact" name="contact" size="50">
  </div>
  <table class="policy-table">
    <thead>
      <tr>
        <th>Policy ID</th>
        <th>Customer Name</th>
        <th>Customer Address</th>
        <th>Contact Number</th>
      </tr>
    </thead>
    <tbody>
      <!-- Your policy list goes here -->
      <tr>
        <td>${policy.policyId}</td>
        <td>${policy.customerName}</td>
        <td>${policy.customerAddress}</td>
        <td>${policy.contactNumber}</td>
      </tr>
    </tbody>
  </table>
  <div class="button-group">
    <input type="submit" value="Create Insurance" class="button" onClick="createPolicy()">
    <input type="button" value="Update Insurance" class="button" onclick="updatePolicy()">
    <input type="button" value="Delete Insurance" class="button" onclick="deletePolicy()">
  </div>
</form>
<script>
  // Your JavaScript functions can go here
  function createPolicy() {
    // Add your code here
  }

  function updatePolicy() {
    // Add your code here
  }

  function deletePolicy() {
    // Add your code here
  }
</script>
</body>
</html>
