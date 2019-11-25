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
	<form action="/movie/all">
		<input id="query" name="query" value="${query}" placeholder="제목*">
		<input type="submit" value="영화검색">
	</form>
	
	<c:forEach var="movielist" items="${movieList}">
		<div id="movie-info">
			<a href="/movie/content?title=${movielist.title}">
			이미지: <img id="image" src="${movielist.image}"><br>
			제목: <input id="title" value="${movielist.title}">
			링크: <input id="link" value="${movielist.link}">
			영문제목: <input id="subtitle" value="${movielist.subtitle}">
			개봉일자: <input id="pubDate" value="${movielist.pubDate}">
			감독: <input id="director" value="${movielist.director}">
			출연배우: <input id="actor" value="${movielist.actor}">
			평점: <input id="userRating" value="${movielist.userRating}"><br>
			</a>
		</div>
	</c:forEach>
	
</body>
</html>