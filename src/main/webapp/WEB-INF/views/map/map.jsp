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
	<div id="map" style="width: 500px; height: 400px;"></div>
	<br>
	<div id="theaterCommentForm"></div>
	<br>
	<div id="theaterComment"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc593c8c71c9e243a4e4f82864c90634"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
	$('#table tr').click(function(){
		var tr = $(this);
		var td = tr.children();
		var place_name = td.eq(0).text();
		var x = td.eq(3).text();
		var y = td.eq(4).text();
		var id = td.eq(5).text();
		
		console.log("클릭한 Row의 모든 데이터 : "+tr.text());
		console.log("place_name : " + place_name);
		console.log("id : " + id);
		map(place_name, x, y);
		mapCommentForm(place_name, id);
		
	})
	
	function map(place_name, x, y){
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
		var iwContent = '<div style="padding:5px;">' + place_name + '</div>';
	    iwPosition = new kakao.maps.LatLng(y, x); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 
	}
	
	function mapComment(id){
		$.ajax({
			url:"/map/commentList/"+id,
			type:"get",
			dataType: "json",
			contentType: "application/json",
			success: function (result) {
				console.log(result);
				values = result.commentList;
				var str = "";
				str += '<table>'
				$.each(values, function(index, value){
					str += '<tr>'
					str += '<td>'+value.email+'</td>'
					str += '<td>' + value.content + '</td>'
					str += '</tr>'
				})
				str += '</table>'
				$('#theaterComment').html(str);
			}
		});
	}
	
	function mapCommentForm(place_name, id){
		var str = "";
		str += '<form action = "/map/insertComment" method = "post">';
		str += '장소: ' + '<input type = "text" name = "place_name" value="' + place_name + '"><br>';
		str += '작성글: '+'<textarea rows="30" cols="30" name = "content"></textarea>';
		str += '<input type = "hidden" name = "id" value="'+ id + '"><br>';
		str += '<button type = "submit">등록</button>';
		str += '</form>';
		
		$('#theaterCommentForm').html(str);
	}
	</script>
</body>
</html>