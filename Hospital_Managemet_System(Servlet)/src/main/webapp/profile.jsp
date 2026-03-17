<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Profile | Rixzo Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background-color: #f8f9fc;
    }

    .sidebar {
        width: 240px;
        position: fixed;
        top: 0;
        left: 0;
        bottom: 0;
        background: #ffffff;
        box-shadow: 0 0 15px rgba(0,0,0,0.05);
        padding: 20px 0;
    }

    .sidebar h4 {
        font-weight: 600;
        text-align: center;
        margin-bottom: 25px;
        color: #0d6efd;
    }

    .sidebar a {
        display: block;
        padding: 10px 25px;
        color: #333;
        text-decoration: none;
        font-weight: 500;
    }

    .sidebar a:hover,
    .sidebar a.active {
        background: #eaf2ff;
        color: #0d6efd;
    }

    .main-content {
        margin-left: 250px;
        padding: 30px;
    }

    .card {
        border: none;
        border-radius: 15px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.05);
    }

    .profile-img {
        width: 120px;
        height: 120px;
        border-radius: 50%;
        object-fit: cover;
        margin-bottom: 10px;
    }

    .progress {
        height: 8px;
        border-radius: 4px;
    }

    .navbar {
        background-color: #ffffff;
        border-radius: 15px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    }
</style>
</head>

<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h4>Green City Hospital....!</h4>
        <a href="index.jsp"><i class="bi bi-speedometer2 me-2"></i>Dashboard</a>
        <a href="profile.jsp"><i class="bi bi-person me-2"></i>Profile</a>
        <a href="hospital.jsp"><i class="bi bi-box-arrow-right me-2"></i>Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light mb-4 p-3">
            <div class="container-fluid">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search...">
                </form>
                <div class="d-flex align-items-center">
                    <span class="me-2 fw-medium text-muted">Green City Hospital</span>
                    <img src="https://randomuser.me/api/portraits/women/75.jpg" width="40" height="40" class="rounded-circle">
                </div>
            </div>
        </nav>

        <!-- Profile Info -->
        <div class="row">
            <!-- Left Card -->
            <div class="col-md-4">
                <div class="card p-4 text-center">
                    <h5 class="fw-bold mb-1 mt-4"> Pravina Mane</h5>
                    <p class="text-muted small mb-3">Full Stack Developer<br>Bay Area, San Francisco, CA</p>
                    <div class="d-flex justify-content-center gap-2 mb-3">
                        <button class="btn btn-primary btn-sm">Follow</button>
                        <button class="btn btn-outline-primary btn-sm">Message</button>
                    </div>

                    <div class="text-start">
                        <p><i class="bi bi-globe me-2"></i><b>Website:</b> https://greencityHospital</p>
                        <p><i class="bi bi-github me-2"></i><b>Github:</b> pravinaMane</p>
                        <p><i class="bi bi-twitter me-2"></i><b>Twitter:</b> @pravinaMane</p>
                        <p><i class="bi bi-instagram me-2"></i><b>Instagram:</b> pravinaMane07</p>
                        <p><i class="bi bi-facebook me-2"></i><b>Facebook:</b> pravinaMane</p>
                    </div>
                </div>
            </div>

            <!-- Right Card -->
            <div class="col-md-8">
                <div class="card p-4 mb-4">
                    <h6 class="fw-bold mb-3"> Profile Info </h6>
                    <form action="updateProfile" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" name="fullname" value=" Pravina Mane">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" value="manepravina77@gmail.com">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Phone</label>
                            <input type="text" class="form-control" name="phone" value="4521453621">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Mobile</label>
                            <input type="text" class="form-control" name="mobile" value="(320) 380-4539">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" value="KarveNagar , pune">
                        </div>
                        <button type="submit" class="btn btn-primary">Perfect </button>
                    </form>
                </div>

            </div>
        </div>
    </div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
