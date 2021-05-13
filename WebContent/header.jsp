<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="../css/header.css">
	<header class="header">
		<div class="header_logo">
			<h1>
				<a href="main.jsp">
					<img src="../images/logo11.png"
						alt="home"
						width="200"
						height="100"/>
				</a>
			</h1>
		</div>
		<div class="header_gnb">
			<ul class = "nav">
					<li><a href="/project0408_workSpace/main.jsp">HOME</a></li>
					<li><a href="/project0408_workSpace/job_board/main.jsp">구인게시판</a></li>
					<li><a href="/project0408_workSpace/shop/shop.jsp">포인트상점</a></li>
					<li><%
        				if(session.getAttribute("id")==null){
        				%>
               			 <a href = "/project0408_workSpace/login_check.jsp">마이페이지</a>
        				<%
						}else{
        				%>
        				 <a href = "/project0408_workSpace/mypage/mypage_import.jsp">마이페이지</a>
        				<%
						}        		
        				%>
        				</li>
					<%
					if(session.getAttribute("id")!=null){
						String id = (String)session.getAttribute("id");
						%>
						<li><a href="/project0408_workSpace/logout.jsp">LOGOUT</a></li>
						<%
						}else{
						%>
						<li><a href="/project0408_workSpace/login.jsp">LOGIN</a></li>
						<%
						}
						%>
				</ul>
		</div>
	</header>
</html>