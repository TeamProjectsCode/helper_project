<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.JobPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
  <%@ include file="/header.jsp" %>
    <link rel="stylesheet" href="<%=p_helper_path %>/css/post_detail.css" type="text/css" />
    <script type="text/javascript" src="script.js" charset="utf-8"></script>

    <%
    String job_post_no = request.getParameter("no");
    int user_no = Integer.valueOf((String)session.getAttribute("no"));
    JobPostDAO  jpDAO = JobPostDAO.getInstance();
    JobPostBean jp = jpDAO.getPost(job_post_no);
    %>
    <title><%=jp.getJob_title() %></title>
  </head>
  <body>
    <div class="main_content">
      <!-- form 태그 필요 없을 듯? 있나..? -->
      <form action="job_write_fix.jsp?no=<%=job_post_no %>" method="POST">
        <div class="section">
          <ul>
              <div class="title">
                  <h3><%=jp.getJob_title() %></h3>
              </div>
          </ul>
          <ul>
            <div class="local">
              <img src="<%=p_helper_path %>/images/img.jpg" style="width: 100px ;height: 100px">
              <h3><%=jp.getCreator_nick() %></h3>
              <h5>신뢰등급 : <%=jp.getCreator_grade() %></h5><br>
              <h3>장소 : <%=jp.getLocation() %></h3><br>
              <h3>시간 : <%=jp.getJob_day() %> <%=jp.getTime() %></h3><br>
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
          <%   
          if(user_no == jp.getCreator_no()){
          %>
          <button type="submit" >수정하기</button>
          <button type="button" onclick="removeCheck()">삭제하기</button>
          <%
          } else {
          %>
          	<button type="button" onclick="">신청하기</button>
          <%
          }
          %>

          <script>
          function removeCheck(){
        	  if(confirm("정말 삭제하겠습니까?") == true){
        		  document.location.href="<%=p_helper_path%>/job_board/job_delete.jsp?no=<%=job_post_no%>"
        	  }
          }
          </script>
          <!-- 수정하기 버튼도 여기 만들기 세션이용해서 구분하면 됨 -->
        </div>
      </form>
    </div>
  </body>
  <%@ include file="/footer.jsp" %>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>