<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
			<ul>
				<li><a href="main.jsp">HOME</a></li>
				<li><a href="board_list.jsp">구인게시판</a></li>
				<li><a href="shop.jsp">포인트상점</a></li>
				<li><a href="mypage_import.jsp">마이페이지</a></li>
				<%
				if(session.getAttribute("id")!=null){
				%>
				<li><a href="login.jsp" onclick = "logout()">LOGOUT</a></li>
				<script>
				function logout() {
					alert("로그 아웃 되었습니다.");
				}
				<%
				session.invalidate(); //세션 삭제
				%>
				</script>
				<%
				}else{
				%>
				<li><a href="login.jsp">LOGIN</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</header>
</html>