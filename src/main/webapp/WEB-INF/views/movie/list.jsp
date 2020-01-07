<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/re/screen2.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/re/style.css"
	rel="stylesheet" />
<!-- CSS -->
</head>
<body>




	<!--영화 검색 상단-->
	<div>
		<section class="section section-hero">
			<div class="hero-box">
				<div class="container">
					<div class="hero-text align-center">
						<h1>영화 검색</h1>
					</div>
				</div>

				<!--영화 검색 폼-->
				<form class="destinations-form" action="">
					<div class="input-line">
						<input type="text" class="form-input check-value" id="query"
							name="query" value="${query}" placeholder="작품 제목을 검색해보세요" />
						<button type="submit" name="destination-submit"
							class="form-submit btn btn-special">Find</button>
					</div>
				</form>
			</div>
		</section>




		<div id="movie-info" class="cinema-list">
			<c:if test="${movieList ne null}">
				<c:forEach var="movie" items="${movieList}">
					<form action="/movie/content">
						<table id="movie-list">
							<tr>
								<td rowspan="3"><img name="image" id="image"
									src="${movie.image}"> <input type="hidden" name="image"
									value="${movie.image}"></td>
								<td><input type="submit" id="title" name="title"
									value="${movie.title}" readonly> <input type="text"
									id="subtitle" name="subtitle" value="${movie.subtitle}"
									readonly></td>
							<tr>
								<td><input type="text" id="pubDate" name="pubDate"
									value="${movie.pubDate}" readonly> <input type="text"
									id="director" name="director" value="${movie.director}"
									readonly> <input type="text" id="actor" name="actor"
									value="${movie.actor}" readonly></td>
							</tr>
							<tr>
								<td><input type="text" id="userRating" name="userRating"
									value="${movie.userRating}" readonly></td>
							</tr>
						</table>
					</form>
				</c:forEach>
			</c:if>
		</div>
	</div>

	<!-- navbar -->
	<jsp:include page="../footer-bar2.jsp" />
	<!-- navbar -->





	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		$('#btnSearch')
				.click(
						function() {
							var query = $('#query').val();

							$
									.ajax({
										url : "/movie/list/" + query,
										type : "get",
										dataType : "json",
										contentType : "application/json",
										success : function(result) {
											values = result.movieList
											var str = "";
											$
													.each(
															values,
															function(index,
																	value) {
																str += '<form action="/movie/content">'
																		+ '<table id="movie-list">'
																		+ '<tr>'
																		+ '<td rowspan="3">'
																		+ '<img name="image" id="image" src="' + value.image + '">'
																		+ '<input type="hidden" name="image" value="' + value.image + '">'
																		+ '</td>'
																		+ '<td>'
																		+ '<input type="submit" id="title" name="title" value="' + value.title + '" readonly>'
																		+ '<input type="hidden" id="subtitle" name="subtitle" value="' + value.subtitle + '">'
																		+ value.subtitle
																		+ '</td>'
																		+ '<tr>'
																		+ '<td>'
																		+ '<input type="hidden" id="pubDate" name="pubDate" value="' + value.pubDate + '">'
																		+ value.pubDate
																		+ '<input type="hidden" id="director" name="director" value="' + value.director + '">'
																		+ value.director
																		+ '<input type="hidden" id="actor" name="actor" value="' + value.actor + '">'
																		+ value.actor
																		+ '</td>'
																		+ '</tr>'
																		+ '<tr>'
																		+ '<td>'
																		+ '<input type="hidden" id="userRating" name="userRating" value="' + value.userRating + '">'
																		+ value.userRating
																		+ '</td>'
																		+ '</tr>'
																		+ '</table>'
																		+ '</form>';
															});

											$('#movie-info').html(str);

										}
									})
						});
	</script>
</body>
</html>