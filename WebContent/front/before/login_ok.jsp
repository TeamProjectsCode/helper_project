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
		alert("�α��ο� ���� �ϼ̽��ϴ�.");
		</script>
		<%
		session.setAttribute("id", id);
		response.sendRedirect("main.jsp");
		}
	else{
		%>
		<script>
		alert("���̵� Ȥ�� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	} 
	%>
	<%
%>
</body>
</html>