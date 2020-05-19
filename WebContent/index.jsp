<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="sms.SMS"%>
<html>

<head>
<meta name="viewport" content="width=device-width,initail-scale=1">
<title>SMS 프로젝트</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
</head>

<body>
	<div class="container">
		<form method="post" name="smsForm" action="smssend.jsp">
			<table class="table table-striped" style="text-align: center; border: 1px solid #ddd">
				<thead>
					<tr>
						<th style="text-align: center;">문자 전송 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<textarea class="form-control" maxlength="45" name="msg" style="height: 220px;" placeholder="보낼 내용"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							<input class="form-control" type="text" name="rphone" placeholder="받는 번호">
						</td>
					</tr>
					<tr>
						<td>( 받는 번호는 010-0000-0000과 같이 전체 번호로 작성해주세요. )</td>
					</tr>
					<tr>
						<td>
							남은 문자 잔여량 :
							<%=new SMS().getCount()%>
						</td>
					</tr>
					<tr>
						<td>
							<%-- 발신번호 수정필요 --%>
							<input type="hidden" name="action" value="go">
							<input type="hidden" name="sphone1" value="010">
							<input type="hidden" name="sphone2" value="0000">
							<input type="hidden" name="sphone3" value="0000">
							<input class="btn btn-primary pull-right" type="submit" value="전송">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>