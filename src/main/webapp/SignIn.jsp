<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en" >
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <style>
		<%@include file="style/SignIn.css"%>
	</style>
   
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    
    <title>Sign in & Sign up Form</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
        <!--sign in form  -->
          <form action="#" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" />
            </div>
            <input type="submit" value="Login" class="btn solid" />
            
           <!--sign up form -------------------------------------------- -->
          </form>
          <form action="insert" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Name" name="name" value="<c:out value='${user.name}' />"  />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" name="email"value="<c:out value='${user.email}' />" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password" value="<c:out value='${user.password}' />" />
            </div>
            <input type="submit" class="btn" value="Sign up" />
            
            
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
               Don't have an account yet ? Sign up and get access to all our services.
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Already made an account here? Sign in and get access to all our services.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>
	<script type="text/javascript">
	const sign_in_btn = document.querySelector("#sign-in-btn");
	const sign_up_btn = document.querySelector("#sign-up-btn");
	const container = document.querySelector(".container");
	window.onload=function(){
	sign_up_btn.addEventListener("click", () => {
	  container.classList.add("sign-up-mode");
	});

	sign_in_btn.addEventListener("click", () => {
	  container.classList.remove("sign-up-mode");
	});


	$("#search-icon").click(function() {
	  $(".nav").toggleClass("search");
	  $(".nav").toggleClass("no-search");
	  $(".search-input").toggleClass("search-active");
	});

	$('.menu-toggle').click(function(){
	   $(".nav").toggleClass("mobile-nav");
	   $(this).toggleClass("is-active");
	});
	}
	</script>
  </body>
</html>