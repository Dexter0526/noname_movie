<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title></title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/css/cover.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="${pageContext.request.contextPath}/resources/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="site-wrapper">

		<div class="site-wrapper-inner">

			<div class="cover-container">

				<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand">Noname Movie</h3>
						<nav>
							<ul class="nav masthead-nav">
								<li class="active"><a href="main">Home</a></li>
								<li><a href="/movie/main">영화 검색</a></li>
								<li><a href="/address/search">영화관 검색</a></li>
								<c:if test = "${email ne null}">
									<li><a href="#" onclick="winOpen();" >내정보</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>

				<div class="inner cover">
					<form action="/movie/main">
						<h1 class="cover-heading">
							<input id="query" name="query" value="${query}" style="color:black" placeholder="영화 제목*">
							<input type="submit" class = "btn btn-lg btn-default" value="영화검색">
						</h1>
					</form>
					<p class="lead">Cover is a one-page template for building
						simple and beautiful home pages. Download, edit the text, and add
						your own fullscreen background photo to make it your own.</p>
					<c:if test = "${email eq null}">
					<p class="lead">
						<button type="button" data-toggle="modal" data-target="#log" class = "btn btn-lg btn-default">로그인</button>
						<button type="button" data-toggle="modal" data-target="#join" class = "btn btn-lg btn-default">회원가입</button>
					</p>
					</c:if>
					<c:if test = "${email ne null}">
					<p class = "lead">
						<button type="button" class="btn btn-lg btn-default" onclick="location.href = '/member/logout'">로그아웃</button>
					</p>
					</c:if>
				</div>

				<div class="mastfoot">
					<div class="inner">
						<p>
							Cover template for <a href="http://getbootstrap.com">Bootstrap</a>,
							by <a href="https://twitter.com/mdo">@mdo</a>.
						</p>
					</div>
				</div>

			</div>

		</div>

	</div>

	<%--모달 로그인 테이블 --%>
	<%@ include file="./member/logModal.jsp"%>
	<%@ include file="./member/joinModal.jsp"%>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${pageContext.request.contextPath}/resources/js/ie10-viewport-bug-workaround.js"></script>
	<script>
		function winOpen() {
			var childWindow = window.open('/member/passwdCheckForm', '', 'width=400,height=300');
		}
	</script>
</body>
</html>
