<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="css/review_list.css" type="text/css" />
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
      <form action=""method="POST" >
        <h1>후기 게시판</h1>
        <div class="section">
        <div class="serch">
                <a href="review_writer.jsp"><h4>글쓰기</h4></a>
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
            <div class="list"  style="overflow: auto; height: 400px">
                <table>
                    <tr>
                        <td style="width: 500px;"><a href="#">친절한 초읍동 주민들</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">부산진구 연지동 00아파트 베이비시터 알바 조심</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">초읍 시민도서관 대신 책반납 후기</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">서면 동물병원 일일 동물 병원 지킴이 후기</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>                               
                </table>
            </div>
        </div>
         <div class="button">
				<button type="submit" onclick="location.href='main.jsp'">뒤로가기</button>
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
