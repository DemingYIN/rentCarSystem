<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'addCustomers.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="js/js.js"></script>
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px
}

.STYLE3 {
	font-size: 12px;
	font-weight: bold;
}

.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>
		<script type="text/javascript">
function form_submit() {
	var form = document.getElementById("findCustomers");
	var forms = form.elements;
	var identity = form[0].value;
	var custName = form[1].value;
	var phone = form[4].value;
	var flag = true;
	<!-- 用户名验证-->
	if(custName.length>20){
		flag=false;
		document.getElementById("custNameMsg").innerHTML = "客户名长度不得超过20";
	}

	<!--身份证验证 -->
	 if(identity.length>18){
		flag=false;
		document.getElementById("identityMsg").innerHTML = "身份证长度不得超过18";
	}else if(identity!=""&&!/^[1-9]{1}[0-9]{16}([0-9]|[xX])$/.test(identity)){
	flag=false;
	document.getElementById("identityMsg").innerHTML = "请输入正确的身份证号";
	}
	
	<!--电话验证 -->
	if(phone.length>11){
		flag=false;
		document.getElementById("phoneMsg").innerHTML = "联系电话长度不得超过11";
	}else if(phone!=""&&!/^1[3|5|8][0-9]\d{4,8}$/.test(phone)){
		flag=false;
		document.getElementById("phoneMsg").innerHTML = "请输入正确的手机号";
	}
	
	if(flag){
		form.submit();
	}
}
function form_reset() {
	document.getElementById("findCustomers").reset();
}
</script>
	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="1" bgcolor="d5d4d4">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="30">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="24" bgcolor="#353c44">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td>
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="2%" height="19" valign="middle">
															<div align="center">
																<img src="images/tb.gif" width="14" height="14"
																	align="middle" />
															</div>
														</td>
														<td width="94%" valign="middle">
															<span class="STYLE1" style="color: white;"> 查询客户界面</span>
														</td>
													</tr>
												</table>
											</td>

										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr> 

				<tr>
					<td height="22" colspan="4" background="images/bg.gif"
						bgcolor="#FFFFFF" class="STYLE3">
						<div align="center">
							请输入任意内容查找
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4" bgcolor="#FFFFFF" class="STYLE1">
						<form action="findAllCustomersServlet.do" id="findCustomers" method="post">
							<table width="70%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="40%" height="35" class="STYLE1" nowrap="nowrap">
										<div align="right" style="margin-right: 20px;">
											身份证:
										</div>
									</td>
									<td width="*%" height="35" class="STYLE1">
										<div align="left">
											<input type="text" name="identity"
												style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;" />
											<span id="identityMsg" style="color: red"></span>
										</div>
									</td>
								</tr>
								<tr>

									<td width="35%" height="35" class="STYLE1" nowrap="nowrap">
										<div align="right" style="margin-right: 20px;">
											姓&nbsp;&nbsp;&nbsp;&nbsp;名:
										</div>
									</td>
									<td width="*%" height="35" class="STYLE1">
										<div align="left">
											<input type="text" name="custName"
												style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;" />
											<span id="custNameMsg" style="color: red"></span>
										</div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="35" class="STYLE1" nowrap="nowrap">
										<div align="right" style="margin-right: 20px;">
											性&nbsp;&nbsp;&nbsp;&nbsp;别:
										</div>
									</td>
									<td height="35" class="STYLE1">
										<div align="left">
											<select name="sex"
												style="width: 50px; height: 17px; font-size: 12px;">
												<option>
													男
												</option>
												<option>
													女
												</option>
											</select>
										</div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="35" class="STYLE1" nowrap="nowrap">
										<div align="right" style="margin-right: 20px;">
											地&nbsp;&nbsp;&nbsp;&nbsp;址:
										</div>
									</td>
									<td height="35" colspan="3" class="STYLE1">
										<div align="left">
											<input type="text" name="address"
												style="width: 200px; height: 17px; font-size: 12px; border: solid 1px #ccc;" />
											<span id="addressMsg" style="color: red"></span>
										</div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="35" class="STYLE1" nowrap="nowrap">
										<div align="right" style="margin-right: 20px;">
											电&nbsp;&nbsp;&nbsp;&nbsp;话:
										</div>
									</td>
									<td height="35" colspan="3" class="STYLE1">
										<div align="left">
											<input type="text" name="phone"
												style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;" />
											<span id="phoneMsg" style="color: red"></span>
										</div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="35" class="STYLE1" nowrap="nowrap">
										<div align="right" style="margin-right: 20px;">
											职&nbsp;&nbsp;&nbsp;&nbsp;业:
										</div>
									</td>
									<td height="35" colspan="3" class="STYLE1">
										<div align="left">
											<input type="text" name="career"
												style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;" />
											<span id="careerMsg" style="color: red"></span>
										</div>
									</td>
								</tr>
								<tr>
									<td></td>
									<td height="35" colspan="" class="STYLE1">
										<div class="button">
											<img src="images/cx.jpg" width="57" height="20"
												onclick="form_submit()">

											<img src="images/cz.jpg" width="57" height="20"
												onclick="form_reset()">
										</div>
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
			</table>
	</body>
</html>
