<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP: board</title>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/boardCss.css"/>

</head>
<body>
	<div id="container">
		<div id="log">0</div>
	</div>
	<div id ="boardContent">
		<table id="board">
			<tr>
				<td>지역</td>
				<td>모집내용</td>
				<td>구인자</td>
				<td>급여</td>
				<td>근무시간</td>
				<td>등록일</td>
			</tr>
			<%
			for(int i = 0; i<20; i++){
			%>
			<tr>
				<td>지역</td>
				<td>모집내용</td>
				<td>구인자</td>
				<td>급여</td>
				<td>근무시간</td>
				<td>등록일</td>
			</tr>
			<%
			}
			%>
			
			
		</table>
	</div>
	<script type="text/javascript">
	$('#boardContent').scroll(function () {
		var scrollT = $(this).scrollTop(); // 스크롤바의 상단위치
		var scrollH = $(this).height(); // 스크롤 바가 갖는 div의 높이
		var contentH = $('#board').height(); // 문서 전체 내용을 갖는 div의 높이
		
		if(scrollT+scrollH+1 >= contentH){
			log(scrollT);
			$('#board').append('<tr><td style="color: red">지역</td><td>모집내용</td><td>구인자</td><td>급여</td><td>근무시간</td><td>등록일</td></tr>');
		}			
	});
	
	function log(str){
	$('#log').text(str);
	}
	</script>
	
	<div class="menuBar">
		<input type="button" value="글쓰기" >
		<select>
			<option>지역</option>
			<option>카테고리</option>
			<option>구인자</option>
		</select>
		<input type="text" size="40%" placeholder="검색어를 입력하세요">
		<input type="button" value="검색">
	</div>
</body>
</html>