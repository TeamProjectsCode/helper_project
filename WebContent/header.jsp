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
					<li><a href="main.jsp">HOME</a></li>
					<li><a href="board_list.jsp">구인게시판</a></li>
					<li><a href="shop.jsp">포인트상점</a></li>
					<li><%
        				if(session.getAttribute("id")==null){
        				%>
               			 <a href = "login_check.jsp">마이페이지</a>
        				<%
						}else{
        				%>
        				 <a href = "mypage_import.jsp">마이페이지</a>
        				<%
						}        		
        				%>
        				</li>
					<%
					if(session.getAttribute("id")!=null){
						String id = (String)session.getAttribute("id");
						%>
						<li><a href="logout.jsp">LOGOUT</a></li>
						<%
						}else{
						%>
						<li><a href="login.jsp">LOGIN</a></li>
						<%
						}
						%>
					</script>
				</ul>
		</div>
	</header>
</html>