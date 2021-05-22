<%@page import="db.ReviewBoardDAO"%>
<%@page import="db.ReviewPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String user_no = (String)session.getAttribute("no");
	String p_helper_path = request.getContextPath();
	String title = request.getParameter("title");
	String detail = request.getParameter("detail");
%>
<jsp:useBean id="rb" class="db.reviewBeans.ReviewPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>
<%
	rb.setCreator(Integer.valueOf(user_no));
	rb.setReview_titile(title);
	rb.setReview_detail(detail);
	int review_post_no = rb.getNo();
	ReviewPostDAO rpDAO = ReviewPostDAO.getInstance();
	ReviewBoardDAO rbDAO = new ReviewBoardDAO();
	
	if(rbDAO.updateReview(user_no)){
		out.println("<script>alert('수정성공');<script>");
	}
%>
<script>
document.location.href="<%=p_helper_path%>/review_board/review_reading.jsp?no=<%=review_post_no%>";
</script>
