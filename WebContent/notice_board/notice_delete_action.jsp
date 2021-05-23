<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="db.notifyBoardBeans.NoticeDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	request.setCharacterEncoding("UTF-8");
	String user_no = (String)request.getAttribute("no");
	String p_helper_path = request.getContextPath();
%>
<%
	dto.setCreator_no(Integer.valueOf(user_no));
	NoticeDAO dao = NoticeDAO.getInstance();
	int x = dao.delete(dto);
	if(x == 1){
		response.sendRedirect(p_helper_path+"/review_board/review_reading.jsp");
	}else{
%>
		<script language="JavaScript" >
			alert("삭제에 실패하였습니다.");
			history.go(-1);
		</script>
<%
		
	}
	
%>
 
    