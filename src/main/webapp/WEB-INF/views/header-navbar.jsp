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
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"> 
	<link href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css" rel="stylesheet">
<%-- 	 <link href="${pageContext.request.contextPath}/resources/css/re/screen.css" rel="stylesheet" /> --%>
	<%-- <link href="${pageContext.request.contextPath}/resources/css/re/style.css" rel="stylesheet" /> --%>   
	<script src="${pageContext.request.contextPath}/resources/js/ie-emulation-modes-warning.js"></script>      
</head>

<body>

   <!-- Fixed navbar -->
    <nav class="navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="${pageContext.request.contextPath}/main">NONAME</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">      
          <!--  bar-right -->
          <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/main">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/main">영화 검색</a></li>
            <li><a href="/address/search">영화관 검색</a></li>
            <c:if test = "${email ne null}">
            <li class="active"><a href="#" onclick="winOpen();">내정보 <span class="sr-only">(current)</span></a></li>
            </c:if>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    
    
    <!-- script -->
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