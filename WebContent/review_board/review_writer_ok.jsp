<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="db.reviewBeans.ReviewPostBean" %>
<%@ page import="db.ReviewPostDAO" %>
<jsp:useBean id="rb" class="db.reviewBeans.ReviewPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>
<%
	ReviewPostDAO manager = ReviewPostDAO.getInstance();
	rb.setReview_titile(request.getParameter("title"));
	rb.setReview_detail(request.getParameter("review"));
	String titleOk = rb.getReview_titile();
	String detailOk = rb.getReview_detail();
	System.out.println(titleOk + "\n" + detailOk);
	
	int insertReview = manager.insertReview(rb);
	
	if(insertReview == -1){
%>
	<script>
		alert("������ �Է����ּ���.");
	</script>
<%
	}else{
%>
	<script>
		alert("���䰡 ��ϵǾ����ϴ�.");
		document.location.href="review_list.jsp"
	</script>	
<%
	}
%>