<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>고객센터에 오신 것을 환영합니다.</title>


</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<h2>공지사항</h2>
	<table id="table" class="table">
		<thead>

		</thead>
		<tbody>
			<c:forEach items="${conList}" var="resultList" varStatus="status">
				<tr class="aq">
					<td>${resultList.area}</td>
					<td>${resultList.name}</td>
					<td>${resultList.gubun}</td>
				</tr>
				<tr class="aa">
					<td>${resultList.area}</td>
					<td>${resultList.name}</td>
				</tr>

			</c:forEach>
			<tr id='addbtn'>
				<td colspan="5"><divclass="btns"> <a
						href="javascript:moreList();" class="btn btn-primary">더보기</a>
					</div></td>
			</tr>
		</tbody>
	</table>
</body>
<script>
	$("tr.aq").click(function() {
		$(".c").css('transform', 'rotate(0deg)')//화살표 방향 바뀜
		$("tr.aa").stop().slideUp(0);
		$(this).next().toggle(200);//slideToggle 업다운 자동
		$(this).find(".c").css('transform', 'rotate(180deg)'); //find는 손자에서도 찾는다.
	});

	function moreList() {
		$
				.ajax({
					url : "/admin/jsonlist",
					type : "POST",
					cache : false,
					dataType : 'json',
					data : "conectType=" + conectType + "&eDate=" + eDate
							+ "&sDate=" + sDate + "&codeId=" + codeId
							+ "&limit=" + limit,
					success : function(data) {
						//console.log(data);
						var content = "";
						for (var i = 0; i < data.hashMapList.length; i++) {
							content += "<tr>" + "<td>"
									+ data.hashMapList[i].area + "</td>"
									+ "<td>" + data.hashMapList[i].name
									+ "</td>" + "<td>"
									+ data.hashMapList[i].gubun + "</td>"
									+ "<td>" + data.hashMapList[i].cnt
									+ "</td>" + "</tr>";
						}
						content += "<tr id='addbtn'><td colspan='5'><div class='btns'><a href='javascript:moreList();' class='btn'>더보기</a></div></td></tr>";
						$('#addbtn').remove();//remove btn
						$(content).appendTo("#table");
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}
				});
	};
</script>
</html>

