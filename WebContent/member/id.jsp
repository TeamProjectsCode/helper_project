<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/id.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
 <body>
    <div class="total">
    <%@ include file="/header.jsp" %>
      <form>
        <h1 align="center">ID 찾기</h1>
        <div class="id_section">
			<h3><%="홍길동" +"님의 ID는"%></h3>
			<table>
				<tr>
					<td><%="hong123" + " 입니다." %></td>
				</tr>
			</table>
            <div class="button">
				<button type="button" onclick="location.href='../login.jsp'">로그인 화면으로</button>
				<button type="button" onclick="location.href='idpwd.jsp'">비밀 번호 찾으러 가기</button>
			</div>
        </div>
      </form>
      
      <div class ="space"></div>
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>