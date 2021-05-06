<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="script.js" charset="utf-8"></script>
<link rel="stylesheet" href="./css/notice.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div class="total">
		<header class="header">
			<div class="header_logo">
				<h1>
					<a href="main.jsp"> 
					<img src="./images/logo11.png" alt="home"
						width="200" height="100" /></a>
				</h1>
			</div>
			<div class="header_gnb">
				<ul>
					<li><a href="main.jsp">HOME</a></li>
					<li><a href="board_list.jsp">구인게시판</a></li>
					<li><a href="shop.jsp">포인트상점</a></li>
					<li><a href="mypage_import.jsp">마이페이지</a></li>
					<li><a href="login.jsp">LOGIN</a></li>
				</ul>
			</div>
		</header>
		<form action="" method="POST">
			<div class = "section">
			<div class="detail">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title">
						<p></p>
						<br>
						카테고리 &nbsp;&nbsp;&nbsp;<select>
							<option value="job">이벤트</option>
							<option value="job">필독 공지</option>
							<option value="job">이용자 제제</option>
						</select>
						<p></p>
						<br>
					</h3>
					
				</ul>
					<ul>
					<h3>상세 내용</h3>
					<textarea cols="60" rows="10"></textarea>
					</ul>
			<div class="btn">
				<button type="submit" onclick="">작성하기</button>
				<span><button type="reset">다시쓰기</button></span>
			</div>
			</div>
			</div>
		</form>
		<div class="clear"></div>
		<div class="footer">
			<div class="f_img">
				<img src="images/footer.png" id="f_img">
			</div>
			<div class="f_info">
				Green.co <br> Addr. 부산시 가나다동 가나다라구 2로 1234 <br> 010 - 123
				-1234 <br> COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
			</div>
		</div>
	</div>
</body>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














