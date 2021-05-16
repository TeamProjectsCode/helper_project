<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <jsp:useBean id="admin" class="db.UserDAO"/>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/notice.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
 <body>
    <div class="total">
      <%@ include file="/header.jsp" %>
      <form>
        <h1>공지 사항</h1>
        <div class="section">
        <div class = "serch">
              <h3>검색 <input type= "text" value=""> &nbsp; &nbsp;</h3>
        </div>
            <div class="list" style="overflow: auto; height: 400px">
                <table>
                    <tr>
                        <th>글번호</th>
                        <th>카테고리</th>
                        <th style="width: 500px;"><a href="#">제목</a></th>
                        <th>게시일</th>
                        <th>작성자</th>
                        <th>조회수 </th>
                    
                    <!-- list 변수에 목록 데이터를 삽입 -->
					<c:set var="list" value="${NotifyDAO.getDataAll()}"/>
					
					<!-- list 변수로부터 한줄한줄 출력 -->
					<c:forEach var="data" items="${list }">
						<tr>
							<td>${data.no}</td>
							<td>${data.category}</td>
							<td><a href="notice_reading.jsp?no=${data.no}">${data.notify_title }</a></td>
							<td>${data.created_at}</td>
							<td>${data.creator}</td>
							<td>${notify_hits}</td>
						</tr>
					</c:forEach>
					</tr>
                </table>
            </div>
            <div class="button">
             <%
			String admin_id = request.getParameter("id");
			String admin_pass = request.getParameter("pass");
			boolean b = admin.admin_login(admin_id, admin_pass);
			
			if(b){
				session.setAttribute("adminOk", admin_id);
			%>
			<button type="submit" onclick="notice_write.jsp">글쓰기</button>
			
        		<%
			}
                     %>
				<button type="submit" onclick="">뒤로가기</button>
			</div>
        </div>
      </form>
      <div class ="space"></div>
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>