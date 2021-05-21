<%@page import="db.ReviewBoardDAO"%>
<%@page import="db.ReviewPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="rb" class="db.reviewBeans.ReviewPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>
<%
	request.setCharacterEncoding("utf-8");
	String user_no = (String)session.getAttribute("no");
	String p_helper_path = request.getContextPath();
	
	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
	
	rb.setCreator(Integer.valueOf(user_no));
	
	String review_no = request.getParameter("rno");
	System.out.println(user_no + review_no);
	rbDAO.updateReview(review_no, rb);
	
%>
<script>
document.location.href="<%=p_helper_path%>/review_board/review_reading.jsp?rno=<%= review_no %>";
</script>
