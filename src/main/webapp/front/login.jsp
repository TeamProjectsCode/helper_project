<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<link rel="stylesheet" type="text/css" href="login.css?after" />
	<title> Login Form</title>
</head>
  <body>
  <div class="total">
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
        <div>
            <form action="index.html" method="post" class="loginForm">
            <h1>Login</h1>
            <div class="idForm">
                <input type="text" class="id" placeholder="ID">
            </div>
            <div class="passForm">
                <input type="password" class="pw" placeholder="PW">
            </div>
            <button type="button" class="btn" >
                		로그인
            </button>
            <button type="button" class="btn" >
                	계정이 없으신가요? 가입하기
            </button>

            <div class="bottomText">
                	 <a href="#">비밀번호를 잊으셨나요?</a>
            </div>
            </form>
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
</div>
  </body>
</html>
