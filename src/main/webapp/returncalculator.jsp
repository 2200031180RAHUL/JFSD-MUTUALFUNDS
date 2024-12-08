<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lender Dashboard - Add Loan</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .content { margin-left: 250px; padding: 20px; }
    .sidebar { width: 250px; height: 100vh; background-color: #343a40; color: #fff; padding-top: 20px; position: fixed; }
    .sidebar a { color: #ddd; padding: 15px; text-decoration: none; display: block; }
    .sidebar a:hover { background-color: #495057; }
  </style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar">
    <h4 class="text-center">EasyPay</h4>
    <a href="#dashboard">Dashboard</a>
    <a href="#loan-requests">Loan Requests</a>
    <a href="#approved-loans">Approved Loans</a>
    <a href="#payments">Payments</a>
    <a href="#profile">Profile</a>
    <a href="#support">Support</a>
    <a href="#add-loan">Add Loan</a>
  </div>

  <!-- Main Content -->
  <div class="content">
    <h2>Add New Loan</h2>
    <form id="loanForm">
      <div class="form-group">
        <label for="loanAmount">Loan Amount (₹)</label>
        <input type="number" class="form-control" id="loanAmount" placeholder="Enter loan amount" required>
      </div>
      <div class="form-group">
        <label for="interestRate">Annual Interest Rate (%)</label>
        <input type="number" class="form-control" id="interestRate" placeholder="Enter interest rate" required>
      </div>
      <div class="form-group">
        <label for="loanTerm">Loan Term (Years)</label>
        <input type="number" class="form-control" id="loanTerm" placeholder="Enter loan term in years" required>
      </div>
      <button type="button" class="btn btn-primary" onclick="calculateLoan()">Calculate Monthly Payment</button>
    </form>

    <div id="result" class="mt-4" style="display: none;">
      <h4>Loan Calculation Result</h4>
      <p>Monthly Payment: ₹<span id="monthlyPayment">0.00</span></p>
      <p>Total Interest: ₹<span id="totalInterest">0.00</span></p>
      <p>Total Payment: ₹<span id="totalPayment">0.00</span></p>
    </div>
  </div>

  <!-- Bootstrap JS, jQuery, and Popper.js -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <script>
    function calculateLoan() {
      const loanAmount = parseFloat(document.getElementById("loanAmount").value);
      const annualInterestRate = parseFloat(document.getElementById("interestRate").value);
      const loanTerm = parseFloat(document.getElementById("loanTerm").value);

      const monthlyInterestRate = annualInterestRate / 100 / 12;
      const numberOfPayments = loanTerm * 12;

      // Calculate monthly payment using the formula
      const monthlyPayment = loanAmount * monthlyInterestRate / (1 - Math.pow(1 + monthlyInterestRate, -numberOfPayments));
      const totalPayment = monthlyPayment * numberOfPayments;
      const totalInterest = totalPayment - loanAmount;

      // Display results with Indian Rupees symbol
      document.getElementById("monthlyPayment").textContent = monthlyPayment.toFixed(2);
      document.getElementById("totalInterest").textContent = totalInterest.toFixed(2);
      document.getElementById("totalPayment").textContent = totalPayment.toFixed(2);
      document.getElementById("result").style.display = "block";
    }
  </script>

</body>
</html>
