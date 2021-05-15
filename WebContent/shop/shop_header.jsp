<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- 이미지크기 374*374 -->
<link rel="stylesheet" type="text/css" href="./css/shop_header.css">
</head>
<body>
		<header class="header">
			<div class="header_logo">
				<h1>
					<a href="main.jsp"> <img src="../images/logo11.png" alt="home"
						width="200" height="100" /></a>
				</h1>
			</div>
			<div class="header_gnb">
				<ul>
					<li><a href="../main.jsp">HOME</a></li>
					<li><a href="../job_board/board_list.jsp">구인게시판</a></li>
					<li><a href="shop.jsp">포인트상점</a></li>
						<li><%
        				if(session.getAttribute("id")==null){
        				%>
               			 <a href = "/helper_project/member/login_check.jsp">마이페이지</a>
        				<%
						}else{
        				%>
        				 <a href = "/helper_project/mypage/mypage_import.jsp">마이페이지</a>
        				<%
						}        		
        				%>
        				</li>
					<%
					if(session.getAttribute("id")!=null){
						String id = (String)session.getAttribute("id");
						%>
						<li><a href="/helper_project/member/logout.jsp">LOGOUT</a></li>
						<%
						}else{
						%>
						<li><a href="/helper_project/member/login.jsp">LOGIN</a></li>
						<%
						}
						%>
				</ul>
			</div>
			</header>