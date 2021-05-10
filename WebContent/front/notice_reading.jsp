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
                    src="./images/logo11.png"
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
      <form action="" method="POST">
        <h1>공지 사항</h1>
        <div class="section">
            <ul>
                <div class="title">
                    <h3>공지 제목</h3>
                </div>
            </ul>
          <ul>
            <div class="content">
              <h3>상세 설명</h3>
              <br />
              <div style="width: auto; height: 400px">공지 ....</div>
            </div>
          </ul>
        </div>
        <div class = "button">
          <span><button type="button" value = "뒤로가기" onclick="location.href='notice_list.jsp'">뒤로가기</button></span>
        </div>
      </form>
      <div class="space"></div>
       <div class="footer">
            <div class="f_img"><img src="./images/footer.png" id="f_img"></div>
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