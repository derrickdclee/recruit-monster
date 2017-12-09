<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>User Profile</title>
  <!-- Bootstrap core CSS-->
  
  <spring:url value="/resources/vendor" var="vendor" />
  <spring:url value="/resources/css" var="css" />
  <spring:url value="/resources/js" var ="js" />
  <link href="${vendor}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${vendor}/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="${vendor}/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${css}/sb-admin.css" rel="stylesheet">  
</head>


<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="index.html">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="charts.html">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Charts</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="tables.html">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Tables</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Components</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="navbar.html">Navbar</a>
            </li>
            <li>
              <a href="cards.html">Cards</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Example Pages</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="login.html">Login Page</a>
            </li>
            <li>
              <a href="register.html">Registration Page</a>
            </li>
            <li>
              <a href="forgot-password.html">Forgot Password Page</a>
            </li>
            <li>
              <a href="blank.html">User Profile Page</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-sitemap"></i>
            <span class="nav-link-text">Menu Levels</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseMulti">
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a class="nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti2">Third Level</a>
              <ul class="sidenav-third-level collapse" id="collapseMulti2">
                <li>
                  <a href="#">Third Level Item</a>
                </li>
                <li>
                  <a href="#">Third Level Item</a>
                </li>
                <li>
                  <a href="#">Third Level Item</a>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="#">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">Link</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Blank Page</li>
      </ol>
      <div class="row">
        <div class="col-12">
          <h1>User Profile</h1>
          
          <!-- Start Profile -->
          				
						<div class="row">
							<div class="col-12"> <!-- "col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6" -->
								<div class="profile card">
									<div class="col-sm-12">
										<div class="col-xs-12 col-sm-8">
											<h2>Nicole Pearson</h2>
											<p>
												<strong>User Name: </strong> asdf25
											</p>
											<p>
												<strong>Email: </strong> email_tst@duke.edu
											</p>
											<p>
												<strong>Current Company: </strong> Intel Corporation
											</p>
										</div>
									</div>
									<div class="form-inline text-center">
										<div class="col-xs-12 col-sm-4 emphasis">
											<h2>
												<strong> 20,7K </strong>
											</h2>
											<p>
												<small>Followers</small>
											</p>
										</div>
										<div class="col-xs-12 col-sm-4 emphasis">
											<h2>
												<strong>245</strong>
											</h2>
											<p>
												<small>Following</small>
											</p>
										</div>
										<div class="col-xs-12 col-sm-4 emphasis">
											<h2>
												<strong>43</strong>
											</h2>
											<p>
												<small>Posts</small>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					
										
			<!-- End Profile -->
			
          <p>This is an example of a blank page that you can use as a starting point for creating new ones.</p>
          
          <!-- Example Notifications Card-->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fa fa-bell-o"></i> Recent Posts</div>
            <div class="list-group list-group-flush small">
              <a class="list-group-item list-group-item-action" href="#">
                <div class="media">
                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                  <div class="media-body">
                    <strong>David Miller</strong>posted a new article to
                    <strong>David Miller Website</strong>.
                    <div class="text-muted smaller">Today at 5:43 PM - 5m ago</div>
                  </div>
                </div>
              </a>
              <a class="list-group-item list-group-item-action" href="#">
                <div class="media">
                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                  <div class="media-body">
                    <strong>Samantha King</strong>sent you a new message!
                    <div class="text-muted smaller">Today at 4:37 PM - 1hr ago</div>
                  </div>
                </div>
              </a>
              <a class="list-group-item list-group-item-action" href="#">
                <div class="media">
                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                  <div class="media-body">
                    <strong>Jeffery Wellings</strong>added a new photo to the album
                    <strong>Beach</strong>.
                    <div class="text-muted smaller">Today at 4:31 PM - 1hr ago</div>
                  </div>
                </div>
              </a>
              <a class="list-group-item list-group-item-action" href="#">
                <div class="media">
                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                  <div class="media-body">
                    <i class="fa fa-code-fork"></i>
                    <strong>Monica Dennis</strong>forked the
                    <strong>startbootstrap-sb-admin</strong>repository on
                    <strong>GitHub</strong>.
                    <div class="text-muted smaller">Today at 3:54 PM - 2hrs ago</div>
                  </div>
                </div>
              </a>
              <a class="list-group-item list-group-item-action" href="#">View all activity...</a>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
          <!-- end notification -->
          
          <!-- start followed people and companies -->
          <div class="row">
          	<div class="col-md-6">
	          	<div class="card mb-3">
	            <div class="card-header">
	              <i class="fa fa-bell-o"></i> Followed Users</div>
	            <div class="list-group list-group-flush small">
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <strong>David Miller</strong>posted a new article to
	                    <strong>David Miller Website</strong>.
	                    <div class="text-muted smaller">Today at 5:43 PM - 5m ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <strong>Samantha King</strong>sent you a new message!
	                    <div class="text-muted smaller">Today at 4:37 PM - 1hr ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <strong>Jeffery Wellings</strong>added a new photo to the album
	                    <strong>Beach</strong>.
	                    <div class="text-muted smaller">Today at 4:31 PM - 1hr ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <i class="fa fa-code-fork"></i>
	                    <strong>Monica Dennis</strong>forked the
	                    <strong>startbootstrap-sb-admin</strong>repository on
	                    <strong>GitHub</strong>.
	                    <div class="text-muted smaller">Today at 3:54 PM - 2hrs ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <i class="fa fa-code-fork"></i>
	                    <strong>adsf asdf</strong>forked the
	                    <strong>startbootstrap-sb-admin</strong>repository on
	                    <strong>GitHub</strong>.
	                    <div class="text-muted smaller">Today at 3:54 PM - 2hrs ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">View all activity...</a>
	            </div>
	            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
	          </div>          
          	</div>
          	
          	<div class="col-md-6">
	          	<div class="card mb-3">
	            <div class="card-header">
	              <i class="fa fa-bell-o"></i> Followed Companies</div>
	            <div class="list-group list-group-flush small">
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <strong>David Miller</strong>posted a new article to
	                    <strong>David Miller Website</strong>.
	                    <div class="text-muted smaller">Today at 5:43 PM - 5m ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <strong>Samantha King</strong>sent you a new message!
	                    <div class="text-muted smaller">Today at 4:37 PM - 1hr ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <strong>Jeffery Wellings</strong>added a new photo to the album
	                    <strong>Beach</strong>.
	                    <div class="text-muted smaller">Today at 4:31 PM - 1hr ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">
	                <div class="media">
	                  <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
	                  <div class="media-body">
	                    <i class="fa fa-code-fork"></i>
	                    <strong>Monica Dennis</strong>forked the
	                    <strong>startbootstrap-sb-admin</strong>repository on
	                    <strong>GitHub</strong>.
	                    <div class="text-muted smaller">Today at 3:54 PM - 2hrs ago</div>
	                  </div>
	                </div>
	              </a>
	              <a class="list-group-item list-group-item-action" href="#">View all activity...</a>
	            </div>
	            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
	          </div>
          	</div>
          
          </div>
          
          <!-- end followed people and companies -->
          
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
      
    <!-- Bootstrap core JavaScript-->    
    <script src="${vendor}/jquery/jquery.min.js"></script>
    <script src="${vendor}/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${vendor}/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${js}/sb-admin.min.js"></script>
    
    
    
  </div>
</body>

</html>
