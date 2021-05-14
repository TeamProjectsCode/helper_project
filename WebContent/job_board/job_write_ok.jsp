<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.JobPostDAO"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="jp" class="db.jobBoardBeans.JobPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="jp"/>
<!-- 
String title = request.getParameter("title");
String fromDate = request.getParameter("fromDate");
String toDate = request.getParameter("toDate");
String category = request.getParameter("category");
String number = request.getParameter("people_of_number");
String location_first_name = request.getParameter("location_first_name");
String location_detail = request.getParameter("location_detail");
String pay = request.getParameter("pay");
String detail = request.getParameter("detail");
 -->
/* String no = session.getAttribute("no").toString(); */
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
jp.setJob_time_end("2021-05-09");

/* 
JobPostBean jp = new JobPostBean(); */
/* jp.setCreator_no(creator_no); */

/* jp.setJob_titile(title);
jp.setJob_time_start(fromDate);

jp.setCategory(Integer.valueOf(number));
jp.setJob_location_first_name(location_first_name);
jp.setJob_location_detail(location_detail);

jp.setJob_pay(Integer.valueOf(pay));
jp.setJob_detail(detail); */

JobPostDAO jpDAO = JobPostDAO.getInstance();
if(jpDAO.addPost(jp)){
	response.sendRedirect("/helper_project/job_board/job_main.jsp");
}
%>