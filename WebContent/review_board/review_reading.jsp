<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/review_reading.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
       <%@ include file="/header.jsp" %>
      <form action="" method="POST">
        <h1>후 기</h1>
        <div class="section">
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
              <div style="width: auto; height: 400px">양봉장</div>
            </div>
          </ul>
        	<div class="button">
            <button type="button" value = "뒤로가기" onclick="location.href='review_list.jsp'">뒤로가기</button>
       		</div>
        </div>
      </form>
       <div class ="space"></div>
       <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>
