<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
    <link rel="stylesheet" type="text/css" href="login.css" />
    <title>Document</title>
</head>
<body>
        <div class="total">
            <header class="header">
                <div class="header_logo">
                    <h1>
                        <a href="#"> <img src="../images/logo11.png" alt="home"
                            width="200" height="100" /></a>
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
                        <button type="button" class="btn">로그인</button>
                        <button type="button" class="btn">계정이 없으신가요? 가입하기</button>
    
                        <div class="bottomText">
                            <a href="#">비밀번호를 잊으셨나요?</a>
                        </div>
                    </form>
                </div>
            </section>
            <div class="clear"></div>
            <div class="footer">
                <div class="f_img">
                    <img src="../images/footer.png" id="f_img"></div>
                   <div class="f_info"> Green.co <br> Addr. 부산시 가나다동 가나다라구 2로 1234 <br> 010 - 123
                    -1234 <br> COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.</div>
            </div>
        </div>
    </body>
</html>
