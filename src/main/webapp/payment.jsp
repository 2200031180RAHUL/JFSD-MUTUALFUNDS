<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>New Investment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        .new-investment, .payment-completion {
            background-color: white;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }
        .form-label {
            font-weight: 600;
        }
        .btn-submit {
            background-color: #1E3A8A;
            border: none;
            color: white;
            padding: 10px 30px;
            font-size: 18px;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        .btn-submit:hover {
            background-color: #1E3A8A;
            transform: translateY(-2px);
        }
        .frequency-options input[type="radio"] {
            margin-right: 10px;
        }
        .form-control, .btn-submit {
            border-radius: 10px;
        }
        .payment-completion p {
            color: green;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div id="form-container" class="new-investment">
        <h2 class="text-center">New Investment</h2>
        <form id="investment-form" action="insertloanrequest" method="post">
            <div class="mb-3">
                <label for="schemeOption" class="form-label">Scheme Option:</label>
                <select class="form-control" id="schemeOption" name="schemeOption">
                    <option value="Growth">Growth</option>
                    <option value="Dividend">Dividend</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="investmentType" class="form-label">Investment Type:</label>
                <select class="form-control" id="investmentType" name="investmentType">
                    <option value="SIP">SIP</option>
                    <option value="Lump Sum">Lump Sum</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="installmentAmount" class="form-label">Installment Amount (Min ₹100):</label>
                <input type="number" class="form-control" id="installmentAmount" name="installmentAmount" min="100" required>
            </div>

            <div class="mb-3 frequency-options">
                <label class="form-label">Frequency:</label><br>
                <input type="radio" name="frequency" value="Daily" id="daily"><label for="daily">Daily</label>
                <input type="radio" name="frequency" value="Weekly" id="weekly"><label for="weekly">Weekly</label>
                <input type="radio" name="frequency" value="Fortnightly" id="fortnightly"><label for="fortnightly">Fortnightly</label>
                <input type="radio" name="frequency" value="Monthly" id="monthly" checked><label for="monthly">Monthly</label>
                <input type="radio" name="frequency" value="Quarterly" id="quarterly"><label for="quarterly">Quarterly</label>
            </div>

            <div class="mb-3">
                <label for="startDate" class="form-label">From:</label>
                <input type="date" class="form-control" id="startDate" name="startDate" required value="2024-12-16">
            </div>

            <div class="mb-3">
                <label for="endDate" class="form-label">To:</label>
                <input type="date" class="form-control" id="endDate" name="endDate" required value="2054-12-16">
            </div>

            <div class="mb-3">
                <p>Your SIP would be debited on the 16th of each month</p>
            </div>

            <div class="text-center">
                <button type="submit" class="btn-submit">Submit Investment</button>
            </div>
        </form>
    </div>

    <div id="payment-completion" class="payment-completion" style="display:none;">
        <h2 class="text-center">Payment Completed</h2>
        <p>Your investment has been successfully processed. Redirecting back to your dashboard...</p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById("investment-form").addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent the form from submitting immediately
            
            // Hide the investment form
            document.getElementById("form-container").style.display = "none";
            
            // Show the payment completion page
            document.getElementById("payment-completion").style.display = "block";
            
            // Simulate a delay and redirect back to the user dashboard
            setTimeout(function() {
                window.location.href = "/user-dashboard";  // Adjust this URL to match your dashboard page
            }, 3000); // Wait for 3 seconds before redirecting
        });
    </script>
</body>
</html>