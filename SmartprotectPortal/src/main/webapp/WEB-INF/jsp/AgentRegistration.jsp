<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Local Agent Registration</title>
 <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap"
      rel="stylesheet"
    />
    <link href="assets/css/style.css" rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet" />
  </head>

  <body>
    <!-- Spinner Start -->
    <div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <!-- Topbar Start -->
    <div
      class="container-fluid bg-dark text-white-50 py-2 px-0 d-none d-lg-block">
      <div class="row gx-0 align-items-center">
        <div class="col-lg-7 px-5 text-start">
          <div class="h-100 d-inline-flex align-items-center me-4">
            <small class="fa fa-phone-alt me-2"></small>
            <small>+012 345 6789</small>
          </div>
          <div class="h-100 d-inline-flex align-items-center me-4">
            <small class="far fa-envelope-open me-2"></small>
            <small>smartprotectinfo@gmail.com</small>
          </div>
          <div class="h-100 d-inline-flex align-items-center me-4">
            <small class="far fa-clock me-2"></small>
            <small>Mon - Fri : 09 AM - 09 PM</small>
          </div>
        </div>
        <div class="col-lg-5 px-5 text-end">
          <div class="h-100 d-inline-flex align-items-center">
            <a class="text-white-50 ms-4" href=""
              ><i class="fab fa-facebook-f"></i
            ></a>
            <a class="text-white-50 ms-4" href=""
              ><i class="fab fa-twitter"></i
            ></a>
            <a class="text-white-50 ms-4" href=""
              ><i class="fab fa-linkedin-in"></i
            ></a>
            <a class="text-white-50 ms-4" href=""
              ><i class="fab fa-instagram"></i
            ></a>
          </div>
        </div>
      </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <nav
      class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5">
      <a href="pageIndex" class="navbar-brand d-flex align-items-center">
        <h1 class="m-0">
          <img
            class="img-fluid me-3"
            src="img/icon/icon-02-primary.png"
            alt=""
          />SMART PROTECT
        </h1>
      </a>    
      <a href="pageIndex" style="padding-left: 500px;"><u>Home</u></a>
    </nav>
    <!-- Navbar End -->

    <!-- Page Header Start -->    
      <div class="container py-5" style="text-align: center;">
        <h3 class="display-4 animated slideInDown mb-4">Agent Registration Form</h3>        
      </div>
    <!-- Page Header End -->
    <div class="container-xxl">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-12 wow fadeIn" data-wow-delay="0.1s">   
            <form:form action="saveAgent" method="post" modelAttribute="agent" enctype="multipart/form-data">
              <div class="row g-3">
                <div class="col-md-4">
                  <label>Name(As per your identification proof)</label>
                  <form:input type="text" class="form-control" path="agentName"/>
                  <form:errors path="agentName" cssClass="error"/><br>
                  <label>Date of Birth</label>
                  <form:input type="date" class="form-control" path="agentDob"/>
                  <form:errors path="agentDob" cssClass="error"/>
                  <br>
                  <label>Address line2</label>
                  <form:input type="text" class="form-control" path="agentAddr2"/>
                  <form:errors path="agentAddr2" cssClass="error"/>                  
                  <br>
                  <label>Upload Profile photo</label><br>
                   <input type="file" class="form-control" required="required" name="file" accept="image/*"/>
                  <form:errors path="agentPhotopath" cssClass="error"/>
                  <br>
                  <label>Location</label><br>
                  <form:select class="form-control" path="agentLoc">
                    <option value="">-Select-</option>
                    <c:forEach items="${locList}" var="l">
            			<option value="${l.locId}">${l.locName}</option>
        			</c:forEach>
                  </form:select>
                  <form:errors path="agentLoc" cssClass="error"/>                 
                  <br>                
                </div>
                <div class="col-md-4">
                  <label>Email Address</label>
                  <form:input type="email" class="form-control" path="agentEmail"/>
                  <form:errors path="agentEmail" cssClass="error"/><br>
                  <label>Gender</label><br>
                  <form:radiobutton path="agentGen" value="Male"/>&nbsp;&nbsp;Male&nbsp;&nbsp;<form:radiobutton value="Female" path="agentGen"/>&nbsp;&nbsp;Female&nbsp;&nbsp;<form:radiobutton value="Others" path="agentGen"/>&nbsp;&nbsp;Others
                  <form:errors path="agentGen" cssClass="error"/>
                  <br><br>
                  <label>City</label><br>
                  <form:input type="text" class="form-control" path="agentCity"/>
                  <form:errors path="agentCity" cssClass="error"/>
                  <br>
                  <label>Upload Identification proof</label><br>
                  <input type="file" class="form-control" required="required" name="file1" accept="application/pdf,image/*">                  
                  <form:errors path="agentProofpath" cssClass="error"/>
                  <br>
                  <label>Username</label><br>
                  <form:input type="text" class="form-control" path="agentUname"/>
                  <form:errors path="agentUname" cssClass="error"/>     
                  <br><br>
                  <button class="btn btn-primary py-3 px-5" type="submit">
                    Register
                  </button>
                </div>
                <div class="col-md-4">
                  <label>Mobile Number</label>
                  <form:input type="text" class="form-control" path="agentMob"/>
                  <form:errors path="agentMob" cssClass="error"/>
                  <br>
                  <label>Address</label>
                  <form:input type="text" class="form-control" path="agentAddr1"/>
                  <form:errors path="agentAddr1" cssClass="error"/>
                  <br>
                  <label>Postal Code</label><br>
                  <form:input type="text" class="form-control" path="agentPin"/> 
                  <form:errors path="agentPin" cssClass="error"/>                
                  <br>
                  <label>Employee Id</label><br>
                  <form:input type="text" class="form-control" path="agentEmpId"/>
                  <form:errors path="agentEmpId" cssClass="error"/> 
                  <br> 
                  <label>Password</label><br>
                  <form:input type="text" class="form-control" path="agentPasswd"/> 
                  <form:errors path="agentPasswd" cssClass="error"/>  
                </div>
              </div>
            </form:form>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer Start -->
    <div
      class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-6 col-md-6">
            <h1 class="text-white mb-4">
              <img
                class="img-fluid me-3"
                src="img/icon/icon-02-light.png"
                alt=""
              />SMART PROTECT
            </h1>
            <p>
              “There is only one boss. The customer. And he can fire everybody in the company from the chairman on down, simply by spending his money somewhere else.” 

            </p>
            <div class="d-flex pt-2">
              <a class="btn btn-square me-1" href=""
                ><i class="fab fa-twitter"></i
              ></a>
              <a class="btn btn-square me-1" href=""
                ><i class="fab fa-facebook-f"></i
              ></a>
              <a class="btn btn-square me-1" href=""
                ><i class="fab fa-youtube"></i
              ></a>
              <a class="btn btn-square me-0" href=""
                ><i class="fab fa-linkedin-in"></i
              ></a>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <h5 class="text-light mb-4">Address</h5>
            <p>
              <i class="fa fa-map-marker-alt me-3"></i>123 Street, New Delhi, India
            </p>
            <p><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
            <p><i class="fa fa-envelope me-3"></i>smartprotectinfo@gmail.com</p>
          </div>
          <div class="col-lg-3 col-md-6">
            <h5 class="text-light mb-4">Quick Links</h5>
            <a class="btn btn-link" href="">About Us</a>
            <a class="btn btn-link" href="">Contact Us</a>
            <a class="btn btn-link" href="">Our Services</a>
            <a class="btn btn-link" href="">Terms & Condition</a>
            <a class="btn btn-link" href="">Support</a>
          </div>         
        </div>
      </div>
      <div class="container-fluid copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
              &copy; <a href="#">www.smartprotect.com</a>, All Right Reserved.
            </div>           
          </div>
        </div>
      </div>
    </div>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>