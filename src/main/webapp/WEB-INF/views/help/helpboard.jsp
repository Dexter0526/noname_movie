<%@page import="java.util.List"%>
<%@page import="it.company.noname.service.helpService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>고객센터에 오신 것을 환영합니다.</title>
<script>
	function LayerView(obj) {
		let arr = document.querySelectorAll('.tbl');
		for (let item of arr) {
			item.style.display = "none";
		}		
		obj.style.display = "inline";
		}
</script>
</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<h2>공지사항</h2>
	<%
		
	%>

	<table id="notice">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.bno}</td>
				<td>${board.title}</td>
			</tr>
			<tr>
				<td>${board.content}</td>
			</tr>
		</c:forEach>
	</table>


	<table border="1">
		<tr>
			<th onclick="LayerView(a)">자주 묻는 질문</th>
			<th onclick="LayerView(b)">자주 묻는 질문</th>
			<th onclick="LayerView(c)">해지/환불</th>
			<th onclick="LayerView(d)">이용권/쿠폰</th>
			<th onclick="LayerView(e)">로그인/계정 관리</th>
			<th onclick="LayerView(f)">콘텐츠</th>
			<th onclick="LayerView(g)">재생 문의</th>
			<th onclick="LayerView(h)">서비스 문의</th>
		</tr>
	</table>

	<table id="a" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.faqtitle}</td>
			</tr>
			<tr>
				<td>${board.faqcontent}</td>
			</tr>
		</c:forEach>
	</table>

	<table id="b" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.paytitle}</td>
			</tr>
			<tr>
				<td>${board.paycontent}</td>
			</tr>
		</c:forEach>
	</table>

	<table id="c" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.retiretitle}</td>
			</tr>
			<tr>
				<td>${board.retirecontent}</td>
			</tr>
		</c:forEach>
	</table>

	<table id="d" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.usetitle}</td>
			</tr>
			<tr>
				<td>${board.usecontent}</td>
			</tr>
		</c:forEach>
	</table>

	<table id="e" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.logintitle}</td>
			</tr>
			<tr>
				<td>${board.logincontent}</td>
			</tr>
		</c:forEach>
	</table>
	<table id="f" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.contenttitle}</td>
			</tr>
			<tr>
				<td>${board.contentcontent}</td>
			</tr>
		</c:forEach>
	</table>
	<table id="g" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.playtitle}</td>
			</tr>
			<tr>
				<td>${board.playcontent}</td>
			</tr>
		</c:forEach>
	</table>
	<table id="h" class="tbl" style="display: none;">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.servicetitle}</td>
			</tr>
			<tr>
				<td>${board.servicecontent}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

