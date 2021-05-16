<%@page import="db.reviewBeans.ReviewPostBean"%>
<%@page import="db.ReviewPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ReviewPostDAO manager = ReviewPostDAO.getInstance();
	//ReviewPostBean pb = manager.ge
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/review_writer.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
    <%@ include file="/header.jsp" %>
      <form action="review_writer_ok.jsp" method="post">
        <h1>후기작성</h1>
        <div class="section">
          <ul>
            <div class="title">
              <h3>제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title"/></h3>
            </div>
          </ul>
          <ul>
            <div class="content">
              <h4>후기 작성</h4>
              <textarea
                 style="overflow: auto; height: 400px"
                cols="70"
                rows="auto" name="review"></textarea>
            </div>
          </ul>
          <div class="botton">
            <button type="submit" onclick="">글 올리기</button>
            <button type="reset">다시쓰기</button>
            <span><button type="button" value = "뒤로가기" onclick="location.href='review_list.jsp'">뒤로가기</button></span>
          </div>
        </div>
      </form>
      <div class ="clear"></div>
    <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>

