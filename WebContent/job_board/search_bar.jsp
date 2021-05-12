<%@page import="db.etcBeans.LocationBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div class="searchBox">
      <form action=""method="post">
		  <label>
			  <h3>지역</h3>
				<select name="location" id="location" sel>
				  <option value="0">전체</option>
				  <option value="3">서울</option>
				  <option value="1">부산</option>
				</select>
		  </label>

		</form>
	</div>
	
	<script type="text/javascript">
    $('#location').change(function(){
<%--     	<%
    	String location = request.getParameter("location");
    	System.out.println("select location: "+location);
    	LocationDAO lDAO = LocationDAO.getInstance();
    	ArrayList<LocationBean> ll = lDAO.getLocationList(location);
    	if(ll != null){
    		for(int i=0; i<ll.size(); i++){
		%>
				$("#location").append('<option value=<%=ll.get(i).getNo()%>><%=ll.get(i).getSecound_name()%></option>');
		<%
    		}
    	}
    	%> --%>
		location.href="./main.jsp?location="+this.value;
   	});  
	</script>
</html>