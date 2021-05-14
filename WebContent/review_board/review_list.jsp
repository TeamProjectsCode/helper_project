<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/review_list.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
     <%@ include file="/header.jsp" %>
      <form action=""method="POST" >
        <h1>후기 게시판</h1>
        <div class="section">
        <div class="serch">
                <%
        	if(session.getAttribute("id")==null){
        		%>
                <a href = "../login_check.jsp"><h4>글쓰기</h4></a>
        		<%
			}else{
        		%>
        		 <a href = "review_write.jsp"><h4>글쓰기</h4></a>
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
     <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>
