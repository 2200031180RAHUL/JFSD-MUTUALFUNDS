<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Advisor Dashboard</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      display: flex;
    }
    .sidebar {
      width: 250px;
      height: 100vh;
      background-color: #343a40;
      color: #fff;
      padding-top: 20px;
      position: fixed;
    }
    .sidebar a {
      color: #ddd;
      padding: 15px;
      text-decoration: none;
      display: block;
    }
    .sidebar a:hover {
      background-color: #495057;
    }
    .content {
      margin-left: 250px;
      padding: 20px;
      width: 100%;
    }
    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar">
    <h4 class="text-center">Bond Funds</h4>
    <a href="#dashboard">Dashboard</a>
    <a href="#loan-requests">Loan Requests</a>
    <a href="#approved-loans">Approved Loans</a>
    <a href="#payments">Payments</a>
    <a href="#profile">Profile</a>
    <a href="#support">Support</a>
  </div>

  <!-- Main Content -->
  <div class="content">
    <h2>Advisor Dashboard</h2>
    <div class="row">
      
      <!-- Loan Requests Card -->
      <div class="col-md-4">
        <div class="card p-4 mb-4">
          <h5>Investments</h5>
          <p>Investment involves using your money to purchase assets—such as stocks, bonds, mutual funds, or real estate.</p>
          <a href="viewloanrequest" class="btn btn-primary">View Requests</a>
        </div>
      </div>
      
      <!-- Approved Loans Card -->
      <div class="col-md-4">
        <div class="card p-4 mb-4">
          <h5>Your Investments</h5>
          <p>a record of past investments you’ve made, including the types of assets you invested in, the amount invested, and the returns or losses that resulted</p>
          <a href="#" class="btn btn-success">Manage Loans</a>
        </div>
      </div>
      
      <!-- Payment History Card -->
      <div class="col-md-4">
        <div class="card p-4 mb-4">
          <h5>History</h5>
          <p>Progress toward financial goals, identifying patterns, and learning from successes and mistakes.</p>
          <a href="#" class="btn btn-warning">Check Payments</a>
        </div>
      </div>

      <!-- Profile Card -->
      <div class="col-md-4">
        <div class="card p-4 mb-4">
          <h5>Profile</h5>
          <p>Manage your profile and account settings.</p>
          <a href="#" class="btn btn-secondary">Edit Profile</a>
        </div>
      </div>

      <!-- Support Card -->
      <div class="col-md-4">
        <div class="card p-4 mb-4">
          <h5>Support</h5>
          <p>Need help? Contact our support team for assistance.</p>
          <a href="#" class="btn btn-info">Get Support</a>
        </div>
      </div>
      
    </div>
  </div>

  <!-- Bootstrap JS, jQuery, and Popper.js -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
