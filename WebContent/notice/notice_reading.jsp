<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/notice.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
     <%@ include file="/header.jsp" %>
      <form action="" method="POST">
        <h1>공지 사항</h1>
        <div class="section">
            <ul>
                <div class="title">
                    <h3>공지 제목</h3>
                </div>
            </ul>
          <ul>
            <div class="content">
              <h3>상세 설명</h3>
              <br />
              <div style="width: auto; height: 400px">공지 ....</div>
            </div>
          </ul>
        </div>
        <div class = "button">
          <span><button type="button" value = "뒤로가기" onclick="location.href='notice_list.jsp'">뒤로가기</button></span>
        </div>
      </form>
      <div class="space"></div>
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>