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
<<<<<<< HEAD
			이미지: <img id="image" src="${movielist.image}"><br>
			제목: <input id="title" value="${movielist.title}">
			링크: <input id="link" value="${movielist.link}">
			영문제목: <input id="subtitle" value="${movielist.subtitle}">
			개봉일자: <input id="pubDate" value="${movielist.pubDate}">
			감독: <input id="director" value="${movielist.director}">
			출연배우: <input id="actor" value="${movielist.actor}">
			평점: <input id="userRating" value="${movielist.userRating}"><br>
=======
			<form action="/movie/content">
				이미지: <img name="image" src="${movielist.image}"><br>
						<input type="hidden" name="image" value="${movielist.image}">
				제목: <input type="submit" name="title"  value="${movielist.title}"> 
				링크: <input name="link" value="${movielist.link}">
				영문제목: <input name="subtitle" value="${movielist.subtitle}">
				개봉일자: <input name="pubDate" value="${movielist.pubDate}">
				감독: <input name="director" value="${movielist.director}">
				출연배우: <input name="actor" value="${movielist.actor}">
				평점: <input name="userRating" value="${movielist.userRating}"><br>
			</form>
>>>>>>> 94cd9fbc581d7d9565cfb8b61a3485cf79a16967
		</div>
	</c:forEach>
</body>
</html>