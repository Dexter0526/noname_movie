<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="/movie/commentWrite" method="post">
		<div id="movie-info">
			이미지: <img name="image" src="${movie.image}"><br>
					<input type="hidden" name="image" value="${movie.image}">
			제목: <input name="title" value="${movie.title}">
			링크: <input name="link" value="${movie.link}">
			영문제목: <input name="subtitle" value="${movie.subtitle}">
			개봉일자: <input name="pubDate" value="${movie.pubDate}">
			감독: <input name="director" value="${movie.director}">
			출연배우: <input name="actor" value="${movie.actor}">
			평점: <input name="userRating" value="${movie.userRating}"><br>
		</div>
	
		<span>평가하기</span>
		<div id="comment-write">
			<textarea name="content" rows="7" cols="65" required></textarea>
			<input type="submit" value="작성하기">
		</div>
	</form>
		<div>
			<table border="1">
				<tr>
					<th>닉네임</th>
					<th>후기</th>
				</tr>
				<c:forEach var="commentlist" items="${commentList}">
					<tr>
						<td rowspan="2">${commentlist.email}</td>
						<td>${commentlist.content}</td>
					</tr>
					<tr>
						<td>
							<fmt:formatDate value="${commentlist.regDate}" pattern="yyyy.MM.dd hh:mm"/> / ${commentlist.likecount} / ${commentlist.userRating}
							<c:if test="${commentlist.email eq email}">
								<a href="/movie/commentDelete?num=${commentlist.num}&title=${commentlist.movieName}">삭제</a>
								<a href="/movie/commentUpdateForm?num=${commentlist.num}&title=${commentlist.movieName}">수정</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	


</body>
</html>