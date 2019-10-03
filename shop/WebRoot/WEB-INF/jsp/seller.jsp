<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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

<title>某宝后台管理</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/maijiaduan.css" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body>

	<div class="backgroudsetting">
		<div class="span10 last">
			<div class="a">
				<ul>
					<li style="display: list-item;" id="headerLogin"
						class="headerLogin"><a href="#">登录</a>&emsp; <a href="#">注册</a>&emsp;
						<a href="#">[注销]</a>&emsp; <a>会员中心</a> &emsp; <a>购物指南</a> &emsp; <a>关于我们</a>

					</li>
				</ul>
			</div>
		</div>
		<h2 align="center">某宝后台商品管理</h2>

		<div class="pa-header">&nbsp;订单管理&emsp;&emsp;&emsp;仓库管理&emsp;&emsp;&emsp;商品管理&emsp;&emsp;&emsp;</div>
		<div class="pa_body">
			<div class="body-menu">
				<img src="img/touxiang.jpg" />
				<div class="yue" style="font-size: medium; color: #999999;">&emsp;&emsp;&nbsp;&nbsp;余额：100000元</div>
				<br> &emsp;&emsp;<input type="button" name="chongzhiyue"
					value="充值余额" /> &emsp; <input type="button" name="yuetixian"
					value="余额提现" />
					<br>
					<br>
					<br>
					
					 &emsp; &emsp; &emsp; &emsp;<a href="SellerAction!shangjia.action">上架商品</a>
			</div>
			<hr
				style="width: 1px; height: 1000px;border:none;border-top: 1px solid #555555" />
			<div class="body-content">
				后台管理 > 商品管理
				<br>
				<br>
				<br>
				
				<table class="producttable">
						<thead>
						          
							<tr>
								<th class="tdone">序号</th>
								<th>图片</th>
								<th class="tdtwo">商品名称</th>
								<th class="tdthree">数量</th>
								<th>价格</th>
								<th>状态</th>
								<th class="tdsix">操作</th>
							</tr>
						</thead>
						<tbody>

							<s:iterator value="productList" id="product" status="st">

								<tr class="trclass">
									<td class="tdone xuhao"><s:property value="#product.id" /></td>
									<td width="50px"><img src="<s:property value="#product.picUrl" />" height="50px" width="50px" align="center"></td>
									<td class="tdtwo ">
										<s:property value="#product.name" />
									</td>
									<td class="tdthree">
										<s:property value="#product.num" />
									</td>
									<td class="tdfour">
										<s:property value="#product.price" />
									</td>
									<td><font  color="red">在售</font></td>
									<td class="tdfive" width="80px"><input type="button" value="下架" style="width:80px;height:50px;border: none;" ></td>

								</tr>
							</s:iterator>


						</tbody>
					</table>

				<table class="notproducttable">
						
						<thead>
						
						


							<tr>
								<th class="tdone">序号</th>
								<th>图片</th>
								<th class="tdtwo">商品名称</th>
								<th class="tdthree">数量</th>
								<th>价格</th>
								<th>状态</th>
								<th class="tdsix">操作</th>
							</tr>
						</thead>
						<tbody>

							<s:iterator value="notonsellproductList" id="product" status="st">

								<tr class="trclass">
									<td class="tdone xuhao"><s:property value="#product.id" /></td>
									<td width="50px"><img src="<s:property value="#product.picUrl" />" height="50px" width="50px" align="center"></td>
									<td class="tdtwo ">
										<s:property value="#product.name" />
									</td>
									<td class="tdthree">
										<s:property value="#product.num" />
									</td>
									<td class="tdfour">
										<s:property value="#product.price" />
									</td>
									<td><font  color="grey">下架</font></td>
									<td class="tdfive" width="80px"><input type="button" value="上架" style="width:80px;height:50px;border: none;" ></td>

								</tr>
							</s:iterator>


						</tbody>
					</table>
			</div>
		</div>


	</div>
	<div class="footer" align="center">
		<div class="span24">
			<ul class="footers">
				<li><a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">诚聘英才</a>
					| <a href="#">法律声明</a> | <a href="#">友情链接</a> |</li>
			</ul>
		</div>
		<div class="span24">
			<div class="copyright">Copyright © 2019-2029 网上商城 版权所有</div>
		</div>
	</div>
	</div>
</body>
</html>
