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
<!-- 获得焦点验证-->
function form_addCustOf(){
	var form = document.getElementById("addCustomers");
	var forms = form.elements;
	var identity = form[0].value;
	var custName = form[1].value;
	var address = form[3].value;
	var phone = form[4].value;
	var career = form[5].value;
	var custPwd=form[6].value;
	<!-- 用户名验证-->
	if(custName==""){
		document.getElementById("custNameMsg").innerHTML = "请输入用户名";
	}
	<!-- 密码验证-->
	if(custPwd==""){
		document.getElementById("custPwdMsg").innerHTML = "请输入密码";
	}
	<!-- 地址验证-->
	if(address==""){
		document.getElementById("addressMsg").innerHTML = "请输入地址";
	}

	<!--职业证验证 -->
	if(career==""){
		document.getElementById("careerMsg").innerHTML = "请输入职业";
	}
	<!--身份证验证 -->
	if(identity==""){
		document.getElementById("identityMsg").innerHTML = "请输入身份证";
	}
	
	<!--电话验证 -->
	if(phone==""){
		document.getElementById("phoneMsg").innerHTML = "请输入电话";
	}
}
<!-- 失去焦点验证-->
function form_addCustOb(){
	var form = document.getElementById("addCustomers");
	var forms = form.elements;
	var identity = form[0].value;
	var custName = form[1].value;
	var address = form[3].value;
	var phone = form[4].value;
	var career = form[5].value;
	var custPwd=form[6].value;
	<!-- 用户名验证-->
	if(custName==""){
		document.getElementById("custNameMsg").innerHTML = "客户名不能为空";
	}else if(custName.length<2||custName.length>20){
		document.getElementById("custNameMsg").innerHTML = "客户名长度为2-20";
	}else{
		document.getElementById("custNameMsg").innerHTML = "";
	}
	<!-- 密码验证-->
	if(custPwd==""){
		document.getElementById("custPwdMsg").innerHTML = "密码不能为空";
	}else if(custPwd.length<6||custPwd.length>20){
		document.getElementById("custPwdMsg").innerHTML = "密码长度为6-20";
	}else if(!/^[A-Za-z0-9]*$/.test(custPwd)){
		document.getElementById("custPwdMsg").innerHTML = "密码只能为字母或数字";
	}else{
		document.getElementById("custPwdMsg").innerHTML = "";
	}
	<!-- 地址验证-->
	if(address==""){
		document.getElementById("addressMsg").innerHTML = "地址不能为空";
	}else if(address.length>40||address.length<1){
		document.getElementById("addressMsg").innerHTML = "地址长度为1-40";
	}else{
		document.getElementById("addressMsg").innerHTML = "";
	}

	<!--职业证验证 -->
	if(career==""){
		document.getElementById("careerMsg").innerHTML = "职业不能为空";
	}else if(career.length>4||career.length<1){
		document.getElementById("careerMsg").innerHTML = "职业长度为1-4";
	}else{
		document.getElementById("careerMsg").innerHTML = "";
	}
	<!--身份证验证 -->
	if(identity==""){
		document.getElementById("identityMsg").innerHTML = "身份证不能为空";
	}else if(identity.length!=18){
		document.getElementById("identityMsg").innerHTML = "身份证长度为18";
	}else if(!/^[1-9]{1}[0-9]{16}([0-9]|[xX])$/.test(identity)){
		document.getElementById("identityMsg").innerHTML = "请输入正确的身份证号";
	}else{
		document.getElementById("identityMsg").innerHTML = "";
	}
	
	<!--电话验证 -->
	if(phone==""){
		document.getElementById("phoneMsg").innerHTML = "联系电话不能为空";
	}else if(phone.length!=11){
		document.getElementById("phoneMsg").innerHTML = "联系电话长度为11";
	}else if(!/^1[3|5|8][0-9]\d{4,8}$/.test(phone)){
		document.getElementById("phoneMsg").innerHTML = "请输入正确的手机号";
	}else{
		document.getElementById("phoneMsg").innerHTML = "";
	}
		
}

