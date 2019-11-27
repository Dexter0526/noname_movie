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


</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<h2>공지사항</h2><%
%>

	<table id="notice">
	 <c:forEach var="board" items="${boardList}">
		  <tr>
		  	<td>${board.bno}</td>
		  	<td class="left">
		  		${board.title}</td>
		  	</tr>
		  	<tr>
		  	<td>${board.content}</td>
		  </tr> </c:forEach>
		  </table>
			
			
				<td colspan="5"><divclass="btns"> <a
						href="javascript:moreList();" class="btn btn-primary">더보기</a>
			</table>
</body>

</html>

