<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="db.notifyBoardBeans.NoticeDTO"/>
<jsp:setProperty property="*" name="dto"/>
<% 
    	request.setCharacterEncoding("utf-8");
		NoticeDAO dao = NoticeDAO.getInstance();
		int x = dao.updateEdit(dto);
		String p_helper_path = request.getContextPath();
%>

<%
	if(x == 1){
		response.sendRedirect(p_helper_path+"/notice_board/notice_reading.jsp");
	}else{
%>
		<script language="JavaScript" >
			alert("수정에 실패했습니다");
			history.go(-1);
		</script>
<% 
	}
%>

