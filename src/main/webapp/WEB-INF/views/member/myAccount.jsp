<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action="">
		<input type="text" name="email" id="email" value="${member.email}" readonly>
		<input type="text" name="name" value="${member.name}">
		<input type="submit" name="btnUpdate" value="수정">
		<input type="button" name="btnDelete" value="삭제">
	</form>
<<<<<<< HEAD
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
=======
</div>
>>>>>>> 708af6cd7cd467941bf35952e0a46d0a91b24f2d
<script>
$('#btnDelete').onclick(function () {
	var check = confirm("탈퇴하시겠습니까?");
	
	if (check == true) {
		location.href='/member/myAccountDelete';		
	}
})
</script>
</body>
</html>