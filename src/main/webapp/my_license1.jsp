<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="my_license1.css" />
<title>경력사항</title>
</head>
<body>
<header class="header">
    <div class="header_logo">
        <h1>
        <a href="#"><img src="../images/linkedin_banner_image_1.png" alt="home" width="200" height="100"></a>
        
          </h1>      
    </div>
    <div class="header_gnb">
        <ul>
            <li><a href="#">홈</a></li>
            <li><a href="#">구인게시판</a></li>
            <li><a href="#">포인트상점</a></li>
            <li><a href="#">마이페이지</a></li>
            <li><a href="#">로그인</a></li>
        </ul>
    </div>
</header>
<section>
	<div class="box">
		<div class="leftbox">
			<h3>My page</h3>
			<button type="button" onclick="location.href='MyPage_pix_impor.jsp'">회원정보 수정</button>
				<br>
				<button type="button" onclick="location.href='MyPage_MyWrite.jsp'">내가 쓴글</button>
				<br>
				<button type="button" onclick="location.href='#'">지원현황</button>
				<br>
				<button type="button" onclick="location.href='#'">스크랩</button>
				<br>
				<button type="button" onclick="location.href='Mypage_license.jsp'">자격증 및 경력</button>
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
					    <input type = "submit" value ="완료">
		</div>
	</div>
</section>


<div class="clear"></div>
    <footer>
        <div id="footer_box">
            <div id="footer_logo">
                <img src="../images/facebook_profile_image.png" width="100" height="100">
            </div>
            <div id="address">
                <ul>
                    <li>부산시 가나구 다라동 1234 우:123-1234</li>
                    <li>TEL:123-123-1234 Email:abcc@domain.com</li>
                    <li>© 2021 THEHELPER. All rights reserved.</li>
                </ul>
            </div>
        </div>
</footer>
</body>
</html>