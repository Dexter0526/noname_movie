<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<input type="text" name="email" id="email" value="${member.email}" readonly>
		<input type="text" name="name" value="${member.name}">
		<input type="submit" name="btnUpdate" value="수정">
		<input type="button" name="btnDelete" value="삭제">
	</form>
	
<script>
$('#btnDelete').click(function () {
	var check = confirm("탈퇴하시겠습니까?");
	
	if (check == true) {
		location.href='/member/myAccountDelete';		
	}
})
</script>
</body>
</html>