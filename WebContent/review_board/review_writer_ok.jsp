<%@page import="myUtil.HanConv"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.reviewBeans.ReviewPostBean" %>
<%@ page import="db.ReviewPostDAO" %>
<jsp:useBean id="rb" class="db.reviewBeans.ReviewPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>
<%
	ReviewPostDAO manager = ReviewPostDAO.getInstance();

	rb.setReview_titile(HanConv.toKor(request.getParameter("title")));
	rb.setReview_detail(HanConv.toKor(request.getParameter("review")));
	String titleOk = rb.getReview_titile();
	String detailOk = rb.getReview_detail();
	System.out.println(titleOk + "\n" + detailOk);
	
	int insertReview = manager.insertReview(titleOk,detailOk);
	
	if(insertReview == -1){
%>
	<script>
		alert("내용을 입력해주세요.");
	</script>
<%
	}else{
%>
	<script>
		alert("리뷰가 등록되었습니다.");
		document.location.href="review_list.jsp"
	</script>	
<%
	}
%>