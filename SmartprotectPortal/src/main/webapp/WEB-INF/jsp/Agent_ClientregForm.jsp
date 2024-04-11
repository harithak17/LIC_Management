<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard - Agent</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
   <link href="css/style.css" rel="stylesheet" />
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="pageIndex" class="logo d-flex align-items-center">
        <img src="img/icon/icon-02-primary.png" alt="">
        <span class="d-none d-lg-block">Smart Protect</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
        <li class="nav-item dropdown pe-3">
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="${sessionScope.agentPic}" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${sessionScope.agentName}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${sessionScope.role}</h6>
              <input type="text" name="agentId" value="${sessionScope.agentId}"/>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>          
            <li>
              <a class="dropdown-item d-flex align-items-center" href="logout">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="pageAgentHome">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->   
      <li class="nav-item">
          <a class="nav-link collapsed" href="pagePolicyList">
          <i class="bi bi-gem"></i>
          <span>Policies List</span>
        </a>    
      </li>
      <!-- End Charts Nav -->  
      <li class="nav-item">
        <a class="nav-link" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Policy Holders</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="pageClientRegistration" class="active">
              <i class="bi bi-circle"></i><span>Add policy holders</span>
            </a>
          </li> 
           <li>
            <a href="pagePolicyJoining">
              <i class="bi bi-circle"></i><span>Policy Joining Form</span>
            </a>
          </li> 
          <li>
            <a href="pageClientReports">
              <i class="bi bi-circle"></i><span>View All</span>
            </a>
          </li>       
        </ul>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="pageAgentProfile">
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li><!-- End Profile Page Nav -->      

      <li class="nav-item">
        <a class="nav-link collapsed" href="pageAgentInbox">
          <i class="bi bi-envelope"></i>
          <span>Inbox</span>
        </a>
      </li><!-- End Contact Page Nav -->   
     
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Policy Holders</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="pageAgentHome">Policy Holder</a></li>
          <li class="breadcrumb-item active">Registration</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">   

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">               
                <div class="card-body">
                  <h5 class="card-title">Policy Holders Registration</h5>  
                  <form:form action="saveClient" method="post" modelAttribute="client" enctype="multipart/form-data">      
                   <table class="table table-borderless">                   
                    <tbody>                     
                        <tr>
                           <td><label>Name(As per in Identification proof)</label></td>
                           <td><form:input type="text" path="clientName"/></td>
                           <td><form:errors path="clientName" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>DOB</label></td>
                           <td><form:input type="date" path="clientDob"/></td>
                           <td><form:errors path="clientDob" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Gender</label></td>
                           <td><form:radiobutton path="clientGen" value="Male"/>&nbsp;&nbsp;Male&nbsp;&nbsp;<form:radiobutton value="Female" path="clientGen"/>&nbsp;&nbsp;Female&nbsp;&nbsp;<form:radiobutton value="Others" path="clientGen"/>&nbsp;&nbsp;Others</td>
                           <td><form:errors path="clientGen" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Address line 1</label></td>
                           <td><form:textarea  path="clientAddr1"/></td>
                           <td><form:errors path="clientAddr1" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Address line 2</label></td>
                           <td><form:textarea  path="clientAddr2"/></td>
                           <td><form:errors path="clientAddr2" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>City</label></td>
                           <td><form:input type="text" path="clientCity"/></td>
                           <td><form:errors path="clientCity" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Pin code</label></td>
                           <td><form:input type="text" path="clientPin"/></td>
                           <td><form:errors path="clientPin" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Email</label></td>
                           <td><form:input type="email" path="clientEmail"/></td>
                           <td><form:errors path="clientEmail" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Mob</label></td>
                           <td><form:input type="text" path="clientMob"/></td>
                           <td><form:errors path="clientMob" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Photo</label></td>
                           <td><input type="file" required="required" name="file1" accept="image/*"/></td>
                           <td><form:errors path="ClientPhotopath" cssClass="error"/></td>
                        </tr> 
                        <tr>
                           <td><label>Identification proof</label></td>
                           <td><input type="file" required="required" name="file2" accept="application/pdf"/></td>
                           <td><form:errors path="ClientProofpath" cssClass="error"/></td>
                        </tr>                       
                        <tr>
                          <form:input type="text" class="form-control" value="1" id="status" path="status" style="display:none;"/>
                        </tr>
                         <tr>
                           <td></td>
                           <td> <button class="btn btn-primary py-2 px-2" type="submit">Register</button></td>
                           <td></td>
                        </tr> 
                    </tbody>
                  </table>
                  </form:form>
                </div>
              </div>
            </div><!-- End Recent Sales -->          
          </div>
        </div><!-- End Left side columns -->  
      </div>
    </section>
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Admin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      <a href="pageIndex">www.smartprotect.com</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>