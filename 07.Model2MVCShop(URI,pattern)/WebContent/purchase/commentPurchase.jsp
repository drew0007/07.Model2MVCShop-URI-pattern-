<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="stylesheet" href="/css/admin.css" type="text/css">
<script type="text/javascript">
function fncScore(count){
	
	for(i=1; i<=5; i++){
		if(i<=count){
			document.getElementById("score"+i).src = "/images/uploadFiles/roundstar_01.png";
		}else{
			document.getElementById("score"+i).src = "/images/uploadFiles/roundstar_02.png";
		}
	}
	
	document.getElementById("score").value = count;
}

function fncComment(){
	document.detailForm.action='/purchase/commentPurchase';
	document.detailForm.submit();
}
</script>

<title>Insert title here</title>
</head>
<body>

<form name="detailForm"  method="post" action="/purchase/commentPurchase" >
<table  border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px; margin-left: 10px;" align="center">
	<tr>
		<td rowspan="2"><img src = "/images/uploadFiles/AHlbAAAAtBqyWAAA.jpg" width="200"/></td>
		<td rowspan="2" width="15"></td>
		<td colspan="10"><b><font size="5">vaio vgn FS70B2</font></b></td>
	</tr>
	<tr>
		<td colspan="10">주문일시 : 2018-05-08</td>
	</tr>
	<tr>
		<td height="1" colspan="10" bgcolor="D6D6D6"></td>
	</tr>
	<tr height="50">
		<td><b><font size="5">별점</font></b></td>
		<td rowspan="2" width="15"></td>
		<td><img id="score1" src="/images/uploadFiles/roundstar_01.png" width="30" onclick="javascript:fncScore(1)" /></td>
		<td><img id="score2" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(2)" /></td>
		<td><img id="score3" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(3)" /></td>
		<td><img id="score4" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(4)" /></td>
		<td><img id="score5" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(5)" /></td>
		<!-- 
		<td><input type="image" id="score1" src="/images/uploadFiles/roundstar_01.png" width="30" onclick="javascript:fncScore(1)"></td>
		<td><input type="image" id="score2" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(2)"></td>
		<td><input type="image" id="score3" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(3)"></td>
		<td><input type="image" id="score4" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(4)"></td>
		<td><input type="image" id="score5" src="/images/uploadFiles/roundstar_02.png" width="30" onclick="javascript:fncScore(5)"></td>
		 -->
		<td><input type="hidden" id="score" name="score" value="1"></td>
	</tr>
	<tr>
		<td height="1" colspan="10" bgcolor="D6D6D6"></td>
	</tr>
	<tr height="50">
		<td><b><font size="5">상품평</font></b></td>
		<td rowspan="2" width="15"></td>
		<td colspan="10"><input type="text" name="commentText" style="width: 200px; height: 19px" maxLength="20"></td>
	</tr>
</table>

<br/>
<input type="hidden" name="tranNo" value="${tranNo }">
<input type="hidden" name="prodNo" value="${prodNo }">

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
	<tr>
		<td align="center">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
						<a href="javascript:fncComment()">등록</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
					<td width="30"></td>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
						<a href="javascript:history.go(-1)">취소</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>

</body>
</html>