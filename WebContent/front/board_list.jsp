<%@page import="dbBeans.JobPostBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbBeans.JobBoardDBList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="css/board_list.css" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
     <header class="header">
            <div class="header_logo">
              <h1>
                <a href="main.jsp">
                <img
                    src="images/logo11.png"
                    alt="home"
                    width="200"
                    height="100"/></a>
              </h1>
            </div>
            <div class="header_gnb">
            <ul>
					<li><a href="main.jsp">HOME</a></li>
					<li><a href="board_list.jsp">구인게시판</a></li>
					<li><a href="shop.jsp">포인트상점</a></li>
					<li><a href="mypage_import.jsp">마이페이지</a></li>
					<%
					if(session.getAttribute("id")!=null){
						%>
						<li><a href="login.jsp" onclick = "logout()">LOGOUT</a></li>
						<script>
						function logout() {
							alert("로그 아웃 되었습니다.");
						}
						<%
						session.invalidate(); //세션 삭제
						%>
						</script>
						<%
						}else{
						%>
						<li><a href="login.jsp">LOGIN</a></li>
						<%
						}
						%>
					
				</ul>
            </div>
          </header>
      <form action=""method="post">
        <h1>구인 게시판</h1>
        <div class="section">
        <div class="serch">
                <a href="board_write.jsp"><h4>글쓰기</h4></a>
          <ul>
              <h3>
             	 검색 <input type= "text" value=""> &nbsp; &nbsp;
                <select>
                  <option value="local">전체</option>
                  <option value="local">서울</option>
                  <option value="local">부산</option>
                  <option value="local">대구</option>
                  <option value="local">대전</option>
                </select>&nbsp; &nbsp;
        		<select>
                 <option value="">인기글</option>
                 <option value="">최신글</option>
               </select>&nbsp; &nbsp;
              </h3>
            </ul>
        </div>
        <!-- ★leni★ class list 사용하는지 여쭤보고 수정가능하면 수정하기 -->
            <div class="list" id="job_board_content" style="overflow: auto; height: 400px">
               <%
                	JobBoardDBList jbl = JobBoardDBList.getInstance();
                	ArrayList<JobPostBean> jp = jbl.getList("1", "1");
               	%>				
                <table id="job_board">
                <!-- ★leni★ database에 내용이 많아지면 이 부분은 지워도 됩니다. -->
                <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                <%
                if(jp != null){
                	for(int i=0; i<jp.size(); i++){
                %>
                	<tr>
                        <td style="width: 500px;"><a href="#"><%=jp.get(i).getJob_titile() %></a></td>
                        <td class="time"><%=jp.get(i).getCreated_at() %></td>
                        <td><input type="checkbox" value=""></td>
                    </tr>
                <%
                	}
                }
                %>
               <script type="text/javascript">
					$('#job_board_content').scroll(function () {
						var scrollT = $(this).scrollTop(); // 스크롤바의 상단위치
						var scrollH = $(this).height(); // 스크롤 바가 갖는 div의 높이
						var contentH = $('#job_board').height(); // 문서 전체 내용을 갖는 div의 높이
						
						if(scrollT+scrollH+1 >= contentH){
							/* ★leni★ 스크롤 시 jdbc 읽어오는 부분 */
							<%
							jp = jbl.getList("1", "1");
							if(jp != null){
							for(int i=0; i<jp.size(); i++) {
							%>
								$('#job_board').append('<tr>'+
										'<td><a href="#"><%=jp.get(i).getJob_titile() %></td>'+
										'<td class"time"><%=jp.get(i).getCreated_at() %></td>'+
										'<td><input type="checkbox" value=""></td>'+
										'</tr>');
								<%
								}
							}
							%>
						}			
					});
				</script>
                </table>
            </div>
        </div>
         <div class="button">
				<button type="submit" onclick="">뒤로가기</button>
			</div>
        </div>
         <div class ="space"></div>
      </form>
     <div class="footer">
            <div class="f_img"><img src="images/footer.png" id="f_img"></div>
            <div>
              Green.co <br>
              Addr. 부산시 가나다동 가나다라구 2로 1234 <br>
              010 - 123 -1234 <br>
              COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
            </div>
          </div>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>
