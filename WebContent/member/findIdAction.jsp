<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="db.userBeans.UserBean" />
<jsp:useBean id="dao" class="db.UserDAO" />
<jsp:setProperty property="*" name="user" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String id = null;
		id = dao.findUserId(user);
		%>
	
		<%
			if (id == null) {
		%>
		<script type="text/javascript">
			alert("존재하지 않은 계정입니다");
			history.go(-1);
		</script>
		<%
			} else {
		%>
		<script type="text/javascript">
			alert("찾으시는 계정은 <%=id%>입니다.");
			location.href = "../id.jsp";
		</script>
		<%
			}
		%>
</body>
</html>