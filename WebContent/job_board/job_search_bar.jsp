<%@page import="db.etcBeans.LocationBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- ★★★★★★ ★leni★ select 부분 UI 만들어야함!! -->
<div class="searchBox">
      <form action=""method="post">
		  <label>
			  <h3>지역</h3>
				<select name="location_first" id="location_first">
				  <option value="전체" selected>전체</option>
				  <option value="서울">서울</option>
				  <option value="부산">부산</option>
				</select>
		  </label>
		  <label>
			  <h3>지역</h3>
				<select name="location_second" id="location_second">
				  <option value="해운대구">해운대구</option>
				  <option value="진구">진구</option>
				</select>
		  </label>
		</form>
	</div>
	
	<script type="text/javascript">
    $('#location_second').change(function(){
		location.href="./job_main.jsp?location_first="+$('#location_first option:selected').val()+"&location_second="+this.value;
   	});  
	</script>
</html>