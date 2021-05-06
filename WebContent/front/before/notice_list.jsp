<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="css/notice.css" type="text/css" />
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
					<li><a href="login.jsp">LOGIN</a></li>
				</ul>
            </div>
          </header>
      <form>
        <h1>공지 사항</h1>
        <div class="section">
        <div class = "serch">
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
				<button type="submit" onclick="">뒤로가기</button>
			</div>
        </div>
      </form>
      <div class ="space"></div>
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