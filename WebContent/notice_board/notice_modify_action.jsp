<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="notifyDAO" class="db.notifyBoardBeans.NotifyDAO"/>
<jsp:useBean id="bean" class="db.notifyBoardBeans.NotifyBean"/>

<jsp:setProperty property="*" name="bean"/>

${notifyDAO.updateData(bean)}

<c:redirect url="notice_reading.jsp?no=${param.no}"/>
