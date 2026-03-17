<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- This code generates the base URL for the website by combining the protocol, domain name, and directory path -->
    <!-- This code generates the base URL for the website by combining the protocol, domain name, and directory path -->

    <!-- This code is useful for internal styles  -->
    <!-- This code is useful for internal styles  -->

    <!-- This code is useful for content -->
    <!-- This code is useful for content -->

    <!-- This code is useful for internal scripts  -->
    <!-- This code is useful for internal scripts  -->

    <!-- This code use for render base file -->
    <!DOCTYPE html>
    <html lang="en" dir="ltr" data-nav-layout="vertical" data-theme-mode="light" data-header-styles="light" data-menu-styles="dark" data-toggled="close">

    <!-- Mirrored from php.spruko.com/rixzo/rixzo/pages/index12.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Oct 2025 09:15:37 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>

        <!-- Meta Data -->
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="Description" content="Rixzo - PHP Bootstrap 5 Premium Admin &amp; Dashboard Template">
        <meta name="Author" content="Spruko Technologies Private Limited">
        <meta name="keywords" content="php admin dashboard, php admin panel, bootstrap template admin panel, bootstrap templates dashboard, bootstrap templates admin, dashboard, php, php bootstrap, php admin panel template, php admin template, php dashboard, php dashboard template, php template, template admin php, admin dashboard in php">

        <!-- TITLE -->
        <title>Rixzo - PHP Bootstrap 5 Premium Admin &amp; Dashboard Template </title>

        <!-- FAVICON -->
        <link rel="icon" href="https://php.spruko.com/rixzo/rixzo/assets/images/brand-logos/favicon.ico" type="image/x-icon">

        <!-- BOOTSTRAP CSS -->
        <link  id="style" href="assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        
        <!-- STYLES CSS -->
        <link href="assets/css/styles.css" rel="stylesheet">
        
        <!-- ICONS CSS -->
        <link href="assets/css/icons.css" rel="stylesheet">

        
        <!-- NODE WAVES CSS -->
        <link href="assets/libs/node-waves/waves.min.css" rel="stylesheet"> 

        <!-- SIMPLEBAR CSS -->
        <link rel="stylesheet" href="assets/libs/simplebar/simplebar.min.css">

        <!-- PICKER CSS -->
        <link rel="stylesheet" href="assets/libs/flatpickr/flatpickr.min.css">
        <link rel="stylesheet" href="assets/libs/%40simonwep/pickr/themes/nano.min.css">

        <!-- AUTO COMPLETE CSS -->
        <link rel="stylesheet" href="assets/libs/%40tarekraafat/autocomplete.js/css/autoComplete.css">
        
        <!-- CHOICES CSS -->
        <link rel="stylesheet" href="assets/libs/choices.js/public/assets/styles/choices.min.css">

        <!-- CHOICES JS -->
        <script src="assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>
        
        <!-- MAIN JS -->
        <script src="assets/js/main.js"></script>
        <style>
        
         body{
         font-family: Arial, sans-serif;
         }
         . footer{
         margin-bottom:0;
         }
            
        </style>

    </head>

    <body>
<%
String role = (String) session.getAttribute("role");
if(role == null){
    response.sendRedirect("hospital.jsp");
    return;
}
%>

<!-- PAGE -->
<div class="page">

<!-- HEADER -->

<header class="app-header">

<!-- Start::main-header-container -->
<div class="main-header-container container-fluid">

<!-- Start::header-content-left -->
<div class="header-content-left">

    <!-- Start::header-element -->
    <div class="header-element">
        <div class="horizontal-logo">
            <a href="index.html" class="header-logo">
                <img src="assets/images/brand-logos/city1.png" alt="logo" class="desktop-logo ">
                <img src="assets/images/brand-logos/city1.png" alt="logo" class="toggle-logo">
                <img src="assets/images/brand-logos/city1.png" alt="logo" class="desktop-white">
                <img src="assets/images/brand-logos/city1.png" alt="logo" class="toggle-white">
            </a>
        </div>
    </div>
    <!-- End::header-element -->

    <!-- Start::header-element -->
    <div class="header-element mx-lg-0 mx-2">
        <a aria-label="Hide Sidebar" class="sidemenu-toggle header-link animated-arrow hor-toggle horizontal-navtoggle" data-bs-toggle="sidebar" href="javascript:void(0);"><span></span></a>
    </div>
    <!-- End::header-element -->

    <!-- Start::header-element -->
    <div class="header-element header-search d-lg-block d-none my-auto auto-complete-search">
        <!-- Start::header-link -->
        <input type="text" class="header-search-bar form-control rounded-pill" id="header-search" placeholder="Search for Results..." spellcheck=false autocomplete="off" autocapitalize="off">
        <a href="javascript:void(0);" class="header-search-icon border-0">
            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#5f6368"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/></svg>
        </a>
        <!-- End::header-link -->
    </div>
    
    <!-- End::header-element -->

