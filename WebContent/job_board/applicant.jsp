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
	<table>
		<tr>
			<th><h3>������</h3></th>
			<th><h3>�г���</h3></th>
			<th><h3>�ſ���</h3></th>
		</tr>
		<tr>
			<td><h3><%=Integer.valueOf(request.getParameter("no"))%></h3></td>
			<td><h3>�г���</h3></td>
			<td><h3>�ſ���</h3></td>
			<td><button id = "ok">����</button></td>
			<td><button id = "x">����</button></td>
		</tr>
		<tr>
			<td><h3>������</h3></td>
			<td><h3>�г���</h3></td>
			<td><h3>�ſ���</h3></td>
			<td><button id = "ok">����</button></td>
			<td><button id = "x">����</button></td>
		</tr>
	</table>
</body>
</html>