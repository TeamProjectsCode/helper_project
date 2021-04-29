<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="review_reading.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
      <header class="header">
        <div class="header_logo">
          <h1>
            <a href="#"
              ><img
                src="../images/linkedin_banner_image_1.png"
                alt="home"
                width="200"
                height="100"
            /></a>
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
      <form action="" method="POST">
        <h1>후 기</h1>
        <div class="nav">
          <ul>
            <div class="title">
              <h3>친절한 초읍동 주민들 &nbsp;&nbsp;&nbsp;</h3>
              <div class="time">조회수 : 00</div>
            </div>
        </ul>
        <ul>
            <div class="list">
                <h3>지원 했던 공고 &nbsp; &nbsp;</h3>
                <a href="#">초읍동 선착순 1명 꿀알바</a>
                <div class="time">21/04/27</div>
            </div>
          </ul>
          <ul>
            <div class="content">
              <h3>후기</h3>
              <br />
              <div style="width: auto; height: 400px">정말 꿀이였다 </div>
            </div>
          </ul>
        </div>
        <div class="botton">
            <span><button type="button" value = "뒤로가기" onclick="location.href='review_list.jsp'">뒤로가기</button></span>
        </div>
      </form>
      <footer>
        <div id="footer_box">
          <div id="footer_logo">
            <img
              src="../images/facebook_profile_image.png"
              width="100"
              height="100"
            />
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
<script type="text/javascript" src="resources/js/notice-write.js"></script>
