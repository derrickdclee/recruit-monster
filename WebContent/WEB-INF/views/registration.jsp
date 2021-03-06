<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Sign Up</title>

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

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Register an Account</div>
      <div class="card-body">
        <form:form action="registration" modelAttribute="user" method="POST">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">First name</label>
                <form:input class="form-control" path="first_name" id="first_name" type="text" aria-describedby="nameHelp" placeholder="Enter first name"/>
              </div>
              <div class="col-md-6">
                <label for="exampleInputLastName">Last name</label>
                <form:input class="form-control" path="last_name" id="last_name" type="text" aria-describedby="nameHelp" placeholder="Enter last name"/>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="username">User Name</label>
            <form:input class="form-control" path="user_name" id="user_name" type="user" aria-describedby="usernameHelp" placeholder="Enter User Name"/>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <form:input class="form-control" path="email" id="email" type="email" aria-describedby="emailHelp" placeholder="Enter email"/>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">Password</label>
                <form:input class="form-control" path="password" id="password" type="password" placeholder="Password"/>
              </div>
              <div class="col-md-6">
              <p></p>
              <p></p>
                <label class = "small">must contain one capital letter and a special character</label>
                <label class = "small">must contain at least ten characters</label>
              </div>
            </div>
          </div>
          <button class="btn btn-primary btn-block" type="submit">Register</button>
        </form:form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login">Login Page</a>
          <a class="d-block small" href="forgotPassword">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
<!--   <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  Core plugin JavaScript
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script> -->
</body>

</html>