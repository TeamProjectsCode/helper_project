<%@page import="java.sql.Timestamp"%>
<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "user" class = "db.userBeans.UserBean">
<jsp:setProperty name = "user" property = "*" />
</jsp:useBean>

<%
      user.setCreated_at(new Timestamp(System.currentTimeMillis()));
      UserDAO manager = UserDAO.getInstance();
      manager.register(user);
 
      response.sendRedirect("login.jsp");
%>
