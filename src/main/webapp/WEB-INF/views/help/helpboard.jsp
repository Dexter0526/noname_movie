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
function(a) {
	<c:set var="number" value="1" scope="application" />;}
function(b) {
	<c:set var="number" value="2" scope="application" />;}
function(c) {
	<c:set var="number" value="3" scope="application" />;}
function(d) {
	<c:set var="number" value="4" scope="application" />;}
function(e) {
	<c:set var="number" value="5" scope="application" />;}
function(f) {
	<c:set var="number" value="6" scope="application" />;};
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
				<td class="left">${board.title}</td>
			</tr>
			<tr>
				<td>${board.content}</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<table border="1">
		<th><input type="button" value="자주 묻는 질문" class="dup" onclick="function(a)"></th>
		<th onclick="function(b)">해지/환불</th>
		<th onclick="function(c)">이용권/쿠폰</th>
		<th onclick="function(d)">로그인/계정 관리</th>
		<th onclick="function(e)">콘텐츠</th>
		<th onclick="function(f)">재생 문의</th>
		<th onclick="function(g)">서비스 문의</th>
	</table>
	<c:set var="number" value="1" scope="application" />
	
	<c:if test="${number == 1}">
	<table id="a" >
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.faqtitle}</td>
			</tr>
			<tr>
				<td>${board.faqcontent}</td>
			</tr>
		</c:forEach>
	</table></c:if>
	<c:if test="${number == 2}">
	<table id="b">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.paytitle}</td>
			</tr>
			<tr>
				<td>${board.paycontent}</td>
			</tr>
		</c:forEach>
	</table></c:if>
	<c:if test="${number == 3}">
	<table id="c" >
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.retiretitle}</td>
			</tr>
			<tr>
				<td>${board.retirecontent}</td>
			</tr>
		</c:forEach>
	</table></c:if>
	<c:if test="${number == 4}">
<table id="d">
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.usetitle}</td>
			</tr>
			<tr>
				<td>${board.usecontent}</td>
			</tr>
		</c:forEach>
	</table></c:if>
</body>
</html>

