<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet" href="register.css" />
<title>ȸ������</title>
</head>
<body>
<center>
	 <div class="nav">
	        <div class="nav-right-items">
	         <div class="nav-item">Ȩ</div>
	         <div class="nav-item">���ΰԽ���</div>
	         <div class="nav-item">��������</div>
	         <div class="nav-item">����������</div>
	         <div class="nav-item">�α���</div>
	        </div>
	     </div>
	     <div class="main">
	         <div class="title">
	             ȸ������
	         </div>
	         <div class="subtitle">
	             ȥ�ڼ��� �ϱ� ����ų� �ϻ��Ȱ�� �ʿ��� �� �ϰŸ��� THE HELPER�� �ذ��ϼ���!
	         </div>
	         <BR>
	         <BR>
	         <div class="subtitle">
	         <hr style="border: solid 2px #AACFD0;">
	         </div>
	     </div>
	<form action="#" class="sign-up-form">
		<div class="input-field">
			<table class="table ">
				<tr>
					<th>���̵�</th>
					<td><input type="text" placeholder="���̵�" name="id"></td>
				</tr>
				<tr>
					<th>�̸�</th>
					<td><input type="text"  placeholder="�̸�" name="name"></td>
				</tr>
				<tr>
					<th>�н�����</th>
					<td><input type="password"  placeholder="�н�����" name="pass"></td>
				</tr>

				<tr>
					<th>�н�����Ȯ��</th>
					<td><input type="password"  placeholder="�н����� Ȯ��" name="pass2"></td>
				</tr>

				<tr>
					<th>����</th>
					<td><input type="radio" name="gender" value="��">��
					 <input type="radio" name="gender" value="��" >��</td>
				</tr>

				<tr>
					<th>����</th>
					<td><input type="text" name="birth_yy" maxlength="4"
						placeholder="��(4��)" size="6"> <select name="birth_mm">
							<option value="">��</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select> <input type="text" name="birth_dd" maxlength="2" placeholder="��"
						size="4"></td>
				</tr>

				<tr>
					<th>�̸���</th>
					<td><input type="email"  placeholder="�̸���" name="email1"></td>
				</tr>

				<tr >
					<th><input type="submit" class="btn" value="��û�ϱ�" ></th>
					<td><input type="submit" class="btn" value="�ڷΰ���" ></td>
				</tr>
				</table>
			</div>
		</form>
	</center>
	</body>
</html>