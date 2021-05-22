<%@page import="java.sql.Timestamp"%>
<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
        String user_no = (String)session.getAttribute("no");
        if(user_no == null){
        %>
         <script>
            alert("로그인 먼저 하세요.");
            location.href="/helper_project/member/login.jsp";
        </script> 
        <%
        }
%>
<%
	NoticeDAO dao = NoticeDAO.getInstance();
	ArrayList<NoticeDTO>list = dao.getDataAll() ;
	int i,no,creator_no,hits;
	String title,detail,category;
	Timestamp created_at;
%>
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
      <form action = "notice_write.jsp" method = "post">
        <h1>공지 사항</h1>
        <div class="section">
        <div class = "serch">
              <h3>검색 <input type= "text" value=""> &nbsp; &nbsp;</h3>
        </div>
            <div class="list" style="overflow: auto; height: 400px">
                <table>
                    <tr>
                       
                        <th>카테고리</th>
                        <th style="width: 500px;"><a href="#">제목</a></th>
                        <th>게시일</th>
                        <th>작성자</th>
                        <th>조회수 </th>
                    </tr>
           <%
				for(i=0; i<list.size(); i++){
					NoticeDTO dto = list.get(i);
					no = dto.getNo();
					category =dto.getCategory();
					title = dto.getTitle();
					creator_no = dto.getCreator_no();
					created_at = dto.getCreated_at();
					hits = dto.getHits();
			%>
                    
                    
						<tr>
							
							<td><%= list.get(i).getCategory() %></td>
							<td><a href="notice_reading.jsp?no=<%= no%>"><%= list.get(i).getTitle()%></a></td>
							<td><%=list.get(i).getCreated_at()%></td>
							<td><%=list.get(i).getCreator_no()%></td>
							<td><%=list.get(i).getHits()%></td>
						</tr>
					<%
					System.out.println(no);
				}
					%>
                </table>
            </div>
			<%
			String id = (String)session.getAttribute("id");
			boolean check = id.startsWith("ADMIN_");
				if(check==true){
	            %>
            <div class="button">
	            <button type="submit">글쓰기</button>
			</div>
	            <%
			}
			%>
            <%--  <%
			String admin_id = request.getParameter("id");
			String admin_pass = request.getParameter("pass");
			boolean b = admin.admin_login(admin_id, admin_pass);
			
			if(b){
				session.setAttribute("adminOk", admin_id);
			%> --%>
			
			<%-- 
        		<%
			}
                     %>
				 --%>
        </div>
      </form>
      <div class ="space"></div>
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>