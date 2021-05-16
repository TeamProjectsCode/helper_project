<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="bean" class="db.notifyBoardBeans.NotifyBean"/>
<jsp:useBean id="notifyDAO" class="db.notifyBoardBeans.NotifyDAO"/>
<jsp:useBean id="admin" class="db.UserDAO"/>
<c:set var="content" value = "${notifyDAO.getData(param.no)}"/>
<c:set var="readcnt" value="${notifyDAO.updateNotify_hits(param.no)}"/>

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
        <h1>${content.category}</h1>
        <div class="section">
            <ul>
                <div class="title">
                    <h3>${content.notify_title}</h3>
                </div>
            </ul>
          <ul>
            <div class="content">
              <h3>${content.creator}</h3>
              <h3>${content.created_at}</h3>
              <h3>${content.notify_hits}</h3>
              <br />
              <div style="width: auto; height: 400px">${content.notify_detail}</div>
            </div>
          </ul>
        </div>
        <div class = "button">
          <span><button type="button" value = "뒤로가기" onclick="location.href='notice_list.jsp'">뒤로가기</button></span>
            <%
			String admin_id = request.getParameter("id");
			String admin_pass = request.getParameter("pass");
			boolean b = admin.admin_login(admin_id, admin_pass);
			
			if(b){
				session.setAttribute("adminOk", admin_id);
			%>
                <a href = "notice_modify_form.jsp?no=${content.no}"><h4>수정</h4></a>
                <a href = "notice_delete_form.jsp?no=${content.no}"><h4>삭제</h4></a>
        		<%
			}
                     %>
        </div>
      </form>
      <div class="space"></div>
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>