<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/mypage_license1.css" />
<title>경력사항</title>
</head>
<body>
<div class="total">
	<header class="header">
			<div class="header_logo">
				<h1>
					<a href="#"> <img src="images/logo11.png" alt="home"
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
          <form>
	<div class="section">
		<div class="leftbox">
			<h3>My page</h3>
				<button type="button" onclick="location.href='mypage_import.jsp'">회원정보 수정</button>
				<br>
				<button type="button" onclick="location.href='mypage_myWrite.jsp'">내가 쓴글</button>
				<br>
				<button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
				<br>
				<button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
				<br>
				<button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
				<br>
				<button type="button" onclick="location.href='mypage_license1.jsp'">자격증 및 경력</button>
		</div>
		<div class="mainbox" >
			<h1>자격증 및 경력</h1>
            <br>
            <br>
				<fieldset >
					<legend >보유 자격 및 기술</legend>
					<input type = "text" style = "width:300px; height:20px;">&ensp;
					활용능력  &ensp; 상<input type = "radio" name ="1">&ensp;
				         	    중<input type = "radio" name ="1">&ensp;
					                      하<input type = "radio" name ="1">
				</fieldset>
                <br>
				<fieldset>
					<legend>보유 자격 및 기술</legend>
					<input type = "text" style = "width:300px; height:20px;">&ensp;
					활용능력  &ensp; 상<input type = "radio" name ="1">&ensp;
				         	    중<input type = "radio" name ="2">&ensp;
					                      하<input type = "radio" name ="2">
				</fieldset>
                <br>
				<fieldset>
					<legend >보유 자격 및 기술</legend>
					<input type = "text" style = "width:300px; height:20px; color: white;">&ensp;
					활용능력  &ensp; 상<input type = "radio" name ="1">&ensp;
				         	    중<input type = "radio" name ="3">&ensp;
					                      하<input type = "radio" name ="3">
				</fieldset>
                <br>
				<fieldset>
					<legend >경력 사항</legend>
					<input type = "text" style = "width:550px; height:200px;" placeholder="경력사항을 자유롭게 서술하세요.">
				</fieldset>
                <br>
				<div class="button">
				<button type="submit" onclick="">완 료</button>
				<span><button type="reset">다시쓰기</button></span>
				</div>
		</div>
	</div>
          </form>
<div class="clear"></div>
    <div class="footer">
            <div class="f_img"><img src="images/footer.png" id="f_img"></div>
            <div>
              Green.co <br>
              Addr. 부산시 가나다동 가나다라구 2로 1234 <br>
              010 - 123 -1234 <br>
              COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
            </div>
          </div>
       </div>
</body>
</html>