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

/* System.out.println("-FIX----------------------------------------");
System.out.println("user no: "+jp.getCreator_no()); 
System.out.println("title: "+jp.getJob_title());
System.out.println("time day: "+jp.getJob_day());
System.out.println("time start: "+jp.getJob_time_start());
System.out.println("time end: "+jp.getJob_time_end());
System.out.println("category: "+jp.getCategory());
System.out.println("number: "+jp.getJob_num_of_people());
System.out.println("location name: "+jp.getJob_location_first_name());
System.out.println("location detail: "+jp.getJob_location_detail());
System.out.println("pay: "+jp.getJob_pay());
System.out.println("detail: "+jp.getJob_detail()); */

JobPostDAO jpDAO = JobPostDAO.getInstance();
if(jpDAO.modifyPost(jp, job_post_no)){
	out.println("<script>alert('수정하였습니다.');</script>");	
}
%>
<script>
document.location.href="<%=p_helper_path%>/job_board/job_detail.jsp?no=<%=job_post_no%>";
</script>