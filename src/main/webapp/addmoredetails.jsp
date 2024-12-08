<%@page import="com.example.springboot.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HttpSession httpSession = request.getSession();
    User user = (User) httpSession.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add More Details Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 30px;
        }
        .form-section {
            padding: 20px;
            border: 1px solid #dee2e6;
            background-color: #fff;
            border-radius: 8px;
        }
        .form-section h4 {
            margin-bottom: 20px;
        }
    </style>
</head>
<%@include file="advisornav.jsp" %>
<body>

<div class="container">
    <form action="/insertaddmoredetails" method="POST" enctype="multipart/form-data">
        <div class="row">
            <!-- User Details Section -->
            <div class="col-md-6 form-section">
                <h4>User Details</h4>
                
                <div class="form-group">
                    <label for="userId">User ID</label>
                      <input type="text" class="form-control" id="userid" name="userid" value="<%= user != null ? user.getId() : "" %>" readonly>
                  </div>
                    
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" maxlength="50" required>
                </div>
                
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" maxlength="100" required>
                </div>
                
                <div class="form-group">
                    <label for="phoneNumber">Phone Number</label>
                    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" maxlength="15" required>
                </div>
                
                <div class="form-group">
                    <label for="phonePayNumber">PhonePay Number</label>
                    <input type="text" class="form-control" id="phonePayNumber" name="phonePayNumber" maxlength="15">
                </div>
                
                <div class="form-group">
                    <label for="userAdharImage">User Aadhaar Image</label>
                    <input type="file" class="form-control-file" id="userAdharImage" name="userAdharImage" required>
                </div>
                
                <h4>Bank Details</h4>
                
                <div class="form-group">
                    <label for="bankAccountNumber">Bank Account Number</label>
                    <input type="text" class="form-control" id="bankAccountNumber" name="bankAccountNumber" maxlength="20" required>
                </div>
                
                <div class="form-group">
                    <label for="ifscCode">IFSC Code</label>
                    <input type="text" class="form-control" id="ifscCode" name="ifscCode" maxlength="11" required>
                </div>
                
                <div class="form-group">
                    <label for="branchName">Branch Name</label>
                    <input type="text" class="form-control" id="branchName" name="branchName" maxlength="50" required>
                </div>
            </div>

            <!-- Nominee Details Section -->
            <div class="col-md-6 form-section">
                <h4>Nominee Details</h4>
                
                <div class="form-group">
                    <label for="nomineeName">Nominee Name</label>
                    <input type="text" class="form-control" id="nomineeName" name="nomineeName" maxlength="50" required>
                </div>
                
                <div class="form-group">
                    <label for="nomineeRelationship">Relationship</label>
                    <input type="text" class="form-control" id="nomineeRelationship" name="nomineeRelationship" maxlength="20" required>
                </div>
                
                <div class="form-group">
                    <label for="nomineePhoneNumber">Nominee Phone Number</label>
                    <input type="text" class="form-control" id="nomineePhoneNumber" name="nomineePhoneNumber" maxlength="15" required>
                </div>
                
                <div class="form-group">
                    <label for="nomineeAddress">Nominee Address</label>
                    <input type="text" class="form-control" id="nomineeAddress" name="nomineeAddress" maxlength="100" required>
                </div>
                
                <div class="form-group">
                    <label for="nomineeAdharImage">Nominee Aadhaar Image</label>
                    <input type="file" class="form-control-file" id="nomineeAdharImage" name="nomineeAdharImage" required>
                </div>
                
                <button type="submit" class="btn btn-primary mt-3">Submit</button>
            </div>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
