<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart Protect</title>
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
<div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <!-- Topbar Start -->
    <div
      class="container-fluid bg-dark text-white-50 py-2 px-0 d-none d-lg-block"
    >
      <div class="row gx-0 align-items-center">
        <div class="col-lg-7 px-5 text-start">
          <div class="h-100 d-inline-flex align-items-center me-4">
            <small class="fa fa-phone-alt me-2"></small>
            <small>1800114000</small>
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
      class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5"
    >
      <a href="pageIndex" class="navbar-brand d-flex align-items-center">
        <h1 class="m-0">
          <img
            class="img-fluid me-3"
            src="img/icon/icon-02-primary.png"
            alt=""
          />SMART PROTECT
        </h1>
      </a>
      <button
        type="button"
        class="navbar-toggler"
        data-bs-toggle="collapse"
        data-bs-target="#navbarCollapse"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav mx-auto bg-light rounded pe-4 py-3 py-lg-0">
          <a href="pageIndex" class="nav-item nav-link">Home</a>
          <a href="pageAbout" class="nav-item nav-link">About Us</a>
          <a href="pageService" class="nav-item nav-link active"
            >Our Services</a
          >
          <div class="nav-item dropdown">
            <a
              href="#"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              >Login</a
            >
            <div class="dropdown-menu bg-light border-0 m-0">
              <a href="pageLogin?user=Admin" class="dropdown-item">Admin</a>
              <a href="pageLogin?user=Agent" class="dropdown-item">Agent Portal</a>
              <a href="pageLogin?user=Client" class="dropdown-item">Customer Portal</a>
            </div>
          </div>
          <a href="pageContactus" class="nav-item nav-link">Contact Us</a>
        </div>
      </div>
      <a href="clientRegistration" class="btn btn-primary px-3 d-none d-lg-block">Sign Up</a>
    </nav>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div
      class="container-fluid page-header py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <h1 class="display-4 animated slideInDown mb-4">Services</h1>
        <nav aria-label="breadcrumb animated slideInDown">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Pages</a></li>
            <li class="breadcrumb-item active" aria-current="page">Services</li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- Page Header End -->

    <!-- Service Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center mx-auto" style="max-width: 500px">
          <h1 class="display-6 mb-5">
            We Provide professional Insurance Services
          </h1>
        </div>
        <div class="row g-4 justify-content-center">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item rounded h-100 p-5">
              <div class="d-flex align-items-center ms-n5 mb-4">
                <div
                  class="service-icon flex-shrink-0 bg-primary rounded-end me-4"
                >
                  <img
                    class="img-fluid"
                    src="img/icon/icon-10-light.png"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Life Insurance</h4>
              </div>
              <p class="mb-4">
                Life insurance is a contract between an insurance policy holder and an insurer or assurer, where the insurer promises to pay a designated beneficiary a sum of money upon the death of an insured person.

              </p>
              <a class="btn btn-light px-3" href="">Read More</a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="service-item rounded h-100 p-5">
              <div class="d-flex align-items-center ms-n5 mb-4">
                <div
                  class="service-icon flex-shrink-0 bg-primary rounded-end me-4"
                >
                  <img
                    class="img-fluid"
                    src="img/icon/icon-01-light.png"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Health Insurance</h4>
              </div>
              <p class="mb-4">
                Health insurance is a type of insurance that covers medical expenses that arise due to an illness. These expenses could be related to hospitalisation costs, cost of medicines or doctor consultation fees.

              </p>
              <a class="btn btn-light px-3" href="">Read More</a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="service-item rounded h-100 p-5">
              <div class="d-flex align-items-center ms-n5 mb-4">
                <div
                  class="service-icon flex-shrink-0 bg-primary rounded-end me-4"
                >
                  <img
                    class="img-fluid"
                    src="img/icon/icon-05-light.png"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Home Insurance</h4>
              </div>
              <p class="mb-4">
                Homeowners insurance is a form of property insurance that covers losses and damages to an individual's house and assets in the home. The policy usually covers interior damage, exterior damage, loss or damage of personal assets, and injury that arises while on the property.

              </p>
              <a class="btn btn-light px-3" href="">Read More</a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item rounded h-100 p-5">
              <div class="d-flex align-items-center ms-n5 mb-4">
                <div
                  class="service-icon flex-shrink-0 bg-primary rounded-end me-4"
                >
                  <img
                    class="img-fluid"
                    src="img/icon/icon-08-light.png"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Vehicle Insurance</h4>
              </div>
              <p class="mb-4">
                More popularly known as motor insurance, this type of insurance provides cover for loss or damage to any vehicle like car, two-wheeler or commercial vehicle, etc. Description: This insurance helps mitigate monetary harms due to accidents causing damage to the vehicles.

              </p>
              <a class="btn btn-light px-3" href="">Read More</a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="service-item rounded h-100 p-5">
              <div class="d-flex align-items-center ms-n5 mb-4">
                <div
                  class="service-icon flex-shrink-0 bg-primary rounded-end me-4"
                >
                  <img
                    class="img-fluid"
                    src="img/icon/icon-07-light.png"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Business Insurance</h4>
              </div>
              <p class="mb-4">
                Business insurance covers losses related to unexpected events like lawsuits, accidents, or natural disasters, among others. Different types of commercial insurance products include general liability insurance, professional liability, property insurance, and home-based business insurance.

              </p>
              <a class="btn btn-light px-3" href="">Read More</a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="service-item rounded h-100 p-5">
              <div class="d-flex align-items-center ms-n5 mb-4">
                <div
                  class="service-icon flex-shrink-0 bg-primary rounded-end me-4"
                >
                  <img
                    class="img-fluid"
                    src="img/icon/icon-06-light.png"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Property Insurance</h4>
              </div>
              <p class="mb-4">
                Property insurance provides financial reimbursement to the owner or renter of a structure and its contents in case there is damage or theft—and to a person other than the owner or renter if that person is injured on the property.

              </p>
              <a class="btn btn-light px-3" href="">Read More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Service End -->

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