<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="review_writer.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
     <header class="header">
            <div class="header_logo">
              <h1>
                <a href="#">
                <img
                    src="../images/logo11.png"
                    alt="home"
                    width="200"
                    height="100"/></a>
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
        <h1>후기작성</h1>
        <div class="nav">
          <ul>
            <div class="title">
              <h3>제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title" /></h3>
            </div>
          </ul>
          <ul>
            <div class="content">
              <h4>후기 작성</h4>
              <textarea
                 style="overflow: auto; height: 400px"
                cols="70"
                rows="auto"
              ></textarea>
            </div>
          </ul>
          <div class="botton">
            <button type="submit" onclick="">글 올리기</button>
            <button type="reset">다시쓰기</button>
            <span><button type="button" value = "뒤로가기" onclick="location.href='review_list.jsp'">뒤로가기</button></span>
          </div>
        </div>
      </form>
      <div class="footer">
            <div class="f_img"><img src="../images/footer.png" id="f_img"></div>
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
<script type="text/javascript" src="resources/js/notice-write.js"></script>

