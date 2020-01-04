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
	<!-- head -->
	<jsp:include page="../head.jsp"/>
	
	<div class="container">
		<!--영화관 검색 폼-->
		<div>
		<form action="/address/search">
			<input id="query" name="query" placeholder="장소">
			<input type="submit" value="검색">
		</form>
		</div>
			
		<!--영화관 정보 리스트(카카오)-->
		<div>
		<table id = "table">
		<c:forEach var="mapList" items="${mapList}">
		<tr>
				<td>${mapList.placeName}</td>
				<td>${mapList.roadAddressName}</td>
				<td>${mapList.phone}</td>
				<td style="display:none;">${mapList.x}</td>
				<td style="display:none;">${mapList.y}</td>
				<td style="display:none;">${mapList.id}</td>
		</tr>
		</c:forEach>
		</table>
		</div>
			
		<jsp:include page="map.jsp"/>
	</div>
</body>
</html>
