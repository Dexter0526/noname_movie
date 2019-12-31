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
	<form action="/address/search">
		<input id="query" name="query" placeholder="장소">
		<input type="submit" value="영화관 검색">
	</form>
	
	<table id = "table">
	<c:forEach var="mapList" items="${mapList}">
	<tr>
			<td>${mapList.place_name}</td>
			<td>${mapList.road_address_name}</td>
			<td>${mapList.phone}</td>
			<td style="display:none;">${mapList.x}</td>
			<td style="display:none;">${mapList.y}</td>
			<td style="display:none;">${mapList.id}</td>
	</tr>
	</c:forEach>
	</table>
	
	<jsp:include page="map.jsp"/>
	
</body>
</html>