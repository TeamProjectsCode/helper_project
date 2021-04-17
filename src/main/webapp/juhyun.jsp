<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 게시판 글쓰기
구인 마감 시간	돈			|		등록 버튼
장소			내용창		|		취소 버튼
하는일		참여인원 		|			-->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="script.js" charset="utf-8"></script>
	<style>
		.st{
			border-radius:7px;

			background-color: #ffffff;
			font-family: sans-serif;
			padding: 3px 0px 3px 10px;
		}
	</style>
</head>
 <body bgcolor="#F2F2F2">
	<table>
		<tr>
			<td>	
				<table width="100%">
					<td align="center" class="st">게시글쓰기</td>
				</table>
				
				<table width="100%" border="0">
				<tr height="10"><td colspan="4"></td></tr>
					<tr>
						<td>&nbsp;</td>
						<td class="st" align="left">제	목&nbsp;&nbsp;  </td>
						<td><input name="title" size="150" maxlength="100"></td>
						<td>&nbsp;</td>
					</tr>
					
				<tr height="10"><td colspan="4"></td></tr>
					<tr>
						<td>&nbsp;</td>
						<td class="st" align="left">참여 인원&nbsp;&nbsp;&nbsp;  </td>
						<td>
							<select name="timeout">
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
								<option value="5">5명</option>
								<option value="6">6명</option>
								<option value="7">7명</option>
								<option value="8">8명</option>
								<option value="9">9명</option>
								<option value="10">10명</option>
							</select></td>
						<td>&nbsp;</td>
					</tr>
					
				<tr height="10"><td colspan="4"></td></tr>
					<tr>
						<td>&nbsp;</td>
						<td class="st" align="left">마감 시간&nbsp;&nbsp;&nbsp;  </td>
						<td>
							<select name='year'>
								<option value="2021">2021</option>
								<option value="2021">2022</option>
								<option value="2021">2023</option>
								<option value="2021">2024</option>
								<option value="2021">2025</option>
								<option value="2021">2026</option>
								<option value="2021">2027</option>
								<option value="2021">2028</option>
								<option value="2021">2029</option>
								<option value="2021">2030</option>
							</select>
							년
							<select name='month'>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							월
							<select name='day'>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">31</option>
							</select>
							일
						<td>&nbsp;</td>
					</tr>
					
				<tr height="10"><td colspan="4"></td></tr>
					
					<tr>
						<td>&nbsp;</td>
						<td class="st" align="left">장	소&nbsp;&nbsp;  </td>
						<td><input name="title" size="150" maxlength="100"></td>
						<td>&nbsp;</td>
					</tr>
					
				<tr height="10"><td colspan="4"></td></tr>
					
					<tr>
						<td>&nbsp;</td>
						<td class="st" align="left">금	액&nbsp;&nbsp;  </td>
						<td><input name="title" size="150" maxlength="100"></td>
						<td>&nbsp;</td>
					</tr>
					
					<tr height="10"><td colspan="4"></td></tr>
					<tr >
						<td>&nbsp;</td>
						<td class="st" align="left">하는  일&nbsp;&nbsp;  </td>
						<td><textarea name="memo" cols="140" rows="20"></textarea></td>
						<td>&nbsp;</td>
					</tr>
					
					
					<tr align="center">
						<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td colspan="2">
								<input type=button value="등록" style="background-color: white;">
								<input type=button value="취소" style="background-color: white;">
							</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
			</td>	
		</tr>	
	</table>
</body> 













