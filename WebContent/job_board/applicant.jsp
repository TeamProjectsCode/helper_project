<%@page import="db.userBeans.UserBean"%>
<%@page import="db.UserDAO"%>
<%@page import="db.volunteerBeans.VolunteerBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.VolunteerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style>
		table tr td h3{padding:5px 10px;}
		
		button{
		width:50px;
    	background-color: blue;
    	border: none;
    	color:#fff;
    	text-align: center;
    	text-decoration: none;
    	font-size: 13px;
    		cursor: pointer;
		}
	</style>
</head>
<body>
<%
	VolunteerDAO vDAO = VolunteerDAO.getInstance();
    ArrayList<VolunteerBean> list = vDAO.getList(request.getParameter("post_no"));
    UserDAO uDAO = UserDAO.getInstance();

%>
	<table>
		<tr>
			<th><h3>지원자</h3></th>
			<th><h3>닉네임</h3></th>
			<th><h3>신용등급</h3></th>
		</tr>
			<%
			for(int i = 0 ; i < list.size() ; i++){
				UserBean user = uDAO.getN_user(list.get(i).getUser_no());
				%>
					<tr>
						<td><h3><%=user.getId()%></h3></td>
						<td><h3><%=user.getNick()%></h3></td>
						<td><h3><%=user.getGrade()%></h3></td>
						<td><button id = "ok">수락</button></td>
						<td><button id = "x">거절</button></td>
					</tr>
				<%
			}
			%>
	</table>
		<script>
			
		</script>
	
</body>
</html>