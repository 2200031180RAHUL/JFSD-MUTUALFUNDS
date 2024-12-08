<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .user-card {
            width: 300px;
            margin: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.2s;
        }
        .user-card:hover {
            transform: scale(1.05);
        }
        .user-card img {
            border-radius: 50%;
            margin: 15px auto;
            display: block;
            width: 100px;
            height: 100px;
            object-fit: cover;
        }
        .card-body {
            padding: 20px;
            text-align: center;
        }
        .card-body h5 {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
        .card-body p {
            margin: 5px 0;
            font-size: 14px;
            color: #666;
        }
        .card-body .detail-label {
            font-weight: bold;
            color: #555;
        }
        .dual-box-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .btn-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
</head>
<%@include file="lendernav.jsp" %>
<body>
<div class="container mt-5">
    <h2 class="text-center">User Details</h2>

    <c:if test="${not empty detailsList}">
        <div class="card-container">
            <c:forEach var="details" items="${detailsList}">
                <div class="dual-box-container">
                    <!-- User Details Box -->
                    <div class="user-card">
                        <img src="/displayUserAdharImage?userId=${details.userId}" alt="User Adhar Image">
                        <div class="card-body">
                            <h5>User Information</h5>
                            <p><span class="detail-label">User ID:</span> ${details.userId}</p>
                            <p><span class="detail-label">Email:</span> ${details.email}</p>
                            <p><span class="detail-label">Address:</span> ${details.address}</p>
                            <p><span class="detail-label">Phone:</span> ${details.phoneNumber}</p>
                            <p><span class="detail-label">PhonePay Number:</span> ${details.phonePayNumber}</p>
                            <p><span class="detail-label">Bank Account:</span> ${details.bankAccountNumber}</p>
                            <p><span class="detail-label">Branch Name:</span> ${details.branchName}</p>
                            <p><span class="detail-label">IFSC Code:</span> ${details.ifscCode}</p>
                        </div>
                    </div>

                    <!-- Nominee Details Box -->
                    <div class="user-card">
                        <img src="/displayNomineeAdharImage?userId=${details.userId}" alt="Nominee Adhar Image">
                        <div class="card-body">
                            <h5>Nominee Information</h5>
                            <p><span class="detail-label">Nominee Name:</span> ${details.nomineeName}</p>
                            <p><span class="detail-label">Nominee Phone:</span> ${details.nomineePhoneNumber}</p>
                            <p><span class="detail-label">Nominee Address:</span> ${details.nomineeAddress}</p>
                            <p><span class="detail-label">Relationship:</span> ${details.nomineeRelationship}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </c:if>

    <c:if test="${empty detailsList}">
        <p class="text-danger text-center">No details found for this user.</p>
    </c:if>

    <!-- Sanctioned Loan Section -->
    <c:if test="${not empty sanctionedLoan}">
        <div class="card-container">
            <div class="user-card">
                <div class="card-body">
                    <h5>Sanctioned Loan Information</h5>
                    <p><span class="detail-label">Sanctioned Amount:</span> ${sanctionedLoan.sanctionedAmount}</p>
                    <p><span class="detail-label">Loan Term:</span> ${sanctionedLoan.loanTerm} months</p>
                    <p><span class="detail-label">Monthly Payment:</span> ${sanctionedLoan.monthlyPayment}</p>
                    <p><span class="detail-label">Annual Interest:</span> ${sanctionedLoan.annualInterest}%</p>
                    <p><span class="detail-label">Total Amount Due:</span> ${sanctionedLoan.totalAmountDue}</p>
                    <p><span class="detail-label">Sanction Date:</span> ${sanctionedLoan.sanctionDate}</p>
                </div>
            </div>
        </div>
    </c:if>

    <!-- Button to Redirect to Add Loan Page -->
    <div class="btn-container">
        <a href="${pageContext.request.contextPath}/addloan" class="btn btn-primary">Add Loan</a>
    </div>

</div>
</body>
</html>
