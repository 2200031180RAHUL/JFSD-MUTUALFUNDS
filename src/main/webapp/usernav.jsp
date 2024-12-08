<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Internal CSS for the sidebar -->
<style>
    .sidebar {
        width: 250px;
        height: 100vh;
        background-color: #343a40;
        color: #fff;
        padding-top: 20px;
        position: fixed;
    }
    .sidebar a, .dropdown-item {
        color: #ddd;
        padding: 15px;
        text-decoration: none;
        display: block;
    }
    .sidebar a:hover, .dropdown-item:hover {
        background-color: #495057;
    }
    .sidebar h4 {
        color: #ffffff;
        font-size: 1.5em;
    }
    .dropdown-menu {
        background-color: #343a40;
        border: none;
        box-shadow: none;
    }
    .dropdown-menu .dropdown-item {
        color: #ddd;
    }
    .dropdown-menu .dropdown-item:hover {
        background-color: #495057;
    }
</style>

<div class="sidebar">
    <h4 class="text-center">BondFund</h4>
    <a href="userdashboard">Dashboard</a>
    <a href="loanrequest">Investments</a>
    <a href="loanrequestuserid">Your investments</a>
    <a href="#repayment-history">History</a>
    <a href="#profile">Profile</a>
    <a href="#support">Support</a>

    <!-- Dropdown Menu -->
    <div class="dropdown mt-3">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            Account
        </a>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="#settings">Settings</a>
            <a class="dropdown-item" href="#logout">Logout</a>
        </div>
    </div>
</div>
