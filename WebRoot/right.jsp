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

		<title>My JSP 'right].jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}

.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}

.STYLE6 {
	color: #000000;
	font-size: 12;
}

.STYLE10 {
	color: #000000;
	font-size: 12px;
}

.STYLE19 {
	color: #344b50;
	font-size: 12px;
}

.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}

.STYLE22 {
	font-size: 12px;
	color: #295568;
}

.bg_tr {
	font-family: "微软雅黑,Verdana, 新宋体";
	color: #1E5494; /*标题字体色*/
	font-size: 12px;
	font-weight: bolder;
	background: #E4F1FA; /*标题背景色*/
	line-height: 22px;
}

.bg_tr1 {
	font-family: "微软雅黑,Verdana, 新宋体";
	color: #1E5494; /*标题字体色*/
	font-size: 12px;
	background: #E4F1FA; /*标题背景色*/
	line-height: 22px;
}
-->
</style>
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
														<span class="STYLE1" style="color: white;"> 欢迎界面</span>
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
		<center>
			<table cellspacing="1" cellpadding="2" width="99%" align="center"
				border="0" style="border: 1px solid #CAF2FF; background: #B8D3F1;">
				<tbody>
					<tr class="bg_tr">
						<th colspan="2" align="left">
							系统信息统计
						</th>
					</tr>
					<tr class="bg_tr1">
						<td style="background: #ffffff;" width="50%">
							服务器类型：<%=application.getServerInfo()%>
						</td>
						<td style="background: #ffffff;" width="50%">
							脚本语言：JavaScript
						</td>
					</tr>
					<tr class="bg_tr1">
						<td style="background: #ffffff;" width="50%">
							站点物理路径：<%=basePath%>
						</td>
						<td style="background: #ffffff;" width="50%">
							web技术：jsp/servlet
						</td>
					</tr>
					<tr class="bg_tr1">
						<td style="background: #ffffff;" width="50%">
							文件上传路径：WebRoot/fileUpLoad
						</td>
						<td style="background: #ffffff;" width="50%">
							数据库使用：Oracle10g
						</td>
					</tr>
					<tr class="bg_tr1">
						<td style="background: #ffffff;" width="50%">
							其他组件：fileupload , log4j
						</td>
						<td style="background: #ffffff;" width="50%">
							客户端：IE7或更高版本
						</td>
					</tr>
				</tbody>
			</table>
			<table cellspacing="1" cellpadding="2" width="99%" align="center"
				border="0" style="border: 1px solid #CAF2FF; background: #B8D3F1;">
				<tbody>
					<tr class="bg_tr">
						<th colspan="2" align="left">
							租车管理系统
						</th>
					</tr>
					<tr class="bg_tr1">
						<td style="background: #ffffff;" width="15%">
							当前版本
						</td>
						<td style="background: #ffffff; font-weight: bold;" width="85%">
							汽车租赁管理系统V2.2 免费版 (Free Edition)
						</td>
					</tr>
					<tr class="bg_tr1">
						<td style="background: #ffffff;" width="15%">
							版权声明
						</td>
						<td style="background: #ffffff;" width="85%">
							1、本软件为共享软件,未经书面授权，不得向任何第三方提供本软件系统;<br>
							2、用户自由选择是否使用,在使用中出现任何问题和由此造成的一切损失作者将不承担任何责任;<br>
							3、您可以对本系统进行修改和美化，但必须保留完整的版权信息;<br>
							4、本软件受中华人民共和国《著作权法》《计算机软件保护条例》等相关法律、法规保护，作者保留一切权利。
						</td>
					</tr>
				</tbody>
			</table>
		</center>
	</body>
</html>
