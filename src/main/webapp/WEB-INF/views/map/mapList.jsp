<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>team noname</title>
      <link href="${pageContext.request.contextPath}/resources/css/re/screen2.css" rel="stylesheet" />
     <link href="${pageContext.request.contextPath}/resources/css/re/style.css" rel="stylesheet" />  
</head>

<body>
<div>
	<!--영화관 검색 상단-->
		<section class="section section-hero">
			<div class="hero-box">
				<div class="container">
					<div class="hero-text align-center">
						<h1>영화관 찾기</h1>
					</div>
				</div>

				<!--영화관 검색 폼-->
				<form class="destinations-form" action="/address/search">
					<div class="input-line">
						<input type="text" class="form-input check-value" id="query"
							name="query" placeholder="구 또는 동을 검색해주세요" />
						<button type="submit" name="destination-submit"
							class="form-submit btn btn-special">Find</button>
					</div>
				</form>
			</div>
		</section>


		<!--영화관 정보 리스트(카카오)-->
		<div class="cinema-list">
			<div class="cinema-list-intro">
				<ul>
					<li>지점</li>
					<li>주소</li>
					<li>연락처</li>
				</ul>
			</div>
			<table id="table">
				<c:forEach var="mapList" items="${mapList}">
					<tr>
						<td>${mapList.placeName}</td>
						<td>${mapList.roadAddressName}</td>
						<td>${mapList.phone}</td>
						<td style="display: none;">${mapList.x}</td>
						<td style="display: none;">${mapList.y}</td>
						<td style="display: none;">${mapList.id}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<jsp:include page="map.jsp" />
		<!-- navbar -->
		<jsp:include page="../footer-bar2.jsp" />
		<!-- navbar -->
</div>
</body>
</html>
