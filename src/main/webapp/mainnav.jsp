<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bond Funds</title>
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
            background-color: #454545; /* Updated navbar color to light black */
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
            background-image: url('https://your-image-url.com'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: var(--text-color);
            text-align: center;
            position: relative;
        }

        .hero-section::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 123, 255, 0.6); /* Overlay matching #007bff */
            z-index: 1;
        }

        .hero-section .container {
            position: relative;
            z-index: 2;
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

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
