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
        <a class="nav-link" href="pageAgentHome">
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
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Policy Holders</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
          <li>
            <a href="pageClientRegistration">
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
          <li class="breadcrumb-item active">Edit</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section dashboard">
       <div class="col-xl-12">
          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">
                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
                </li>
                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
                </li>         
               
              </ul>
              <div class="tab-content pt-2">
                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  <h5 class="card-title">Profile Details</h5>                  
                   <table class="table table-borderless">
                              <tr>
                                  <td><b>Client Name:</b></td>
                                  <td><label>${client.clientName}</label></td>
                                  <td></td>
                              </tr>                              
                              <tr>
                                <td><b>DOB:</b></td>
                                <td><label>${client.clientDob}</label></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td><b>Gender:</b></td>
                                <td><label>${client.clientGen}</label></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td><b>Address</b></td>
                                <td><label>${client.clientAddr1}</label><br>
                                <label>${client.clientAddr2}<br>${client.clientCity}<br>${client.clientPin}</label></td>
                              </tr>                             
                              <tr>
                                <td><b>Mail Id:</b></td>
                                <td><label>${client.clientEmail}</label></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td><b>Mob.No:</b></td>
                                <td><label>${client.clientMob}</label></td>
                                <td></td>
                              </tr>
                               <tr>
                                <td><b>Registered Agent:</b></td>
                                <td><label>${client.client_regAgent.agentName}</label></td>
                                <td></td>
                              </tr>  
                              <tr>
                                <td><b>Policies:</b></td>
                                <td>
                                <c:forEach items="${policyList}" var="item">
   									 <option>${item.clientPolicy.policyName}</option>
								</c:forEach>
                                </td>
                                <td></td>
                              </tr>   
                             </table>                
                </div>
                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">
                  <!-- Profile Edit Form -->
                  <form:form modelAttribute="client" method="post" action="updateClientDetails">
                    <div class="row mb-3">
                      <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                      <div class="col-md-8 col-lg-9">
                        <img src="${client.clientPhotopath}" width="200px" height="200px" alt="Profile">
                        <div class="pt-2">
                          <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
                          <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
                        </div>
                      </div>
                    </div>
                    <form:hidden path="clientId" value="${client.clientId}"></form:hidden>
                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Client Name</label>
                      <div class="col-md-8 col-lg-9">
                        <form:input type="text" class="form-control" path="clientName" value="${client.clientName}"></form:input>
                        <form:errors path="clientName" cssClass="error"/>                        
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Gender</label>
                      <div class="col-md-8 col-lg-9">
                        <form:radiobutton path="clientGen" value="Male"/>&nbsp;&nbsp;Male&nbsp;&nbsp;<form:radiobutton value="Female" path="clientGen"/>&nbsp;&nbsp;Female&nbsp;&nbsp;<form:radiobutton value="Others" path="clientGen"/>&nbsp;&nbsp;Others
                        <form:errors path="clientGen" cssClass="error"/>                        
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label for="about" class="col-md-4 col-lg-3 col-form-label">Address line1</label>
                      <div class="col-md-8 col-lg-9">
                        <form:textarea class="form-control" path="clientAddr1" style="height: 100px" value="${client.clientAddr1}"></form:textarea>
                        <form:errors path="clientAddr1" cssClass="error"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label for="about" class="col-md-4 col-lg-3 col-form-label">Address line2</label>
                      <div class="col-md-8 col-lg-9">
                        <form:textarea class="form-control" path="clientAddr2" style="height: 100px" value="${client.clientAddr2}"></form:textarea>
                        <form:errors path="clientAddr2" cssClass="error"/>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="company" class="col-md-4 col-lg-3 col-form-label">City</label>
                      <div class="col-md-8 col-lg-9">
                        <form:input type="text" class="form-control" path="clientCity" value="${client.clientCity}"></form:input>
                        <form:errors path="clientCity" cssClass="error"/>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Job" class="col-md-4 col-lg-3 col-form-label">Pin</label>
                      <div class="col-md-8 col-lg-9">
                        <form:input type="text" class="form-control" path="clientPin" value="${client.clientPin}"></form:input>
                         <form:errors path="clientPin" cssClass="error"/>
                      </div>
                    </div>                

                    <div class="row mb-3">
                      <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                      <div class="col-md-8 col-lg-9">
                        <form:input type="text" path="clientMob" class="form-control" value="${client.clientMob}"></form:input>
                       <form:errors path="clientMob" cssClass="error"/>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                      <div class="col-md-8 col-lg-9">
                        <form:input  type="email" class="form-control" path="clientEmail" value="${client.clientEmail}"></form:input>
                        <form:errors path="clientEmail" cssClass="error"/>
                      </div>
                    </div>       

                   <div class="text-center">
                      <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                    </form:form>
                  <!-- End Profile Edit Form -->
                </div>              
              </div><!-- End Bordered Tabs -->
            </div>
          </div>
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