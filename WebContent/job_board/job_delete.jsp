<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="db.JobPostDAO"%>
<%
String job_post_no = request.getParameter("no");
JobPostDAO  jpDAO = JobPostDAO.getInstance();
if(jpDAO.deletePost(job_post_no)){
	out.println("<script>alert('삭제되었습니다.');</script>");
}
%>
<script>
document.location.href="/helper_project/job_board/job_main.jsp";
</script>