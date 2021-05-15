<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./css/header.css">
	<header class="header">
		<div class="header_logo">
			<h1>
				<a href="main.jsp">
					<img src="/helper_project/images/logo11.png"
						alt="home"
						width="200"
						height="100"/>
				</a>
			</h1>
		</div>
		<div class="header_gnb">
			<ul class = "nav">
					<li><a href="/helper_project/main.jsp">HOME</a></li>
					<li><a href="/helper_project/job_board/job_main.jsp">구인게시판</a></li>
					<li><a href="/helper_project/shop/shop.jsp">포인트상점</a></li>
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
</html>