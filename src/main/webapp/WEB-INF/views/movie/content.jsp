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

	<div id="movie-info">
		이미지: <img id="image" src="${movie.image}"><br>
		제목: <input id="title" value="${movie.title}">
		링크: <input id="link" value="${movie.link}">
		영문제목: <input id="subtitle" value="${movie.subtitle}">
		개봉일자: <input id="pubDate" value="${movie.pubDate}">
		감독: <input id="director" value="${movie.director}">
		출연배우: <input id="actor" value="${movie.actor}">
		평점: <input id="userRating" value="${movie.userRating}"><br>
	</div>

</body>
</html>