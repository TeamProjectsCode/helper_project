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
			<th><h3>지원자</h3></th>
			<th><h3>닉네임</h3></th>
			<th><h3>신용등급</h3></th>
		</tr>
		<tr>
			<td><h3><%=Integer.valueOf(request.getParameter("no"))%></h3></td>
			<td><h3>닉네임</h3></td>
			<td><h3>신용등급</h3></td>
			<td><button id = "ok">수락</button></td>
			<td><button id = "x">거절</button></td>
		</tr>
		<tr>
			<td><h3>지원자</h3></td>
			<td><h3>닉네임</h3></td>
			<td><h3>신용등급</h3></td>
			<td><button id = "ok">수락</button></td>
			<td><button id = "x">거절</button></td>
		</tr>
	</table>
</body>
</html>