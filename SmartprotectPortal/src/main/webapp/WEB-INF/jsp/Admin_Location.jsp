<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
        <%@ taglib uri="jakarta.tags.core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Locations</title>
<meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link href="css/style.css" rel="stylesheet" />

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
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
	<script type="text/javascript">
		$(document).ready(function () {
    		$('#exampleModal').on('show.bs.modal', function (event) {
        console.log($(event.relatedTarget).attr('data-id'));
        const modal = document.getElementById("exampleModal");
        document.getElementById("modalForm").action="delLocById/"+$(event.relatedTarget).attr('data-id');
    	});
	});
</script>
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
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">Admin</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Administrator</h6>
              <span>Website maintenance</span>
            </li>                           
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="pageIndex">
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
        <a class="nav-link collapsed" href="pageAdminHome">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">        
        <a class="nav-link" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Components</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="Category">
              <i class="bi bi-circle"></i><span>Category</span>
            </a>
          </li>
          <li>
            <a href="Location" class="active">
              <i class="bi bi-circle"></i><span>Location</span>
            </a>
          </li>    
         </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Local Agents</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="pageAdminLANew">
              <i class="bi bi-circle"></i><span>New Requests</span>
            </a>
          </li>
          <li>
            <a href="pageAdminLAEdit">
              <i class="bi bi-circle"></i><span>Edit/Delete</span>
            </a>
          </li>
          <li>
            <a href="pageAdminLAReport">
              <i class="bi bi-circle"></i><span>List(Sorted by perfomance)</span>
            </a>
          </li>         
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Policy Holders</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="pageAdminClientNew">
              <i class="bi bi-circle"></i><span>Approve New Users</span>
            </a>
          </li>        
         
        </ul>
      </li><!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-gem"></i><span>Policies</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="pageAdminPolicyNew">
              <i class="bi bi-circle"></i><span>Add Policy</span>
            </a>
          </li>
          <li>
            <a href="pagePolicyEdit">
              <i class="bi bi-circle"></i><span>Update Policy</span>
            </a>
          </li>
          <li>
            <a href="pagePolicyReport">
              <i class="bi bi-circle"></i><span>View List</span>
            </a>
          </li>
        </ul>
      </li><!-- End Charts Nav -->     

      <li class="nav-item">
        <a class="nav-link collapsed" href="pageAdminInbox">
          <i class="bi bi-envelope"></i>
          <span>Inbox</span>
        </a>
      </li><!-- End Contact Page Nav -->   

 
     
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Location</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Components</a></li>
          <li class="breadcrumb-item active">Location</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">       
            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">
              <div class="card info-card customers-card">
                <div class="card-body">
                  <h5 class="card-title">Add New Location</h5>
                  <div class="d-flex align-items-center">
                  <form:form action="${action}" method="post" modelAttribute="location">
                    <table class="table table-borderless">
                    <form:input path="locId" type="text" style="display:none"/>
                        <tr>
                            <td>Location Name</td>
                            <td><form:input type="text" path="locName"/></td>                           
                            <td><form:errors path="locName" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Office Address</td>
                            <td><form:textarea path="locAdd"></form:textarea>  </td>                      
                            <td><form:errors path="locAdd" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Contact No</td>
                            <td><form:input type="text" path="locMob"/></td>                           
                            <td><form:errors path="locMob" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button class="btn btn-primary btn-sm" type="submit">
                                    Save
                                  </button></td>
                            <td></td>
                        </tr>
                    </table>
                    </form:form>
                  </div>
                </div>
              </div>
            </div><!-- End Customers Card -->         

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">               
                <div class="card-body">
                  <h5 class="card-title">Location List</h5>        
                   <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">Code</th>
                        <th scope="col">Location</th> 
                        <th scope="col">Address</th> 
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="l" items="${locList}">
                      <tr>
                        <th scope="row"><a href="#">${l.customCode}</a></th>
                        <td>${l.locName}</td>
                        <td>${l.locAdd} Ph.No:${l.locMob}</td>
                        <td><a class="text-primary" href="/Locations${l.locId}">Edit</a></td>
                        <td><a class="text-primary" data-id="${l.locId}" data-toggle="modal" data-target="#exampleModal" href="#exampleModal">Delete</a></td>
                      </tr>   
                      </c:forEach>                   
                    </tbody>
                  </table>
                </div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
    		<div class="modal-content">  
    		 <form:form action="" id="modalForm" method="post">   
      			<div class="modal-body">Are you sure you want to delete?</div>
      			<div class="modal-footer">
      			<button class="btn btn-primary btn-sm" type="submit"> Delete </button>
                <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Cancel</button>
      			</div>
      		 </form:form>	
    		</div>
  		</div>
	</div>
              </div>
            </div><!-- End Recent Sales -->

            

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">
          <!-- Recent Activity -->
          <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>
                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">Recent Activity <span>| Today</span></h5>

              <div class="activity">

                <div class="activity-item d-flex">
                  <div class="activite-label">32 min</div>
                  <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                  <div class="activity-content">
                    Quia quae rerum <a href="#" class="fw-bold text-dark">explicabo officiis</a> beatae
                  </div>
                </div><!-- End activity item-->

                <div class="activity-item d-flex">
                  <div class="activite-label">56 min</div>
                  <i class='bi bi-circle-fill activity-badge text-danger align-self-start'></i>
                  <div class="activity-content">
                    Voluptatem blanditiis blanditiis eveniet
                  </div>
                </div><!-- End activity item-->

                <div class="activity-item d-flex">
                  <div class="activite-label">2 hrs</div>
                  <i class='bi bi-circle-fill activity-badge text-primary align-self-start'></i>
                  <div class="activity-content">
                    Voluptates corrupti molestias voluptatem
                  </div>
                </div><!-- End activity item-->

                <div class="activity-item d-flex">
                  <div class="activite-label">1 day</div>
                  <i class='bi bi-circle-fill activity-badge text-info align-self-start'></i>
                  <div class="activity-content">
                    Tempore autem saepe <a href="#" class="fw-bold text-dark">occaecati voluptatem</a> tempore
                  </div>
                </div><!-- End activity item-->
                <div class="activity-item d-flex">
                  <div class="activite-label">2 days</div>
                  <i class='bi bi-circle-fill activity-badge text-warning align-self-start'></i>
                  <div class="activity-content">
                    Est sit eum reiciendis exercitationem
                  </div>
                </div><!-- End activity item-->
                <div class="activity-item d-flex">
                  <div class="activite-label">4 weeks</div>
                  <i class='bi bi-circle-fill activity-badge text-muted align-self-start'></i>
                  <div class="activity-content">
                    Dicta dolorem harum nulla eius. Ut quidem quidem sit quas
                  </div>
                </div><!-- End activity item-->
              </div>
            </div>
          </div><!-- End Recent Activity -->          
        </div><!-- End Right side columns -->
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