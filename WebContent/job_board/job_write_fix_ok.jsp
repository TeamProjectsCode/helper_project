<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="db.JobPostDAO"%>
<%
request.setCharacterEncoding("UTF-8");
String p_helper_path = request.getContextPath();
%>
<jsp:useBean id="jp" class="db.jobBoardBeans.JobPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="jp"/>
<%
String job_post_no = request.getParameter("no");

/* System.out.println(jp.getJob_title());
System.out.println(jp.getJob_time_start());
System.out.println(jp.getJob_time_end());
System.out.println(jp.getCategory());
System.out.println("number: "+jp.getJob_num_of_people());
System.out.println(jp.getJob_location_first_name());
System.out.println(jp.getJob_location_detail());
System.out.println(jp.getJob_pay());
System.out.println(jp.getJob_detail()); */

JobPostDAO jpDAO = JobPostDAO.getInstance();
if(jpDAO.modifyPost(jp, job_post_no)){
	out.println("<script>alert('수정하였습니다.');</script>");	
}
%>
<script>
document.location.href="<%=p_helper_path%>/job_board/job_detail.jsp?no=<%=job_post_no%>";
</script>