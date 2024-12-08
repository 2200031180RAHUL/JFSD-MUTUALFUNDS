<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bond Funds - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        :root {
            --primary-color: #4CAF50; /* Updated primary color to a green shade */
            --secondary-color: #ff6f61; /* Updated secondary color */
            --text-color: #ffffff;
            --background-color: #f1f1f1;
            --card-bg-color: #ffffff; /* Light card background */
            --navbar-bg-color: #333333; /* Dark navbar background */
            --footer-bg-color: #2c2c2c; /* Dark footer background */
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            margin: 0;
            line-height: 1.6;
        }

        /* Navbar */
        .navbar {
            background-color: var(--navbar-bg-color); /* Dark navbar */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            color: var(--text-color) !important;
            font-weight: bold;
            font-size: 1.75rem;
        }

        .nav-link {
            color: var(--text-color) !important;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: var(--secondary-color) !important;
        }

        .dropdown-menu {
            background-color: var(--primary-color);
        }

        .dropdown-item {
            color: var(--text-color);
            transition: background-color 0.3s ease;
        }

        .dropdown-item:hover {
            background-color: #388e3c;
        }

        /* Hero Section */
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), 
                        url('https://source.unsplash.com/1600x900/?money,finance') no-repeat center center;
            background-size: cover;
            color: var(--text-color);
            padding: 80px 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }

        .hero-section p {
            font-size: 1.3rem;
            margin-bottom: 2rem;
        }

        .btn-primary {
            padding: 10px 30px;
            font-size: 1.25rem;
            background-color: var(--primary-color);
            border-color: var(--primary-color);
            color: var(--text-color);
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #388e3c;
            border-color: #388e3c;
        }

        /* Loan Options Section */
        .card {
            background-color: var(--card-bg-color);
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-body {
            padding: 30px;
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--primary-color);
        }

        .card-text {
            font-size: 1rem;
            color: #555;
        }

        /* Features Section */
        .feature-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        /* CTA Section */
        .cta-section {
            background-color: var(--primary-color);
            color: var(--text-color);
            padding: 60px 0;
        }

        .cta-section h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .cta-section p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
        }

        .btn-light {
            background-color: var(--text-color);
            color: var(--primary-color);
            padding: 12px 30px;
            font-size: 1.25rem;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-light:hover {
            background-color: #ffffff;
            color: var(--primary-color);
        }

        /* Footer */
        footer {
            background-color: var(--footer-bg-color);
            color: var(--text-color);
            padding: 40px 0;
        }

        footer h5 {
            font-size: 1.25rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }

        footer p {
            font-size: 1rem;
        }

        footer a {
            color: var(--text-color);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        footer a:hover {
            color: var(--secondary-color);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero-section h1 {
                font-size: 2.5rem;
            }

            .hero-section p {
                font-size: 1.1rem;
            }

            .card-body {
                padding: 20px;
            }

            .cta-section h2 {
                font-size: 2rem;
            }

            .cta-section p {
                font-size: 1rem;
            }

            .navbar-brand {
                font-size: 1.5rem;
            }

            .nav-link {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">BOND FUNDS</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adboutus.jsp">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Login
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="adminlogin.jsp">Admin Login</a></li>
                            <li><a class="dropdown-item" href="userlogin.jsp">User Login</a></li>
                            <li><a class="dropdown-item" href="lenderlogin.jsp">Advisor Login</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contactus.jsp">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main>
        <section class="hero-section">
            <div class="container">
                <h1 class="display-4 fw-bold mb-4">Welcome to Bond Funds</h1>
                <p class="lead mb-5">Earn money with calculated risks with high interest benefits</p>
                <a href="userlogin.jsp" class="btn btn-primary btn-lg">Explore Fund Options</a>
            </div>
        </section>

        <!-- Loan Options Section -->
        <section id="loan-options" class="py-5">
            <div class="container">
                <h2 class="text-center mb-5">Our Fund Options</h2>
                <div class="row">
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h5 class="card-title">Debt Funds</h5>
                                <p class="card-text">Invest in bonds and other fixed-income securities, focusing on income and lower risk.</p>
                                <a href="adboutus.jsp" class="btn btn-outline-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h5 class="card-title">Money Market Funds</h5>
                                <p class="card-text">Invest in short-term debt instruments, offering safety and liquidity with modest returns.</p>
                                <a href="adboutus.jsp" class="btn btn-outline-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h5 class="card-title">Balanced Funds</h5>
                                <p class="card-text">A mix of equity and fixed-income securities, aiming for a balance of risk and return.</p>
                                <a href="adboutus.jsp" class="btn btn-outline-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="cta-section text-center">
            <div class="container">
                <h2 class="display-4">Ready to Get Started?</h2>
                <p class="lead">Mutual Fund investments are subject to market risks, read all scheme related documents carefully.</p>
                <a href="userlogin.jsp" class="btn btn-light btn-lg">Apply Now</a>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="text-center text-white">
        <div class="container">
            <h5 class="text-uppercase">Contact Us</h5>
            <p>Email: support@mutualfunds.com</p>
            <p>Phone: +1 (555) 123-4567</p>
            <div>
                <a href="https://facebook.com" class="me-3 text-white"><i class="fab fa-facebook"></i></a>
                <a href="https://twitter.com" class="me-3 text-white"><i class="fab fa-twitter"></i></a>
                <a href="https://instagram.com" class="me-3 text-white"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
