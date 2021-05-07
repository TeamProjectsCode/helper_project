<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="css/review_reading.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
      <header class="header">
            <div class="header_logo">
              <h1>
                <a href="#">
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
      <form action="" method="POST">
        <h1>후 기</h1>
        <div class="section">
          <ul>
            <div class="title">
              <h3>친절한 초읍동 주민들 &nbsp;&nbsp;&nbsp;</h3>
              <div class="time">조회수 : 00</div>
            </div>
        </ul>
        <ul>
            <div class="list">
                <h3>지원 했던 공고 &nbsp; &nbsp;</h3>
                <a href="#">초읍동 선착순 1명 꿀알바</a>
                <div class="time">21/04/27</div>
            </div>
          </ul>
          <ul>
            <div class="content">
              <h3>후기</h3>
              <br />
              <div style="width: auto; height: 400px">양봉장</div>
            </div>
          </ul>
        	<div class="button">
            <button type="button" value = "뒤로가기" onclick="location.href='review_list.jsp'">뒤로가기</button>
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
