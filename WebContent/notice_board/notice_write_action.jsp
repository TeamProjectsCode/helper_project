<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//인코딩
	request.setCharacterEncoding("utf-8");
%>
<!-- bean객체 생성 -->
<jsp:useBean id="bean" class="db.notifyBoardBeans.NotifyBean"/>
<!-- bean객체에 데이터삽입 -->
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="notifyDAO" class="db.notifyBoardBeans.NotifyDAO"/>

<%

	
	//게시물을 삽입할 번호 구하기
	int insert_num = notifyDAO.getCurrentNum()+1;
	bean.setNo(insert_num);

	//데이터 삽입 작업
	notifyDAO.insertData(bean);
	
	//데이터 삽입 후 목록으로 돌아가기
	response.sendRedirect("notice_list.jsp");

%>