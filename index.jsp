<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/mystyle.css" rel="stylesheet" type="text/css">
<style>
.banner-background{
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 94%, 69% 93%, 33% 100%, 0 95%, 0 0);
}

</style>
</head>
<body>

<!-- navbar -->
<%@include file="normal_navbar.jsp" %>

<!-- banner -->
<div class="container-fluid p-0 m-0">
<div class="jumbotron primary-background text-white banner-background" >
<div class="container">
<h3 class="display-3">Welcome to Tech Blog</h3>

<p>Welcome to technical blog, world of technology Computer 
programming is the process of performing particular computations (or more generally, accomplishing specific computing results), usually by designing and building executable computer programs. 
</p>
<p>Programming involves tasks such as analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms (usually in a particular programming language, commonly referred to as coding</p>
<button class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span> Start ! its Free</button>
<a href="login_page.jsp" class="btn btn-outline-light btn-lg "><span class="fa fa-user-circle fa-spin"></span> Login</a>

</div>
</div>

</div>

<!-- cards -->
<div class="container">
<div class="row mb-2">
<div class="col-md-4">
<div class="card" >
 
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" >
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" >
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read more</a>
  </div>
</div>
</div>


</div>


<div class="row ">
<div class="col-md-4">
<div class="card" >
 
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" >
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" >
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read more</a>
  </div>
</div>
</div>
</div>

</div>





<!-- JavaScript -->

<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script type="text/javascript" src="js/myjs.js"></script>

</body>
</html>