<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	 
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (id.equals("test") && pw.equals("1234")){
		%>
		<script>
		alert("로그인에 성공 하셨습니다.");
		</script>
		<%
		session.setAttribute("id", id);
		response.sendRedirect("main.jsp");
		}
	else{
		%>
		<script>
		alert("아이디 혹은 비밀번호가 틀렸습니다.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	} 
	%>
	<%
%>
</body>
</html>