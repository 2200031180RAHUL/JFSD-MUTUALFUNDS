<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Bond Funds</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        :root {
            --primary-color: #007bff; /* Primary color used throughout */
            --secondary-color: #6c757d;
            --text-color: #fff;
            --background-color: #f8f9fa;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            margin: 0;
        }

        .navbar {
            background-color: #454545; /* Light black navbar */
            box-shadow: 0 2px 4px rgba(0,0,0,.1);
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
            border: none;
            background-color: var(--primary-color);
        }

        .dropdown-item {
            color: var(--text-color);
            transition: background-color 0.3s ease;
        }

        .dropdown-item:hover {
            background-color: #0056b3;
        }

        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), 
                        url('https://source.unsplash.com/1600x900/?money,finance') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 100px 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 4rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }

        .hero-section p {
            font-size: 1.5rem;
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
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .team-member img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
        }

        @media (max-width: 991.98px) {
            .hero-section {
                height: 400px;
            }

            .hero-section h1 {
                font-size: 3rem;
            }

            .hero-section p {
                font-size: 1.25rem;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">Bond Funds</a>
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

    <!-- Hero Section -->
    <section class="hero-section text-center">
        <div class="container">
            <h1 class="display-4 fw-bold">About Bond Funds</h1>
            <p class="lead">Your Trusted Financial Partner Since 1970</p>
        </div>
    </section>

    <!-- About Us Section -->
    <main>
        <section class="container mb-5">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h2 class="text-center mb-4">Our Story</h2>
                    <p>Bond funds were created to provide investors with a way to invest in a diversified portfolio of bonds, offering steady income with relatively lower risk.</p>
                    <p>The aim is to generate regular interest payments while preserving capital, making them ideal for conservative investors seeking stability and income.These funds aim to provide steady income through interest payments and are designed to be less volatile than equity funds</p>
                </div>
            </div>
        </section>

        <!-- Our Values Section -->
        <section class="bg-light py-5">
            <div class="container">
                <h2 class="text-center mb-4">Our Values</h2>
                <div class="row">
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <h3 class="card-title">Transparency</h3>
                                <p class="card-text">We believe in clear communication and full disclosure of all terms and conditions.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <h3 class="card-title">Integrity</h3>
                                <p class="card-text">We adhere to the highest ethical standards in all our business practices.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <h3 class="card-title">Innovation</h3>
                                <p class="card-text">We continuously improve our services to meet the evolving needs of our clients.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Our Team Section -->
        <section class="container my-5">
            <h2 class="text-center mb-4">Our Team</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="team-member text-center">
                        <img src="/placeholder.svg?height=150&width=150" alt="Rahul" class="mb-3">
                        <h4>Rahul</h4>
                        <p class="text-muted">Project Member</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="team-member text-center">
                        <img src="/placeholder.svg?height=150&width=150" alt="Jayanth" class="mb-3">
                        <h4>Jayanth</h4>
                        <p class="text-muted">Project Member</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="team-member text-center">
                        <img src="/placeholder.svg?height=150&width=150" alt="Preethi" class="mb-3">
                        <h4>Preethi</h4>
                        <p class="text-muted">Project Member</p>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-4">
        <p>&copy; 2024 Easy Loans. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
