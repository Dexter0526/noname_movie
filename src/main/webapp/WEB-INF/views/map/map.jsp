<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
</head>
<body>
	<!--카카오 지도 그리기-->
	<div id="map" style="width: 500px; height: 400px;" class = "cinema-list"></div>
	<br>
	
	<!--지도에 대한 평가 폼-->
	<div id="theaterCommentForm" class = "cinema-list"></div>
	<br>
	
	<!--지도에 대한 평가 리스트-->
	<div id="theaterComment" class = "cinema-list"></div><br><br><br><br>
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc593c8c71c9e243a4e4f82864c90634"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ajax.js"></script>
	<script> 
	<!--테이블 행 클릭시 이벤트-->
	$('#table tr').click(function(){
		var tr = $(this);
		var td = tr.children();
		var placeName = td.eq(0).text();
		var x = td.eq(3).text();
		var y = td.eq(4).text();
		var id = td.eq(5).text();
		
		console.log("클릭한 Row의 모든 데이터 : "+tr.text());
		console.log("placeName : " + placeName);
		console.log("id : " + id);
		map(placeName, x, y);
		mapCommentForm(placeName, id);
		mapComment(id);
		
	})
	<!--영화 평가 등록 클릭시 이벤트-->
	$('#theaterCommentForm').on('click', 'input#insertComment', function(){
		console.log("insert 실행");
		var placeName = $('#placeName').val();
		var content = $('#content').val();
		var id = $('#id').val();
		var userRating = $('#userRating').val();
		insertTheater(placeName, content, id, userRating);
	})
	
	<!--영화 평가 테이블에서 행 삭제시 이벤트-->
	$('#theaterComment').on('click', 'input#deleteComment', function(){
		console.log("delete 실행");
		var deleteComment = $(this);
		var tr = deleteComment.parent().parent();
		var td = tr.children();
		var num = td.eq(2).text();
		var id = $('#id').val();
		
		console.log('num : '+num);
		deleteTheater(num, id);
	})
	
	<!--영화 평가 리스트 수정시 이벤트-->
	$('#theaterComment').on('click', 'input#updateComment', function(){
		var updateComment = $(this);
		var tr = updateComment.parent().parent();
		var td = tr.children();
		var num = td.eq(2).text();
		var placeName = $('#placeName').val();
		var content = td.eq(1).text();
		var id = td.eq(3).text();
		var userRating = td.eq(4).text();
		console.log('id : '+id);
		var str = "";
		
		str += '장소: ' + '<input type = "text" name = "placeName" id="placeName" value="' + placeName + '" readonly><br>';
		str += '별점: ' + '<input type = "text" name = "userRating" id="userRating" value="'+userRating+'"><br>';
		str += '작성글: '+'<textarea rows="30" cols="30" name = "content" id = "content">'+content+'</textarea>';
		str += '<input type = "hidden" name = "num" id = "num" value="'+ num + '"><br>';
		str += '<input type = "hidden" name = "id" id = "id" value="'+ id + '"><br>';
		str += '<input type = "button" id="updateTheater" value="수정">';
		
		$('#theaterCommentForm').html(str);
	})
	
	<!--영화 평가 폼 수정 클릭시 이벤트-->
	$('#theaterCommentForm').on('click', 'input#updateTheater', function(){
		console.log("update 실행");
		var content = $('#content').val();
		var num = $('#num').val();
		var id = $('#id').val();
		updateTheater(content, num, id);
	})	
	
	<!--영화 평가 리스트 추천 클릭시 이벤트-->
	$('#theaterComment').on('click', 'input#likeCount', function(){
		var updateComment = $(this);
		var tr = updateComment.parent().parent();
		var td = tr.children();
		var num = td.eq(2).text();
		var placeName = $('#placeName').val();
		var content = td.eq(1).text();
		var id = td.eq(3).text();
		var userRating = td.eq(4).text();
		
		likeCount(num, id);
		
	})	
	
	<!--카카오 지도 그리기-->
	function map(placeName, x, y){
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(y, x),
			level : 3
		};
		var map = new kakao.maps.Map(container, options);
		
		var markerPosition  = new kakao.maps.LatLng(y, x); 
		
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		marker.setMap(map);
		var iwContent = '<div style="padding:5px;">' + placeName + '</div>';
	    iwPosition = new kakao.maps.LatLng(y, x); //인포윈도우 표시 위치입니다
		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 
	}
	
	<!--지도 id에 대한 평가 리스트 가져오기 함수-->
	function mapComment(id){
		var email = '${email}';
		
		$.ajax({
			url:"/map/commentList/"+id,
			type:"get",
			dataType: "json",
			contentType: "application/json",
			success: function (result) {
				console.log(result);
				values = result.commentList;
				var str = "";
				str += '<table border = "1">';
				str += '<tr>';
				str += '<td>이메일</td><td>작성 내용</td><td>별점</td><td>추천</td>';
				$.each(values, function(index, value){
					str += '<tr>';
					str += '<td>'+value.email+'</td>';
					str += '<td>' + value.content + '</td>';
					str += '<td style="display:none;">'+value.num+'</td>';
					str += '<td style="display:none;">'+value.id+'</td>';
					str += '<td>'+value.userRating+'</td>';
					str += '<td><input type = "button" id="likeCount" name="likeCount" value = "'+value.likecount+'"</td>';
					str += '<td>';
					if (value.email == email) {
						str += '<input type = "button" id="updateComment" value="수정">';
						str += '<input type = "button" id="deleteComment" value="삭제">';
					}
					str += '</td>';
					str += '</tr>';
				})
				str += '</table>'
				$('#theaterComment').html(str);
			}
		});
	}
	
	<!--지도id에 대한 평가 폼 만들기 함수-->
	function mapCommentForm(placeName, id){
		var str = "";
		str += '장소: ' + '<input type = "text" name = "placeName" id="placeName" value="' + placeName + '" readonly>';
		str += '별점: ' + '<input type = "text" name = "userRating" id="userRating" value="0"><br>';
		str += '작성글: '+'<textarea rows="30" cols="30" name = "content" id = "content"></textarea>';
		str += '<input type = "hidden" name = "id" id = "id" value="'+ id + '"><br>';
		str += '<input type = "button" id="insertComment" value="등록">';
		
		$('#theaterCommentForm').html(str);
	}
	<!--지도id에 대한 평가 등록 함수-->
	function insertTheater(placeName, content, id, userRating){
		$.ajax({
			url:"/map/insertComment/",
			type:"post",
			data:{placeName:placeName, content:content, id:id, userRating:userRating},
			dataType: "json",
			success: function (result) {
				mapCommentForm(placeName, id);
				mapComment(id);
			}
		});
	}
		
	<!--지도 id에 대한 평가 삭제 함수-->
	function deleteTheater(num, id){
		console.log(num + ' ' + id);
		$.ajax({
			url:"/map/deleteComment/"+num,
			type:"get",
			dataType: "json",
			success: function (result) {
				mapComment(id);
			}
		});
	}
	
	<!--지도 id에 대한 평가 수정 실행 함수-->
	function updateTheater(content, num, id, userRating){
		var placeName = $('#placeName').val(); 
		$.ajax({
			url:"/map/updateComment/",
			type:"post",
			data:{content:content, num:num, userRating:userRating},
			dataType: "json",
			success: function (result) {
				mapCommentForm(placeName, id);
				mapComment(id);
			}
		});
	}
	
	<!--평가 추천 함수-->
	function likeCount(num, id){
		$.ajax({
			url:"/map/updateLikeCount/"+num,
			type:"get",
			dataType: "json",
			success: function(result){
				mapComment(id);
			}
		});
	}
	
	</script>
</body>
</html>