</div>
<!-- End::header-content-left -->

<!-- Start::header-content-right -->
<div class="header-content-right">

    <!-- Start::header-element -->
    <div class="header-element d-lg-none d-flex">
        <a href="javascript:void(0);" class="header-link" data-bs-toggle="modal" data-bs-target="#responsive-searchModal">
            <!-- Start::header-link-icon -->
            <svg xmlns="http://www.w3.org/2000/svg" class="header-link-icon" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M784-120 532-372q-30 24-69 38t-83 14q-109 0-184.5-75.5T120-580q0-109 75.5-184.5T380-840q109 0 184.5 75.5T640-580q0 44-14 83t-38 69l252 252-56 56ZM380-400q75 0 127.5-52.5T560-580q0-75-52.5-127.5T380-760q-75 0-127.5 52.5T200-580q0 75 52.5 127.5T380-400Z"/></svg>
            <!-- End::header-link-icon -->
        </a>  
    </div>
    <!-- End::header-element -->

    <!-- Start::header-element -->
    <div class="header-element country-selector dropdown">

        <ul class="main-header-dropdown dropdown-menu dropdown-menu-end" data-popper-placement="none">
            <li>
                <a class="dropdown-item d-flex align-items-center" href="javascript:void(0);">
                    <span class="avatar avatar-xs avatar-rounded lh-1 me-2">
                        <img src="assets/images/flags/us_flag.jpg" alt="img">
                    </span>
                    English
                </a>
            </li>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="javascript:void(0);">
                    <span class="avatar avatar-xs avatar-rounded lh-1 me-2">
                        <img src="assets/images/flags/spain_flag.jpg" alt="img" >
                    </span>
                    Spanish
                </a>
            </li>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="javascript:void(0);">
                    <span class="avatar avatar-xs avatar-rounded lh-1 me-2">
                        <img src="assets/images/flags/french_flag.jpg" alt="img" >
                    </span>
                    French
                </a>
            </li>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="javascript:void(0);">
                    <span class="avatar avatar-xs avatar-rounded lh-1 me-2">
                        <img src="assets/images/flags/germany_flag.jpg" alt="img" >
                    </span>
                    German
                </a>
            </li>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="javascript:void(0);">
                    <span class="avatar avatar-xs avatar-rounded lh-1 me-2">
                        <img src="assets/images/flags/italy_flag.jpg" alt="img" >
                    </span>
                    Italian
                </a>
            </li>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="javascript:void(0);">
                    <span class="avatar avatar-xs avatar-rounded lh-1 me-2">
                        <img src="assets/images/flags/russia_flag.jpg" alt="img" >
                    </span>
                    Russian
                </a>
            </li>
        </ul>
    </div>
    <!-- End::header-element -->

    <!-- Start::header-element -->
    <div class="header-element header-theme-mode">
        <!-- Start::header-link|layout-setting -->
        <a href="javascript:void(0);" class="header-link layout-setting">
            <span class="light-layout">
                <!-- Start::header-link-icon -->
                <svg xmlns="http://www.w3.org/2000/svg" class="header-link-icon" enable-background="new 0 0 24 24" height="24px" viewBox="0 0 24 24" width="24px" fill="#5f6368"><rect fill="none" height="24" width="24"/><path d="M9.37,5.51C9.19,6.15,9.1,6.82,9.1,7.5c0,4.08,3.32,7.4,7.4,7.4c0.68,0,1.35-0.09,1.99-0.27C17.45,17.19,14.93,19,12,19 c-3.86,0-7-3.14-7-7C5,9.07,6.81,6.55,9.37,5.51z M12,3c-4.97,0-9,4.03-9,9s4.03,9,9,9s9-4.03,9-9c0-0.46-0.04-0.92-0.1-1.36 c-0.98,1.37-2.58,2.26-4.4,2.26c-2.98,0-5.4-2.42-5.4-5.4c0-1.81,0.89-3.42,2.26-4.4C12.92,3.04,12.46,3,12,3L12,3z"/></svg>
                <!-- End::header-link-icon -->
            </span>
            <span class="dark-layout">
                <!-- Start::header-link-icon -->
                <svg xmlns="http://www.w3.org/2000/svg" class="header-link-icon" height="24px" viewBox="0 0 24 24" width="24px" fill="#5f6368"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M6.76 4.84l-1.8-1.79-1.41 1.41 1.79 1.79zM1 10.5h3v2H1zM11 .55h2V3.5h-2zm8.04 2.495l1.408 1.407-1.79 1.79-1.407-1.408zm-1.8 15.115l1.79 1.8 1.41-1.41-1.8-1.79zM20 10.5h3v2h-3zm-8-5c-3.31 0-6 2.69-6 6s2.69 6 6 6 6-2.69 6-6-2.69-6-6-6zm0 10c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm-1 4h2v2.95h-2zm-7.45-.96l1.41 1.41 1.79-1.8-1.41-1.41z"/></svg>
                <!-- End::header-link-icon -->
            </span>
        </a>
        <!-- End::header-link|layout-setting -->
    </div>
    <!-- End::header-element -->


    <!-- Start::header-element -->
    <div class="header-element header-shortcuts-dropdown dropdown">
       


    <!-- Start::header-element -->
    <div class="header-element dropdown">
        <!-- Start::header-link|dropdown-toggle -->
        <a href="javascript:void(0);" class="header-link dropdown-toggle" id="mainHeaderProfile" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
            <span class="avatar avatar-sm avatar-rounded">
                <img src="assets/images/faces/14.jpg" alt="img" class="img-fluid">
            </span>
        </a>
        <!-- End::header-link|dropdown-toggle -->
        <ul class="main-header-dropdown dropdown-menu pt-0 overflow-hidden header-profile-dropdown dropdown-menu-end" aria-labelledby="mainHeaderProfile">
            <li class="p-3 bg-light bg-opacity-75 border-bottom">
                <div class="d-flex align-items-center justify-content-between gap-4">
                    <div>
                        <p class="mb-0 fw-semibold lh-1">Pravina Mane</p>
                        <span class="fs-11 text-muted">manepravina7493@gmail.com</span>
                        <span class="fs-11 text-muted">Assistant Manager</span>
                    </div>
                    <span class="badge bg-pink align-self-end mb-1">Pro</span>
                </div>
            </li>
            <li><a class="dropdown-item d-flex align-items-center" href="profile.jsp"><i class="ti ti-user-circle fs-18 me-2 text-gray fw-normal"></i>My Profile</a></li>
           
            <li><a class="dropdown-item d-flex align-items-center" href="hospital.jsp"><i class="ti ti-logout fs-18 me-2 text-gray fw-normal"></i>Sign Out</a></li>
        </ul>
    </div>  
    <!-- End::header-element -->


