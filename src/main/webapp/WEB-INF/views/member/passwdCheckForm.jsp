<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<input type="hidden" id="email" value="${email}">
		<input type="password" id="passwd" placeholder="비밀번호를 입력하세요">
		<span id="message"></span><br>
		<button type="button" id="btn">확인</button>
	</form>
	
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$('#btn').click(function () {
	var email = $('#email').val();
	var passwd = $('#passwd').val();
	
	console.log("email: " + email);
	console.log("passwd: " + passwd);
	
	$.ajax({
		url: '/member/passwdCheck',
		data: {email: email, passwd: passwd},
		dataType: 'json', 
		contentType: 'application/json',
		success: function (data) {
			console.log(typeof data);
			console.log(data);
			
			passwdCheckMessage(data);
		}
	});
});

function passwdCheckMessage(check) {
	if (check == 1) {
		$('#message').html('');
		close();
		opener.location.href = '/member/myAccount';
	} else {
		$('#message').html('패스워드가 일치하지 않습니다.').css('color', 'red');
	}
	
}

</script>
</body>
</html>