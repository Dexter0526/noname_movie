<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ajax.js"></script>

<title>Insert title here</title>
</head>
<body>
	<!-- Modal -->
	<%-- #join --%>
	<div class="modal fade" id="join" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		
		<form class="form-signin" name="frm" action="/member/join" method="post" id="frm">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">회원가입</h4>
				</div>
				
				<div class="modal-body">
				
				
			이름<input type="text" name="name" id="inputName" class="form-control"
				placeholder="Name" required autofocus>
			이메일<input type="email" name="email" id="inputEmail" class="form-control"
				placeholder="Email address" required>
			<div class="check_font" id="email_check"></div>
			비밀번호<input type="password" name="password" id="inputPassword"
				class="form-control" placeholder="Password" required> 
				
				</div>
				
				<div class="modal-footer">
					<button class="btn btn-default" type="submit" id="frm_submit">Sign up</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			
			</form>		
		</div>
	</div>
	
<script>
// ajax 파일 분리 전
$("#inputEmail").blur(function(){
	var email = $('#inputEmail').val();
	$.ajax({
		url : '/member/emailCheck?email='+ email,
		contentType : "application/json",
		type : 'get',
		dataType : "json",
		success : function(data) {						
			console.log("data : " + data);
			if (data == 1) {
				// 1 : 아이디가 중복되는 문구
				$("#email_check").text("사용중인 아이디입니다. ");
				$("#email_check").css("color", "red");
				$("#frm_submit").attr("disabled", true);
			} else {
	
				if(email == ''){
	
					$('#email_check').text('아이디를 입력해주세요 :)');
					$('#email_check').css('color', 'red');
					$("#frm_submit").attr("disabled", true);				
	
				}else{
					$("#email_check").text("사용가능 아이디입니다.");
					$("#email_check").css("color", "blue");
					$("#frm_submit").attr("disabled", false);
				}
	
			}
		}, error : function() {
			console.log("실패");
			}
		});
});
</script>
</body>
</html>