<!-- 表单整体验证-->
function form_submit() {
	var form = document.getElementById("addCustomers");
	var forms = form.elements;
	var identity = form[0].value;
	var custName = form[1].value;
	var address = form[3].value;
	var phone = form[4].value;
	var career = form[5].value;
	var custPwd=form[6].value;
	var flag = true;
	<!-- 用户名验证-->
	if(custName==""){
		flag=false;
		document.getElementById("custNameMsg").innerHTML = "客户名不能为空";
	}else if(custName.length<2||custName.length>20){
		flag=false;
		document.getElementById("custNameMsg").innerHTML = "客户名长度为2-20";
	}
	<!-- 密码验证-->
	if(custPwd==""){
		flag=false;
		document.getElementById("custPwdMsg").innerHTML = "密码不能为空";
	}else if(custPwd.length<6||custPwd.length>20){
		flag=false;
		document.getElementById("custPwdMsg").innerHTML = "密码长度为6-20";
	}else if(!/^[A-Za-z0-9]*$/.test(custPwd)){
		flag=false;
		document.getElementById("custPwdMsg").innerHTML = "密码只能为字母或数字";
	}
	<!-- 地址验证-->
	if(address==""){
		flag=false;
		document.getElementById("addressMsg").innerHTML = "地址不能为空";
	}else if(address.length>40||address.length<1){
		flag=false;
		document.getElementById("addressMsg").innerHTML = "地址长度为1-40";
	}

	<!--职业证验证 -->
	if(career==""){
		flag=false;
		document.getElementById("careerMsg").innerHTML = "职业不能为空";
	}else if(career.length>4||career.length<1){
		flag=false;
		document.getElementById("careerMsg").innerHTML = "职业长度为1-4";
	}
	<!--身份证验证 -->
	if(identity==""){
		flag=false;
		document.getElementById("identityMsg").innerHTML = "身份证不能为空";
	}else if(identity.length!=18){
		flag=false;
		document.getElementById("identityMsg").innerHTML = "身份证长度为18";
	}else if(!/^[1-9]{1}[0-9]{16}([0-9]|[xX])$/.test(identity)){
		flag=false;
	document.getElementById("identityMsg").innerHTML = "请输入正确的身份证号";
	}
	
	<!--电话验证 -->
	if(phone==""){
		flag=false;
		document.getElementById("phoneMsg").innerHTML = "联系电话不能为空";
	}else if(phone.length!=11){
		flag=false;
		document.getElementById("phoneMsg").innerHTML = "联系电话长度为11";
	}else if(!/^1[3|5|8][0-9]\d{4,8}$/.test(phone)){
		flag=false;
		document.getElementById("phoneMsg").innerHTML = "请输入正确的手机号";
	}
	
	if(flag){
		form.submit();
	}
}
function form_reset() {
	document.getElementById("addCustomers").reset();
}
</script>
	</head>

	<body>

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
														<div align="center" style="margin-top: 4px">
															<img src="images/tb.gif" width="14" height="14" />
														</div>
													</td>
													<td width="94%" valign="middle">
														<span class="STYLE1" style="color: white;">添加客户信息</span>
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
		</table>
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="d5d4d4">
			<tr>
				<td colspan="4" bgcolor="#FFFFFF" class="STYLE1" align="center">
					<form action="addCustomersServlet.do" id="addCustomers" method="post">
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
											style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;"
											onfocus="form_addCustOf()" onblur="form_addCustOb()" />
										<span id="identityMsg" style="color: red">*</span>
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
											style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;"
											onfocus="form_addCustOf()" onblur="form_addCustOb()" />
										<span id="custNameMsg" style="color: red">*</span>
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
											<option value="男">
												男
											</option>
											<option value="女">
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
											style="width: 200px; height: 17px; font-size: 12px; border: solid 1px #ccc;"
											onfocus="form_addCustOf()" onblur="form_addCustOb()" />
										<span id="addressMsg" style="color: red">*</span>
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
											style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;"
											onfocus="form_addCustOf()" onblur="form_addCustOb()" />
										<span id="phoneMsg" style="color: red">*</span>
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
											style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;"
											onfocus="form_addCustOf()" onblur="form_addCustOb()" />
										<span id="careerMsg" style="color: red">*</span>
									</div>
								</td>
							</tr>
							<tr>
								<td width="35%" height="35" class="STYLE1" nowrap="nowrap">
									<div align="right" style="margin-right: 20px;">
										密&nbsp;&nbsp;&nbsp;&nbsp;码:
									</div>
								</td>
								<td height="35" colspan="3" class="STYLE1">
									<div align="left">
										<input type="password" name="custPwd"
											style="width: 130px; height: 17px; font-size: 12px; border: solid 1px #ccc;"
											onfocus="form_addCustOf()" onblur="form_addCustOb()" />
										<span id="custPwdMsg" style="color: red">*</span>
									</div>
								</td>
							</tr>
							<tr>
								<td></td>
								<td height="35" colspan="" class="STYLE1">
									<div class="button">
										<img src="images/tianjia.jpg" width="57" height="20"
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
