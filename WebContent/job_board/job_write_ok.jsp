<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.JobPostDAO"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="jp" class="db.jobBoardBeans.JobPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="jp"/>

<!-- String no = session.getAttribute("no").toString(); -->
<%
/* System.out.println("-----------------------------------------");
System.out.println(no); 
System.out.println("title: "+jp.getJob_title());
System.out.println("time start: "+jp.getJob_time_start());
System.out.println("time end: "+jp.getJob_time_end());
System.out.println("category: "+jp.getCategory());
System.out.println("number: "+jp.getJob_num_of_people());
System.out.println("location name: "+jp.getJob_location_first_name());
System.out.println("location detail: "+jp.getJob_location_detail());
System.out.println("pay: "+jp.getJob_pay());
System.out.println("detail: "+jp.getJob_detail()); */

jp.setCreator_no(1);

JobPostDAO jpDAO = JobPostDAO.getInstance();
if(jpDAO.addPost(jp)){
	response.sendRedirect("/helper_project/job_board/job_main.jsp");
}
%>