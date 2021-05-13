<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/board_reading.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
      <body>
        <div class="total">
        <%@ include file="/header.jsp" %>
          <form action="" method="POST">
            <h1>구인 게시판</h1>
            <div class="section">
                <ul>
                    <div class="title">
                        <h3>구인 제목</h3>
                    </div>
                </ul>
                <ul>
                    <div class="local">
                   <img src="../images/img.jpg" style="width: 100px ;height: 100px">
                    <h3>작성자</h3>
                    <h5>신뢰등급 : 1급</h5><br>
                    <h3>장소 : </h3><br>
                    <h3>시간 : </h3><br>
                    <h3>인원수 : </h3><br>
                    <h3>PAY : </h3>
                </div>
              </ul>
              <ul>
                <div class="content">
                  <h3>상세 설명</h3>
                  <br />
                  <div style="width: auto; height: 400px">간단한 일</div>
                </div>
              </ul>
            </div>
            <div class="botton">
              <button type="submit" onclick="">신청하기</button>
              <span><button type="submit" onclick="">뒤로 가기</button></span>
            </div>
          </form>
         <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>