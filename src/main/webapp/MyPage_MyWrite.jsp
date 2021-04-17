<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Document</title>

<style>
.top {
	border-radius: 8px;
	border: 3px solid lightseagreen;
	height: 200px;
	margin: 20px;
	width: 1100px;
	margin-left: auto;
	margin-right: auto;
	align-content: center;
}

.mid {
	border: 3px solid lightseagreen;
	border-radius: 8px;
	height: 70px;
	margin: 20px;
	width: 1100px;
	margin-left: auto;
	margin-right: auto;
	align-content: center;
}

.box {
	width: 1500px;
	height: 700px;
	margin: 10px;
	margin-left: auto;
	margin-right: auto;
	align-content: center;
	display: flex;
	justify-content: space-between;
}

.mainbox {
	position: absolute;
	left: 230px;
	margin: 20px;
	border: 3px solid lightseagreen;
	height: 590px;
	width: 800px;
	padding: 20px;
}

.leftbox {
	position: static;
	margin: 20px;
	border: 3px solid lightseagreen;
	width: 150px;
	height: 590px;
	padding: 20px;
	float: left;
	line-height: 200%;
}

.leftbox h3 {
	border: 3px solid lightseagreen;
	vertical-align: middle;
	text-align: center;
	height: 40px;
	width: auto;
	margin: 10px;
}

button {
	background: #1AAB8A;
	color: #fff;
	border: none;
	position: relative;
	width: 130px;
	height: 60px;
	font-size: 1.0em;
	padding: 0 10px;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	margin: 10px;
	margin-top: 30px;
}

button:hover {
	background: #fff;
	color: #1AAB8A;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #1AAB8A;
	transition: 400ms ease all;
}

button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

h1 {
	text-align: center;
}
table {
margin-left: 50px;
margin-top:70px;
border: 1px solid lightseagreen;
}
td{
border: 1px solid lightseagreen;
}
</style>
</head>
<form>
	<div class="top"></div>
	<div class="mid"></div>
	<div class="box">
		<div class="leftbox">
			<h3>My page</h3>
			<button type="button" onclick="location.href='MyPage_pix_impor.jsp'">회원정보 수정</button>
				<br>
				<button type="button" onclick="location.href='MyPage_MyWrite.jsp'">내가 쓴글</button>
				<br>
				<button type="button" onclick="location.href='#'">지원현황</button>
				<br>
				<button type="button" onclick="location.href='#'">스크렙</button>
				<br>
				<button type="button" onclick="location.href='Mypage_license.jsp'">자격증 및 경력</button>
		</div>
		<div class="mainbox">
			<h1>등록한 글 목록</h1>
			<table>
				<tr style="height:50px;">
					<td>날짜</td>
					<td style = "width:500px;">글 제목1</td>
					<td><input type ="submit" value = "수정"></td>
					<td><input type ="submit" value = "삭제"></td>
				</tr>
				<tr style="height:50px;">
					<td>날짜</td>
					<td style = "width:500px;">글 제목2</td>
					<td><input type ="submit" value = "수정"></td>
					<td><input type ="submit" value = "삭제"></td>
				</tr>
				<tr style="height:50px;">
					<td>날짜</td>
					<td style = "width:500px;">글 제목3</td>
					<td><input type ="submit" value = "수정"></td>
					<td><input type ="submit" value = "삭제"></td>
				</tr>
			</table>

		</div>
	</div>
</form>

<body>
</body>
</html>