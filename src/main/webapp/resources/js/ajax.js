console.log("Member Module...")

var memberService = (function(){
	console.log("function test")
	return {name : "aaaa"}
	
	// ajax 함수
	function idCheck(){
		console.log("idCheck test")
		$.ajax({
			url : '${pageContext.request.contextPath}/emailCheck?email='+ email,
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
	
					if(user_id == ""){
	
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
	}
	
})();
//이//이메일 유효성 체크
//$("#inputEmail").blur(function() {
//	// id = "inputEmail" / name = "email"
//	var email = $('#inputEmail').val();
//	console.log('email : ' + email);
//	$.ajax({
//		url : '${pageContext.request.contextPath}/emailCheck?email='+ email,
//		type : 'get',
//		dataType : "json",
//		success : function(data) {						
//			console.log("data : " + data);
//			if (data == 1) {
//				// 1 : 아이디가 중복되는 문구
//				$("#email_check").text("사용중인 아이디입니다. ");
//				$("#email_check").css("color", "red");
//				$("#frm_submit").attr("disabled", true);
//			} else {
//
//				if(user_id == ""){
//
//					$('#email_check').text('아이디를 입력해주세요 :)');
//					$('#email_check').css('color', 'red');
//					$("#frm_submit").attr("disabled", true);				
//
//				}else{
//					$("#email_check").text("사용가능 아이디입니다.");
//					$("#email_check").css("color", "blue");
//					$("#frm_submit").attr("disabled", false);
//				}
//
//			}
//		}, error : function() {
//			console.log("실패");
//		}
//	});
//});
// 유효성 체크
//$#inputEmail").blur(function() {
///	id = "inputEmail" / name = "email"
//v	 email = $('#inputEmail').val();
//c	sole.log('email : ' + email);
//$	jax({
//u		 : '${pageContext.request.contextPath}/emailCheck?email='+ email,
//t		e : 'get',
//d		aType : "json",
//s		cess : function(data) {						
//c			sole.log("data : " + data);
//i			(data == 1) {
///				1 : 아이디가 중복되는 문구
//$				#email_check").text("사용중인 아이디입니다. ");
//$				#email_check").css("color", "red");
//$				#frm_submit").attr("disabled", true);
//}			lse {

//i				user_id == ""){

//$					#email_check').text('아이디를 입력해주세요 :)');
//$					#email_check').css('color', 'red');
//$					#frm_submit").attr("disabled", true);				

//}				se{
//$					#email_check").text("사용가능 아이디입니다.");
//$					#email_check").css("color", "blue");
//$					#frm_submit").attr("disabled", false);
//}				
//}			//}		error : function() {
//c			sole.log("실패");
//}		//}	
//}
