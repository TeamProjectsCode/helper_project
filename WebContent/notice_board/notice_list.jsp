<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <%
			String admin_id = request.getParameter("id");
			String admin_pass = request.getParameter("pass");
			boolean b = admin.admin_login(admin_id, admin_pass);
			
			if(b){
				session.setAttribute("adminOk", admin_id);
			%>
                <a href = "notice_write.jsp"><h4>글쓰기</h4></a>
        		<%
			}
                     %>
              <h3>검색 <input type= "text" value=""> &nbsp; &nbsp;</h3>
        </div>
            <div class="list" style="overflow: auto; height: 400px">
                <table>
                    <tr>
                        <td style="width: 500px;"><a href="#">[필독사항] 홈페이지 업데이트 예정</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                      
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">[필독사항] 욕설 유저 가만 안둠</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                        
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">[필독사항] 사기 먹튀 유저는 경찰서에 갈 수 있습니다.</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                 
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">[이벤트] 추첨을 통해 ...</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                    <tr>
                        <td><a href="#">제목</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                    </tr>
                    <tr>
                        <td><a href="#">제목</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                    </tr>
                    <tr>
                        <td><a href="#">제목</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                    </tr>
                    <tr>
                        <td><a href="#">제목</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                    </tr>
                    <tr>
                        <td><a href="#">제목</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                    </tr>          
                    <tr>
                        <td><a href="#">제목</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                    </tr>          
                    <tr>
                        <td><a href="#">제목</a></td>
                        <td>21/04/27</td>
                        <td>조회수 : 00 </td>
                    </tr>          
                </table>
            </div>
            <div class="button">
           <!--  <% if(session.getAttribute("sessionId").equals("admin")){ %>
				<button type="button" onclick="notice_write.jsp">글쓰기</button>
			<% } %> 
			-->
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