</header>

<div class="modal fade" id="responsive-searchModal" tabindex="-1" aria-labelledby="responsive-searchModal" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
    <div class="modal-body">
        <div class="input-group">
            <input type="text" class="form-control border-end-0" placeholder="Search Anything ..."
                aria-label="Search Anything ..." aria-describedby="button-addon2">
            <button class="btn btn-primary" type="button"
                id="button-addon2"><i class="bi bi-search"></i></button>
        </div>
    </div>
</div>
</div>
</div>
<!-- END HEADER -->

<!-- SIDEBAR -->

<aside class="app-sidebar sticky" id="sidebar">

<!-- Start::main-sidebar-header -->
<div class="main-sidebar-header">
<a href="index.html" class="header-logo">
    <img src="assets/images/brand-logos/city1.png" alt="logo" class="desktop-logo">
    <img src="assets/images/brand-logos/city1.png" alt="logo" class="toggle-logo">
    <img src="assets/images/brand-logos/city1.png" alt="logo" class="desktop-white">
    <img src="assets/images/brand-logos/city1.png" alt="logo" class="toggle-white">
</a>
</div>
<!-- End::main-sidebar-header -->

<!-- Start::main-sidebar -->
<div class="main-sidebar" id="sidebar-scroll" style="height: calc(100vh - 80px); overflow-y: auto; overflow-x: hidden;">


