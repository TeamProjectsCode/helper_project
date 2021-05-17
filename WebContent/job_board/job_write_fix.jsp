<%@page import="db.JobPostDAO"%>
<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String job_post_no = request.getParameter("no");
JobPostDAO jpDAO = JobPostDAO.getInstance();
/* System.out.println("no: "+job_post_no); */
JobPostBean jp = jpDAO.getPost(job_post_no);

/* System.out.println(jp.getJob_title());
System.out.println(jp.getJob_time_start());
System.out.println(jp.getJob_time_end());
System.out.println(jp.getCategory());
System.out.println("number: "+jp.getJob_num_of_people());
System.out.println(jp.getJob_location_first_name());
System.out.println(jp.getJob_location_detail());
System.out.println(jp.getJob_pay());
System.out.println(jp.getJob_detail()); */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="script.js" charset="utf-8"></script>
<%@ include file="/header.jsp" %>
<link rel="stylesheet" href="<%=p_helper_path %>/css/board_writer_fix.css" type="text/css" />
<title>구인 게시글 수정</title>
</head>
<body>

	<div class="total">
		<form action="job_write_fix_ok.jsp?no=<%=job_post_no %>" method="POST">
			<div class = "section">
			<h1>구인 게시글 수정</h1>
			<div class="date">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;<input type="text" name="job_title" value = "<%=jp.getJob_title()%>" class="title">
					</h3>
				</ul>
				<ul>
					<h3>공고기간</h3>
				</ul>
				<ul>
					<!-- 데이, 타임 입력 -->
					<jsp:include page="../util/datepicker.jsp"></jsp:include>
<%-- 					<script>
					$(function(){
						$('#timeDay').datepicker('setDate', '<%=jp.getJob_day()%>');
						$("#timeStart").timepicker({defaultTime: '<%=jp.getJob_time_start()%>'});
						$("#timeEND").timepicker({defaultTime: '<%=jp.getJob_time_end()%>'});
					}
					</script> --%>
				</ul>
			</div>
			<div class="detail">
				<ul>
					<h3>상세공고</h3>
				</ul>
				<ul>
					<h4>
						카테고리 &nbsp;&nbsp;&nbsp; 
						<select name="category" id="category" selected="<%=jp.getCategory() %>">
								<option value=4>선택안함</option>
								<option value=5>가사도우미</option>
								<option value=6>청소도우미</option>
								<option value=7>등하원도우미</option>
								<option value=8>요리도우미</option>
								<option value=9>산후도우미</option>
								<option value=10>식당도우미</option>
								<option value=11>육아도우미</option>
								<option value=12>펫시터</option>
								<option value=13>베이비시터</option>
								<option value=14>요양보호사</option>
								<option value=15>대리티켓구매</option>
								<option value=16>직구대행</option>
								<option value=17>기타</option>
							</select>
					</h4>
				</ul>
				<ul>
					<h4>
						인원수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="number" value="<%=jp.getJob_num_of_people() %>"
							min="1" max="5" name="job_num_of_people">
					</h4>
				</ul>
				<ul>
					<h4>
						지역 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<select name=job_location_first_name selected="<%=jp.getJob_location_first_name()%>">
								<option value="서울">서울</option>
								<option value="부산">부산</option>
								<!-- <option value="인천">인천</option>
								<option value="대전">대전</option>
								<option value="대구">대구</option>
								<option value="광주">광주</option>
								<option value="세종시">세종시</option>
								<option value="제주도">제주도</option>
								<option value="경기도">경기도</option>
								<option value="강원도">강원도</option>
								<option value="충청북도">충청북도</option>
								<option value="충청남도">충청남도</option>
								<option value="전라북도">전라북도</option>
								<option value="전라남도">전라남도</option>
								<option value="경상남도">경상남도</option>
								<option value="경상북도">경상북도</option>
								<option value="해외">해외</option> -->
						</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select name="job_location_second_name" selected="<%=jp.getJob_location_second_name() %>">
								<option value="해운대구">해운대구</option>
								<option value="진구">진구</option>

							</select>
						<br>
						상세 주소 <input type="text" value = "<%=jp.getJob_location_detail()%>" name="job_location_detail">
					</h4>
				</ul>
				<ul>
					<h4>
						금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="text" value ="<%=jp.getJob_pay() %>" name="job_pay"/>&nbsp;원
					</h4>
				</ul>
				<ul>
					<h4>상세</h4>
					<textarea cols="60" rows="10" name ="job_detail"><%=jp.getJob_detail() %></textarea>
				</ul>
			</div>
			<div class="btn">
				<button type="submit">수정하기</button>
				<span><button type="reset">다시쓰기</button></span>
			</div>
			</div>
		</form>
		<div class="clear"></div>
		<%@ include file="/footer.jsp" %>
		<!-- <div class="footer">
			<div class="f_img">
				<img src="images/footer.png" id="f_img">
			</div>
			<div class="f_info">
				Green.co <br> Addr. 부산시 가나다동 가나다라구 2로 1234 <br> 010 - 123
				-1234 <br> COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
			</div>
		</div> -->
	</div>
</body>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














