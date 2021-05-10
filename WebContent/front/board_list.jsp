<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="css/board_list.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="checking.js" charset="utf-8"></script>
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
					<li><%
        				if(session.getAttribute("id")==null){
        				%>
               			 <a href = "login_check.jsp">마이페이지</a>
        				<%
						}else{
        				%>
        				 <a href = "mypage_import.jsp">마이페이지</a>
        				<%
						}        		
        				%>
        				</li>
						<%
					if(session.getAttribute("id")!=null){
						String id = (String)session.getAttribute("id");
						%>
						<li><a href="logout.jsp">LOGOUT</a></li>
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
      <form name ="form">
        <h1>구인 게시판</h1>
        <div class="section">
        <div class="serch">
        	<%
        	if(session.getAttribute("id")==null){
        		%>
                <a href = "login_check.jsp"><h4>글쓰기</h4></a>
        		<%
			}else{
        		%>
        		 <a href = "board_write.jsp"><h4>글쓰기</h4></a>
        		<%
			}        		
        		%>
				
        
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
           		<input type = "button" value = "검색">
              </h3>
            </ul>
        </div>
            <div class="list"  style="overflow: auto; height: 400px">
                <table>
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
