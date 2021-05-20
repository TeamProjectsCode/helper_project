<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("UTF-8"); %>


<%
      String id = request.getParameter("id");
      UserDAO manager = UserDAO.getInstance();
 
      int check = manager.registerCheck(id);
%>
<body>
<%
      if(check == 1)
      {
%>
<table width = "270" border = "0" cellspacing = "0" cellpadding = "5">
<tr >
      <td height = "39"><%= id %>이미 사용중인 아이디입니다.</td>
</tr>
</table>
<form name = "checkForm" method = "post" action = "confirmId.jsp">
<table width = "270" border = "0" cellspacing = "0" cellpadding = "5">
<tr>
      <td align = "center">
            다른 아이디를 사용하세요.<p>
            <input type = "text" size = "10" maxlength = "12" name = "id">
            <input type = "submit" value = "ID중복확인">
      </td>
</tr>
</table>
</form>
<%
      }
      else
      {
%>
<table width = "270" border = "0" cellspacing = "0" cellpadding = "5">
<tr>
      <td align = "center"><p>
            입력하신 <%= id %>는 사용하실 수 있는 ID입니다.
            <input type = "button" value = "닫기" onclick = "window.close()">
      </td>
</tr>
</table>
<%
      }
%>
</body>
</html>
<script language = "javascript">
