<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%--  <%
        String user_no = (String)session.getAttribute("no");
        if(user_no == null){
        %>
        <script>
            alert("로그인 먼저 하세요.");
            location.href="/helper_project/member/login.jsp";
        </script>
        <%
        }
        %> --%>
<%
	
	int no = Integer.parseInt(request.getParameter("no"));
	NoticeDAO dao = NoticeDAO.getInstance();
	NoticeDTO dto = dao.selectView(no, false);
	
	System.out.println(no);
		
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/notice.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
     <%@ include file="/header.jsp" %>
     <center>
		<h1>글 내 용 </h1>
		<table cellspacing="0" width="600" border="1">
			<tr align="center">
				<td width="100">조회수</td>
				<td width="200"><%= dto.getHits() %> </td>
			</tr>
			<tr align="center">
				<%-- <td width="100">작성자</td>
				<td width="200"><%= creator_no %> </td> --%>
				<td width="100">작성일</td>
				<td width="200"><%= dto.getCreated_at() %> </td>
			</tr>
			<tr >
				<td width="100" align="center" >글제목</td>
				<td colspan="3"><%= dto.getTitle() %> </td>
			</tr>
			<tr>
				<td width="100" align="center" >글내용</td>
				<td colspan="3"><%= dto.getDetail() %> </td>
			</tr>
			<tr>
				<td colspan="4" align="right" >
            <%-- <%
			String admin_id = request.getParameter("id");
			String admin_pass = request.getParameter("pass");
			boolean b = admin.admin_login(admin_id, admin_pass);
			
			if(b){
				session.setAttribute("adminOk", admin_id);
			%> --%>
               
					<input type="button" value="글수정" onclick="location.href='notice_modify_form.jsp'" >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="글삭제" onclick="location.href='notice_delete_form.jsp'" >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="글목록" onclick="location.href='notice_list.jsp'" >
				</td>
			</tr>
		</table>
	</center>
     
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>