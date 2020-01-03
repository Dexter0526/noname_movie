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
	<div id="theaterCommentWrite">
		<form>
			작성 : <input type = "text" name = "content">
			계정 : <input type = "email" name = "email" value = "${email }">
		</form>	
	</div>

	<div id="theaterComment">
	
	</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$('#table tr').click(function(){
		var tr = $(this);
		var td = tr.children();
		
		var place_name = td.eq(0).text();
		var id = td.eq(5).text();
		
		$.ajax({
			url:"/map/commentList/"+id,
			type:"get",
			dataType: "json",
			contentType: "application/json",
			success: function (result) {
				console.log(result);
				values = result.commentList;
				var str = "";
				str += '<table>'
				$.each(values, function(index, value){
					str += '<tr>'
					str += '<td>'+value.email+'</td>'
					str += '<td>' + value.content + '</td>'
					str += '</tr>'
				})
				str += '</table>'
			}
		});
	})
</script>
</body>
</html>