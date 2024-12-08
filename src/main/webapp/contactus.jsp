<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Bond Funds</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #6c757d;
            --accent-color: #28a745;
            --text-color: #333;
            --background-color: #f8f9fa;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
        }

        .page-header {
            background-color: var(--primary-color);
            color: white;
            padding: 60px 0;
            text-align: center;
        }

        .page-header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .page-header p {
            font-size: 1.25rem;
        }

        .contact-section {
            padding: 60px 0;
        }

        .contact-form {
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-form h2 {
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .contact-form label {
            font-weight: bold;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .contact-form button {
            background-color: var(--primary-color);
            color: white;
            font-size: 1.25rem;
            border: none;
            padding: 10px 30px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #0056b3;
        }

        .info-box {
            background-color: var(--primary-color);
            color: white;
            padding: 30px;
            border-radius: 8px;
            text-align: center;
        }

        .info-box h4 {
            margin-bottom: 10px;
        }

        .info-box p {
            margin-bottom: 0;
        }

        .info-box i {
            font-size: 2rem;
            margin-bottom: 10px;
            display: block;
        }
    </style>
</head>
<body>

    <%@ include file="mainnav.jsp" %>

    <!-- Page Header -->
    <div class="page-header">
        <h1>Contact Us</h1>
        <p>We’re here to help and answer any questions you may have.</p>
    </div>

    <!-- Contact Section -->
    <section class="contact-section">
        <div class="container">
            <div class="row">
                <!-- Contact Form -->
                <div class="col-lg-6 mb-4">
                    <div class="contact-form">
                        <h2>Get in Touch</h2>
                        <form action="submitData.jsp" method="POST">
                            <div class="mb-3">
                                <label for="username" class="form-label">Name:</label>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your name" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email:</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                            </div>
                            <div class="mb-3">
                                <label for="message" class="form-label">Message:</label>
                                <textarea class="form-control" id="message" name="message" rows="5" placeholder="Type your message here" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>
                    </div>
                </div>

                <!-- Contact Information -->
                <div class="col-lg-6">
                    <div class="info-box mb-4">
                        <i class="fas fa-map-marker-alt"></i>
                        <h4>Our Office</h4>
                        <p>123 Bond Street, Finance City, FS 12345</p>
                    </div>
                    <div class="info-box mb-4">
                        <i class="fas fa-phone"></i>
                        <h4>Call Us</h4>
                        <p>+1 800 123 4567</p>
                    </div>
                    <div class="info-box">
                        <i class="fas fa-envelope"></i>
                        <h4>Email Us</h4>
                        <p>support@bondfunds.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