<!-- Start::nav -->
<nav class="main-menu-container nav nav-pills flex-column sub-open">
    <div class="slide-left" id="slide-left">
        <svg xmlns="http://www.w3.org/2000/svg" fill="#7b8191" width="24" height="24" viewBox="0 0 24 24"> <path d="M13.293 6.293 7.586 12l5.707 5.707 1.414-1.414L10.414 12l4.293-4.293z"></path> </svg>
    </div>
    <ul class="main-menu">
        <!-- Start::slide__category -->
        <li class="slide__category"><span class="category-name">Main</span></li>
        <!-- End::slide__category -->

        <!-- Start::slide -->
        <% if(role.equals("admin") || role.equals("doctor")) { %>
         <li class="slide has-sub">
              <a href="index.jsp" class="side-menu__item">
                  <svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" height="24px" viewBox="0 0 24 24" width="24px" fill="#5f6368"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 3L2 12h3v8h6v-6h2v6h6v-8h3L12 3zm5 15h-2v-6H9v6H7v-7.81l5-4.5 5 4.5V18z"/><path d="M7 10.19V18h2v-6h6v6h2v-7.81l-5-4.5z" opacity=".3"/></svg>
                  <span class="side-menu__label fs-28 text-secondary"> Doctor Dashboard</span>
               
              </a>
          <ul class="slide-menu child1">
                  <li class="slide side-menu__label1 ">
                  
                      <a href="javascript:void(0)">Dashboards</a>
                  </li>
         </ul>
        
                <li class="slide">
                    <a href="AddDoctor.jsp" class="side-menu__item"><span class="fs-18">Add Doctor</span></a>
                </li>
                <li class="slide">
                    <a href="RemoveDoctor.jsp" class="side-menu__item"><span class="fs-18">Remove Doctor</span></a>
                </li>
                <li class="slide">
                    <a href="UpdateDoctor.jsp" class="side-menu__item "><span class="fs-18">Update Doctor</span></a>
                </li>
                    <li class="slide">
                    <a href="selectAllDoctor" class="side-menu__item"><span class="fs-18">View Doctor's List</span></a>
                </li>
            
            </ul>
        </li> <% } %>
        <!-- End::slide -->
        
        <!-- Start::slide -->
        <% if(role.equals("admin") || role.equals("doctor") || role.equals("staff")) { %>
         <li class="slide has-sub">
              <a href="index.jsp" class="side-menu__item">
                  <svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" height="24px" viewBox="0 0 24 24" width="30px" fill="#5f6368"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 3L2 12h3v8h6v-6h2v6h6v-8h3L12 3zm5 15h-2v-6H9v6H7v-7.81l5-4.5 5 4.5V18z"/><path d="M7 10.19V18h2v-6h6v6h2v-7.81l-5-4.5z" opacity=".3"/></svg>
                  <span class="side-menu__label fs-30 text-info"> Patient Dashboard</span>
               
              </a>
          <ul class="slide-menu child1">
                  <li class="slide side-menu__label1 ">
                      <a href="javascript:void(0)">Dashboards</a>
                  </li>
         </ul>
        
                <li class="slide">
                    <a href="AddPatient.jsp" class="side-menu__item"><span class="fs-18">Add Patient</span></a>
                </li>
                <li class="slide">
                    <a href="RemovePatient.jsp" class="side-menu__item"><span class="fs-18">Remove Patient</span></a>
                </li>
                <li class="slide">
                    <a href="UpdatePatient.jsp" class="side-menu__item "><span class="fs-18">Update Patient</span></a>
                </li>
                    <li class="slide">
                    <a href="selectAllPatient" class="side-menu__item"><span class="fs-18">View Patient's List</span></a>
                </li>
            
            </ul>
        </li>
        
        <% } %>
        <!-- End::slide -->
                
        <!-- Start::slide -->
        <% if(role.equals("admin")) { %>
         <li class="slide has-sub">
              <a href="index.jsp" class="side-menu__item">
                  <svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" height="24px" viewBox="0 0 24 24" width="24px" fill="#5f6368"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 3L2 12h3v8h6v-6h2v6h6v-8h3L12 3zm5 15h-2v-6H9v6H7v-7.81l5-4.5 5 4.5V18z"/><path d="M7 10.19V18h2v-6h6v6h2v-7.81l-5-4.5z" opacity=".3"/></svg>
                  <span class="side-menu__label fs-25 text-body"> Staff Management</span>
               
              </a>
          <ul class="slide-menu child1">
                  <li class="slide side-menu__label1 ">
                      <a href="javascript:void(0)">Dashboards</a>
                  </li>
         </ul>
        
                <li class="slide">
                    <a href="AddEmp.jsp" class="side-menu__item"><span class="fs-16">Add Employee</span></a>
                </li>
                <li class="slide">
                    <a href="RemoveEmp.jsp" class="side-menu__item"><span class="fs-16">Remove Employee</span></a>
                </li>
                <li class="slide">
                    <a href="UpdateEmp.jsp" class="side-menu__item "><span class="fs-16">Update Employees</span></a>
                </li>
                    <li class="slide">
                    <a href="selectAllEmp" class="side-menu__item"><span class="fs-16">View Employee List</span></a>
                </li>
            
            </ul>
        </li>
        
        <% } %>
        <!-- End::slide -->



    </ul>
    <div class="slide-right" id="slide-right"><svg xmlns="http://www.w3.org/2000/svg" fill="#7b8191" width="24" height="24" viewBox="0 0 24 24"> <path d="M10.707 17.707 16.414 12l-5.707-5.707-1.414 1.414L13.586 12l-4.293 4.293z"></path> </svg></div>
</nav>
<!-- End::nav -->

</div>
<!-- End::main-sidebar -->

</aside>
<!-- END SIDEBAR -->

<!-- MAIN-CONTENT -->

<!-- Start::app-content -->
<div class="main-content app-content">
<div class="container-fluid">

