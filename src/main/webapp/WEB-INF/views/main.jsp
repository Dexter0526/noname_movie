<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
   <head>
      <title>team noname</title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="" />
      <meta name="author" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Raleway:400,700" rel="stylesheet" />      
 	  
 	  <!-- CSS -->
      <link href="${pageContext.request.contextPath}/resources/css/re/screen.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/css/re/style.css" rel="stylesheet" />      
      <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <!-- CSS -->      
   </head>

 <body class="home" id="page">


<!-- login/join -->
		 <c:if test = "${email eq null}">
			<nav class="cd-main-nav js-main-nav">
				<ul class="cd-main-nav__list js-signin-modal-trigger">
						<li><a class="cd-main-nav__item cd-main-nav__item--signin" href="#0" data-signin="login" data-toggle="modal" data-target="#log">로그인</a></li>
						<li><a class="cd-main-nav__item cd-main-nav__item--signup" href="#0" data-signin="signup" data-toggle="modal" data-target="#join">회원가입</a></li>
				</ul>
			</nav>
		</c:if>
		<c:if test = "${email ne null}">
			<nav class="cd-main-nav js-main-nav">
				<ul class="cd-main-nav__list js-signin-modal-trigger">
						<li><a class="cd-main-nav__item cd-main-nav__item--signin" data-signin="logout" onclick="location.href = '/member/logout'">로그아웃</a></li>
						<li><a class="cd-main-nav__item cd-main-nav__item--signin" href="#" onclick="winOpen();">내정보</a></li>
				</ul>
			</nav>
		</c:if> 
<!-- login/join -->
				

        <!-- Main Content -->
		<div class="content-box">
		<!-- Hero Section -->
		<section class="section section-hero">
		<div class="hero-box">
			<div class="container">
				<div class="hero-text align-center">
				<h1>NONAME</h1>
				</div>
			</div>
			<form class="destinations-form" action="/movie/main">
				<div class="input-line">
					<input type="text" name="query" value="${query}" class="form-input check-value" placeholder="작품 제목, 배우, 감독을 검색해보세요." />
					<button type="submit" name="destination-submit" class="form-submit btn btn-special">Find</button>
				</div>
			</form>
		</div>           
		</section>
		</div>
		
		
		<div class="icon-line">
		 <img src="${pageContext.request.contextPath}/resources/img/9999.png"  class="iconimg"  alt="">
		<h7>영화를 검색하고 평점과 리뷰를 만나보세요.</h7>
        </div>    

	  <!-- footer start -->
      <%@ include file="./include/footer.jsp"%>
	  <!-- footer close -->

	  <!-- footer-bar main fixed -->
      <%@ include file="./include/footer-bar.jsp"%>
	  <!-- footer-bar close -->	
	
	
	  <%@ include file="member/logModal.jsp"%>
      <%@ include file="member/joinModal.jsp"%>
	
	
      <!-- Scripts -->
      
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
     
      <script src="${pageContext.request.contextPath}/resources/js/re/jquery.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/re/functions.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/re/main.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/re/placeholders.min.js"></script>
      <!-- Script close -->
      
	  <script>
			function winOpen() {
				var childWindow = window.open('/member/passwdCheckForm', '', 'width=400,height=300');
			}
	  </script>
	
	
</body>
</html>
