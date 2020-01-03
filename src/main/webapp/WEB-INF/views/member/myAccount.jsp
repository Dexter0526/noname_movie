<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- head -->
	<jsp:include page="../head.jsp"/>
	
	<div class="container">
		<form action="/member/myAccountUpdate" method="post">
			이메일: <input type="text" name="email" id="email" value="${member.email}" readonly><br>
			이름: <input type="text" name="name" value="${member.name}"><br>
			<input type="submit" id="btnUpdate" name="btnUpdate" value="수정">
			<input type="button" id="btnDelete" name="btnDelete" value="삭제">
		</form>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
<script>
$('#btnDelete').on('click', function () {
	var check = confirm("탈퇴하시겠습니까?");
	
	if (check == true) {
		location.href='/member/myAccountDelete';		
	}
})
</script>
</body>
</html>