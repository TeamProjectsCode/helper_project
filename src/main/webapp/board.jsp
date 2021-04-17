<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP: board</title>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/boardCss.css"/>

</head>
<body>
	<div id="container">
		<div id="log">0</div>
	</div>
	<div id ="boardContent">
		<table id="board">
			<tr>
				<td>����</td>
				<td>��������</td>
				<td>������</td>
				<td>�޿�</td>
				<td>�ٹ��ð�</td>
				<td>�����</td>
			</tr>
			<%
			for(int i = 0; i<20; i++){
			%>
			<tr>
				<td>����</td>
				<td>��������</td>
				<td>������</td>
				<td>�޿�</td>
				<td>�ٹ��ð�</td>
				<td>�����</td>
			</tr>
			<%
			}
			%>
			
			
		</table>
	</div>
	<script type="text/javascript">
	$('#boardContent').scroll(function () {
		var scrollT = $(this).scrollTop(); // ��ũ�ѹ��� �����ġ
		var scrollH = $(this).height(); // ��ũ�� �ٰ� ���� div�� ����
		var contentH = $('#board').height(); // ���� ��ü ������ ���� div�� ����
		
		if(scrollT+scrollH+1 >= contentH){
			log(scrollT);
			$('#board').append('<tr><td style="color: red">����</td><td>��������</td><td>������</td><td>�޿�</td><td>�ٹ��ð�</td><td>�����</td></tr>');
		}			
	});
	
	function log(str){
	$('#log').text(str);
	}
	</script>
	
	<div class="menuBar">
		<input type="button" value="�۾���" >
		<select>
			<option>����</option>
			<option>ī�װ�</option>
			<option>������</option>
		</select>
		<input type="text" size="40%" placeholder="�˻�� �Է��ϼ���">
		<input type="button" value="�˻�">
	</div>
</body>
</html>