<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.JobPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/post_detail.css" type="text/css" />
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
    <%
    String job_post_no = request.getParameter("no");
    JobPostDAO  jpDAO = JobPostDAO.getInstance();
    JobPostBean jp = jpDAO.getPost(job_post_no);
    %>
    <title><%=jp.getJob_titile() %></title>
  </head>
  <%@ include file="/header.jsp" %>
  <body>
    <div class="main_content">
      <!-- form 태그 필요 없을 듯? 있나..? -->
      <form action="" method="POST">
        <div class="section">
          <ul>
              <div class="title">
                  <h3><%=jp.getJob_titile() %></h3>
              </div>
          </ul>
          <ul>
            <div class="local">
              <img src="../images/img.jpg" style="width: 100px ;height: 100px">
              <h3><%=jp.getCreator_nick() %></h3>
              <h5>신뢰등급 : <%=jp.getCreator_grade() %></h5><br>
              <h3>장소 : <%=jp.getJob_location() %></h3><br>
              <h3>시간 : <%=jp.getJob_day() %> <%=jp.getJob_time() %></h3><br>
              <h3>인원수 : <%=jp.getJob_num_of_people() %></h3><br>
              <h3>PAY : <%=jp.getJob_pay() %></h3>
            </div>
          </ul>
          <ul>
            <div class="content">
              <h3>상세 설명</h3>
              <br />
              <div style="width: auto; height: 400px"><%=jp.getJob_detail() %></div>
            </div>
          </ul>
        </div>
        <div class="botton">
          <button type="submit" onclick="">신청하기</button>
          <!-- 수정하기 버튼도 여기 만들기 세션이용해서 구분하면 됨 -->
        </div>
      </form>
    </div>
  </body>
  <%@ include file="/footer.jsp" %>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>