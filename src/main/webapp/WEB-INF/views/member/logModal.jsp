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
	<!-- Modal -->
	<%-- #join --%>
	<div class="modal fade" id="log" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		
		<form class="form-signin" name="frm" action="/member/log" method="post" id="frm">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">로그인</h4>
				</div>
				
				<div class="modal-body">
				
			이메일<input type="email" name="email" class="form-control"
				placeholder="Email address" required>
			비밀번호<input type="password" name="password" class="form-control" placeholder="Password" required> 
				
				</div>
				
				<div class="modal-footer">
					<button class="btn btn-default" type="submit" id="frm_submit">Log</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			
			</form>		
		</div>
	</div>
</body>
</html>
