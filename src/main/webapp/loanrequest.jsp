<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Investment Options</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f9f9f9;
        }
        .investment-card {
            background-color: white;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            margin: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .investment-card:hover {
            transform: translateY(-10px); /* Makes the card float */
            box-shadow: 0px 15px 25px rgba(0, 0, 0, 0.2); /* Adds a deeper shadow */
        }
        .investment-card h5 {
            font-weight: bold;
            color: #1E3A8A;
        }
        .investment-card p {
            color: #4A6B8E;
        }
        .btn-invest {
            background-color: #1E3A8A;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 10px;
            transition: all 0.3s ease;
        }
        .btn-invest:hover {
            background-color: #174174;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <!-- First Row -->
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Manufacturing Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">SECTORAL THEMATIC</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">32.8437%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Manufacturing Fund')">Invest</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Flexicap Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">FLEXICAP</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">30.0923%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Flexicap Fund')">Invest</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Blue Chip Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">SECTORAL THEMATIC</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">37.1463%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Blue Chip Fund')">Invest</button>
                </div>
            </div>

            <!-- Second Row -->
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Large & Mid Cap Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">LARGE & MIDCAP</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">25.3728%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Large & Mid Cap Fund')">Invest</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Bharat Consumption Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">LARGE CAP</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">20.9123%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Bharat Consumption Fund')">Invest</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Business Cycle Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">VALUE</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">28.7832%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Business Cycle Fund')">Invest</button>
                </div>
            </div>

            <!-- Third Row -->
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Emerging Market Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">INTERNATIONAL</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">18.6543%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Emerging Market Fund')">Invest</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Infrastructure Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">SECTORAL THEMATIC</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">21.3872%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Infrastructure Fund')">Invest</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="investment-card text-center">
                    <h5>Small Cap Fund</h5>
                    <p>Regular - Growth</p>
                    <span class="badge bg-primary">EQUITY FUNDS</span>
                    <span class="badge bg-secondary">SMALL CAP</span>
                    <p class="mt-3">CAGR: <strong style="color: green;">29.8743%</strong></p>
                    <button class="btn-invest" onclick="redirectToPayment('Small Cap Fund')">Invest</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function redirectToPayment(fundName) {
            window.location.href = "payment.jsp?fundName=" + encodeURIComponent(fundName);
        }
    </script>
</body>
</html>