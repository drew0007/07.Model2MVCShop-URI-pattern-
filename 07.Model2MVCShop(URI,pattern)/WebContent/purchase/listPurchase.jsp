<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


<html>
<head>
<title>���� �����ȸ</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script type="text/javascript">
	function fncListPage(currentPage) {
		document.getElementById("currentPage").value = currentPage;
		document.detailForm.submit();
	}
</script>
</head>

<body bgcolor="#ffffff" text="#000000">

<div style="width: 98%; margin-left: 10px;">

<form name="detailForm" action="/purchase/listPurchase" method="post">

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">���� �����ȸ</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"	width="12" height="37"></td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td colspan="19">��ü ${resultPage.totalCount} �Ǽ�, ���� ${resultPage.currentPage} ������</td>
	</tr>
	<tr>
		<td class="ct_list_b" width="100">No</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">�ֹ���ȣ</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="200">��ǰ��</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">��ǰ�̹���</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="100">����</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b">����</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b">���Ź��</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b">�ֹ��Ͻ�</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b">�����Ȳ</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="100"></td>
	</tr>
	<tr>
		<td colspan="19" bgcolor="808285" height="1"></td>
	</tr>

	
	<c:set var="i" value="0"/>
	<c:forEach var="purchase" items="${list }">
	<c:set var="i" value="${i+1 }"/>
	<tr class="ct_list_pop">
		<td align="center">${i}</td>
		<td></td>
		<td align="center">
			<a href="/purchase/getPurchase?tranNo=${purchase.tranNo}&tranCode=${purchase.tranCode}">${purchase.tranNo}</a>
		</td>
		<td></td>
		<td align="left">
			<a href="/product/getProduct?prodNo=${purchase.purchaseProd.prodNo}&menu=search&tranCode=${purchase.tranCode}">${purchase.purchaseProd.prodName}</a>
		</td>
		<td></td>
		<td align="center">
			<c:if test="${!empty purchase.purchaseProd.fileName }">
				<img src = "/images/uploadFiles/${purchase.purchaseProd.fileName }" width="150"/>
			</c:if>
		</td>
		<td></td>
		<td align="right">${purchase.purchaseProd.price} ��</td>
		<td></td>
		<td align="center">${purchase.tranCnt}</td>
		<td></td>
		<td align="center">${purchase.paymentOption.equals('1')?"���ݱ���":"�ſ뱸��"}</td>
		<td></td>
		<td align="center">${purchase.orderDate}</td>
		<td></td>
		<td align="center">
		${purchase.tranCode.equals('1')?"���ſϷ�":purchase.tranCode.equals('2')?"�����":purchase.tranCode.equals('3')?"��ۿϷ�":purchase.tranCode.equals('4')?"������ҿ�û":purchase.tranCode.equals('5')?"�������":"" }
		</td>
		<td></td>
		<td align="center">
			<c:if test="${purchase.tranCode.equals('1') }">
				<a href="/purchase/updateTranCode?tranNo=${purchase.tranNo}&tranCnt=${purchase.tranCnt}&tranCode=4&prodNo=${purchase.purchaseProd.prodNo}">������ҿ�û</a>
			</c:if>
			<c:if test="${purchase.tranCode.equals('2') }">
				<a href="/purchase/updateTranCode?tranNo=${purchase.tranNo}&tranCnt=${purchase.tranCnt}&tranCode=3&prodNo=${purchase.purchaseProd.prodNo}">���ǵ���</a>
			</c:if>
			<c:if test="${purchase.tranCode.equals('3') }">
				<a href="/purchase/commentPurchase?tranNo=${purchase.tranNo}&prodNo=${purchase.purchaseProd.prodNo}">��ǰ�� �ۼ�</a>
			</c:if>
		</td>
	</tr>
	<tr>
		<td colspan="19" bgcolor="D6D7D6" height="1"></td>
	</tr>
	</c:forEach>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
	<tr>
		<td align="center">
		
		<input type="hidden" id="currentPage" name="currentPage" value="0"/>
		
			<jsp:include page="../common/pageNavigator.jsp"/>
		</td>
	</tr>
</table>

<!--  ������ Navigator �� -->
</form>

</div>

</body>
</html>