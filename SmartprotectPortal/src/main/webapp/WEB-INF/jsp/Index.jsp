<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
	.error {
    color: red;
}
</style>
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
        data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav mx-auto bg-light rounded pe-4 py-3 py-lg-0">
          <a href="pageIndex" class="nav-item nav-link active">Home</a>
          <a href="pageAbout" class="nav-item nav-link">About Us</a>
          <a href="pageService" class="nav-item nav-link">Our Services</a>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Login</a>
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

    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="w-100" src="img/carousel-1.jpg" alt="Image" />
            <div class="carousel-caption">
              <div class="container">
                <div class="row">
                  <div class="col-12 col-lg-6">
                    <h1 class="display-3 text-dark mb-4 animated slideInDown">
                      Insurance Creates Wealth For Everyone
                    </h1>
                    <p class="fs-5 text-body mb-5">
                      Insurance - an ingenious modern game of chance in which the player is permitted to enjoy the comfortable conviction that he is beating the man who keeps the table.
                    </p>
                    <a href="" class="btn btn-primary py-3 px-5"
                      >More Details</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="w-100" src="img/carousel-2.jpg" alt="Image" />
            <div class="carousel-caption">
              <div class="container">
                <div class="row">
                  <div class="col-12 col-lg-6">
                    <h1 class="display-3 text-dark mb-4 animated slideInDown">
                      The Best Insurance Begins Here
                    </h1>
                    <p class="fs-5 text-body mb-5">
                      If there is anyone dependent on your income - parents, children, relatives - you need life insurance.
                    </p>
                    <a href="" class="btn btn-primary py-3 px-5"
                      >More Details</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- About Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div
              class="position-relative overflow-hidden rounded ps-5 pt-5 h-100"
              style="min-height: 400px"
            >
              <img
                class="position-absolute w-100 h-100"
                src="img/about.jpg"
                alt=""
                style="object-fit: cover"
              />
              <div
                class="position-absolute top-0 start-0 bg-white rounded pe-3 pb-3"
                style="width: 200px; height: 200px"
              >
                <div
                  class="d-flex flex-column justify-content-center text-center bg-primary rounded h-100 p-3"
                >
                  <h1 class="text-white mb-0">25</h1>
                  <h2 class="text-white">Years</h2>
                  <h5 class="text-white mb-0">Experience</h5>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="h-100">
              <h1 class="display-6 mb-5">
                We're Here To Assist You With Exploring Protection
              </h1>
              <p class="fs-5 text-primary mb-4">
                A trans-nationally competitive financial conglomerate of significance to societies and Pride of India.
              </p>
              <div class="row g-4 mb-4">
                <div class="col-sm-6">
                  <div class="d-flex align-items-center">
                    <img
                      class="flex-shrink-0 me-3"
                      src="img/icon/icon-04-primary.png"
                      alt=""
                    />
                    <h5 class="mb-0">Flexible Insurance Plans</h5>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="d-flex align-items-center">
                    <img
                      class="flex-shrink-0 me-3"
                      src="img/icon/icon-03-primary.png"
                      alt=""
                    />
                    <h5 class="mb-0">Money Back Guarantee</h5>
                  </div>
                </div>
              </div>
              <p class="mb-4">
                Our mission is to ensure and enhance the quality of life of people through financial security by providing products and services of aspired attributes with competitive returns, and by rendering resources for economic development.
              </p>
              <div class="border-top mt-4 pt-4">
                <div class="d-flex align-items-center">
                  <img
                    class="flex-shrink-0 rounded-circle me-3"
                    src="img/profile.jpg"
                    alt=""
                  />
                  <h5 class="mb-0">Call Us: +012 345 6789</h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- Facts Start -->
    <div class="container-fluid overflow-hidden my-5 px-lg-0">
      <div class="container facts px-lg-0">
        <div class="row g-0 mx-lg-0">
          <div class="col-lg-6 facts-text wow fadeIn" data-wow-delay="0.1s">
            <div class="h-100 px-4 ps-lg-0">
              <h1 class="text-white mb-4">For Individuals And Organisations</h1>
              <p class="text-light mb-5">
                For more details, please contact our branch or divisional office. Any Agent will be glad to help you choose the life insurance plan to meet your needs and render policy servicing.
              </p>           
            </div>
          </div>
          <div class="col-lg-6 facts-counter wow fadeIn" data-wow-delay="0.5s">
            <div class="h-100 px-4 pe-lg-0">
              <div class="row g-5">
                <div class="col-sm-6">
                  <h1 class="display-5" data-toggle="counter-up">1234</h1>
                  <p class="fs-5 text-primary">Happy Clients</p>
                </div>
                <div class="col-sm-6">
                  <h1 class="display-5" data-toggle="counter-up">1234</h1>
                  <p class="fs-5 text-primary">Projects Succeed</p>
                </div>
                <div class="col-sm-6">
                  <h1 class="display-5" data-toggle="counter-up">1234</h1>
                  <p class="fs-5 text-primary">Awards Achieved</p>
                </div>
                <div class="col-sm-6">
                  <h1 class="display-5" data-toggle="counter-up">1234</h1>
                  <p class="fs-5 text-primary">Team Members</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Facts End -->

    <!-- Features Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <h1 class="display-6 mb-5">Few Reasons Why People Choosing Us!</h1>
           
            <div class="row g-3">
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                <div class="bg-light rounded h-100 p-3">
                  <div
                    class="bg-white d-flex flex-column justify-content-center text-center rounded h-100 py-4 px-3"
                  >
                    <img
                      class="align-self-center mb-3"
                      src="img/icon/icon-06-primary.png"
                      alt=""
                    />
                    <h5 class="mb-0">Easy Process</h5>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                <div class="bg-light rounded h-100 p-3">
                  <div
                    class="bg-white d-flex flex-column justify-content-center text-center rounded py-4 px-3"
                  >
                    <img
                      class="align-self-center mb-3"
                      src="img/icon/icon-03-primary.png"
                      alt=""
                    />
                    <h5 class="mb-0">Fast Delivery</h5>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                <div class="bg-light rounded h-100 p-3">
                  <div
                    class="bg-white d-flex flex-column justify-content-center text-center rounded py-4 px-3"
                  >
                    <img
                      class="align-self-center mb-3"
                      src="img/icon/icon-04-primary.png"
                      alt=""
                    />
                    <h5 class="mb-0">Policy Controlling</h5>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.4s">
                <div class="bg-light rounded h-100 p-3">
                  <div
                    class="bg-white d-flex flex-column justify-content-center text-center rounded h-100 py-4 px-3"
                  >
                    <img
                      class="align-self-center mb-3"
                      src="img/icon/icon-07-primary.png"
                      alt=""
                    />
                    <h5 class="mb-0">Money Saving</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div
              class="position-relative rounded overflow-hidden h-100"
              style="min-height: 400px"
            >
              <img
                class="position-absolute w-100 h-100"
                src="img/feature.jpg"
                alt=""
                style="object-fit: cover"
              />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Features End -->

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
                  class="service-icon flex-shrink-0 bg-primary rounded-end me-4">
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

    <!-- Appointment Start -->
    <div
      class="container-fluid appointment my-5 py-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeIn" data-wow-delay="0.3s">
            <h1 class="display-6 text-white mb-5">
              We're Award Winning Insurance Company
            </h1>    
            <br>
            <br>
            <br><br><br><br>       
            <div class="bg-white rounded p-3">
              <div class="d-flex align-items-center bg-primary rounded p-3">
                <img
                  class="flex-shrink-0 rounded-circle me-3"
                  src="img/profile.jpg"
                  alt=""
                />
                <h5 class="text-white mb-0">Call Us: +012 345 6789</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
            <div class="bg-white rounded p-5">
              <form:form action="bookAppointment" method="post" modelAttribute="appointment">
              <form:input style="display:none;" type="text" class="form-control" id="status" path="status" name="status" value="1"/>
                <div class="row g-3">
                  <div class="col-sm-6">
                    <div class="form-floating">
                      <form:input type="text" class="form-control" id="name" path="name" name="name" placeholder="Your Name"/>
                      <label for="name">Your Name</label>
                      <form:errors path="name" cssClass="error"/>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-floating">
                      <form:input type="email" class="form-control" id="email" path="email" name="email" placeholder="Your Email"/>
                      <label for="email">Your Email</label>
                      <form:errors path="email" cssClass="error"/>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-floating">
                      <form:input type="text" class="form-control" id="mobile" path="mobile" name="mobile" placeholder="Mobile No"/>
                      <label for="mobile">Your Mobile</label>
                      <form:errors path="mobile" cssClass="error" />
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-floating">
                      <form:input type="text" class="form-control" id="type" path="type" name="type" placeholder="Service Type"/>
                      <label for="type">Service Type</label>
                       <form:errors path="type" cssClass="error" />
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-floating">
                      <form:textarea class="form-control" placeholder="Leave a message here" path="message" id="message" name="message" style="height: 80px"></form:textarea>
                      <label for="message">Message</label>
                       <form:errors path="message" cssClass="error" />
                    </div>
                  </div>
                  <div class="col-12">
                    <button class="btn btn-primary py-3 px-5" type="submit">
                      Get Appointment
                    </button>
                  </div>
                </div>
             </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Appointment End -->

    <!-- Team Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center mx-auto" style="max-width: 500px">
          <h1 class="display-6 mb-5">Meet Our Professional Team Members</h1>
        </div>
        <div class="row g-4">
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="team-item rounded">
              <img class="img-fluid" src="img/team-1.jpg" alt="" />
              <div class="text-center p-4">
                <h5>Full Name</h5>
                <span>Designation</span>
              </div>
              <div class="team-text text-center bg-white p-4">
                <h5>Full Name</h5>
                <p>Designation</p>
                <div class="d-flex justify-content-center">
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-youtube"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="team-item rounded">
              <img class="img-fluid" src="img/team-2.jpg" alt="" />
              <div class="text-center p-4">
                <h5>Full Name</h5>
                <span>Designation</span>
              </div>
              <div class="team-text text-center bg-white p-4">
                <h5>Full Name</h5>
                <p>Designation</p>
                <div class="d-flex justify-content-center">
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-youtube"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="team-item rounded">
              <img class="img-fluid" src="img/team-3.jpg" alt="" />
              <div class="text-center p-4">
                <h5>Full Name</h5>
                <span>Designation</span>
              </div>
              <div class="team-text text-center bg-white p-4">
                <h5>Full Name</h5>
                <p>Designation</p>
                <div class="d-flex justify-content-center">
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-youtube"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
            <div class="team-item rounded">
              <img class="img-fluid" src="img/team-4.jpg" alt="" />
              <div class="text-center p-4">
                <h5>Full Name</h5>
                <span>Designation</span>
              </div>
              <div class="team-text text-center bg-white p-4">
                <h5>Full Name</h5>
                <p>Designation</p>
                <div class="d-flex justify-content-center">
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-youtube"></i
                  ></a>
                  <a class="btn btn-square btn-light m-1" href=""
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Team End -->

    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center mx-auto" style="max-width: 500px">
          <h1 class="display-6 mb-5">What They Say About Our Insurance</h1>
        </div>
        <div class="row g-5">
          <div class="col-lg-3 d-none d-lg-block">
            <div class="testimonial-left h-100">
              <img
                class="img-fluid animated pulse infinite"
                src="img/testimonial-1.jpg"
                alt=""
              />
              <img
                class="img-fluid animated pulse infinite"
                src="img/testimonial-2.jpg"
                alt=""
              />
              <img
                class="img-fluid animated pulse infinite"
                src="img/testimonial-3.jpg"
                alt=""
              />
            </div>
          </div>
          <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
            <div class="owl-carousel testimonial-carousel">
              <div class="testimonial-item text-center">
                <img
                  class="img-fluid rounded mx-auto mb-4"
                  src="img/testimonial-1.jpg"
                  alt=""
                />
                <p class="fs-5">
                  “I had an amazing experience with this company! The customer service was top-notch, and the product exceeded my expectations. I highly recommend them to anyone looking for quality products and excellent service.”
                </p>
                <h5>Lisa M</h5>
                <span>Student</span>
              </div>
              <div class="testimonial-item text-center">
                <img
                  class="img-fluid rounded mx-auto mb-4"
                  src="img/testimonial-2.jpg"
                  alt=""
                />
                <p class="fs-5">
                  “After trying several other companies, I finally found the perfect fit with this one. Their attention to detail and commitment to customer satisfaction is unparalleled. I will definitely be using their services again in the future.”
                </p>
                <h5>David John</h5>
                <span>Engineer</span>
              </div>
              <div class="testimonial-item text-center">
                <img
                  class="img-fluid rounded mx-auto mb-4"
                  src="img/testimonial-3.jpg"
                  alt=""
                />
                <p class="fs-5">
                  “I’ve been a loyal customer for years, and I continue to be impressed with this company. Their team is dedicated to providing the best service possible, and it shows in every interaction. I highly recommend them to anyone in need of their services.”
                </p>
                <h5>Mark T</h5>
                <span>Business</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 d-none d-lg-block">
            <div class="testimonial-right h-100">
              <img
                class="img-fluid animated pulse infinite"
                src="img/testimonial-1.jpg"
                alt=""
              />
              <img
                class="img-fluid animated pulse infinite"
                src="img/testimonial-2.jpg"
                alt=""
              />
              <img
                class="img-fluid animated pulse infinite"
                src="img/testimonial-3.jpg"
                alt=""
              />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Testimonial End -->

    <!-- Footer Start -->
    <div
      class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn"
      data-wow-delay="0.1s">
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-6 col-md-6">
            <h1 class="text-white mb-4">
              <img
                class="img-fluid me-4"
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
      ><i class="bi bi-arrow-up"></i></a>

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