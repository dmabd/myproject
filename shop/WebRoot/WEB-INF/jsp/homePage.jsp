<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="css/main.css" />
	<link rel="stylesheet" type="text/css" href="css/header.css" />    
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
						<li style="display: list-item;" id="headerLogin" class="headerLogin">

							<a href="#">登录</a>&emsp;
							<a href="#">注册</a>&emsp;
							<a href="#">[注销]</a>&emsp;

							<a>会员中心</a>
							&emsp;
							<a>购物指南</a>
							&emsp;
							<a>关于我们</a>

						</li>
					</ul>
				</div>
			</div>
			<div class="header">
				<div class="search">
					<form action="ProductAction!search.action">
					<input type="text" name="search_content" id="search_content" value="" />
					<input type="button" value="搜 索" id="search_btn" onclick="" />	
					</form>
					
				</div>
			</div>
			
			<div class="classify" align="center">
				<a href="#">沙发</a>
				<a href="#">床垫</a>
				<a href="#">电脑</a>
				<a href="#">椅子</a>
				<a href="#">拉杆箱</a>
				<a href="#">服装</a>
				<a href="#">窗帘</a>
				<a href="#">口红</a>
				<a href="#">手表</a>
				<a href="#">手机</a>

			</div>
			<div class="find">
				您是不是想找:&nbsp;
				<a href="#">女装2019新款</a>&nbsp;|
				<a href="#">潮女装2019款身 </a>&nbsp;|
				<a href="#">男士手提包真皮</a>&nbsp;|
				<a href="#">皮鞋真皮</a>&nbsp;

			</div>
				<div class="shouye">
		&nbsp;首页&emsp;&emsp;全部分类&emsp;&emsp;男款系列&emsp;&emsp;女款系列&emsp;&emsp;近视夹片系列&emsp;&emsp;儿童青少年系列&emsp;
		&emsp;太阳镜专区&emsp;&emsp;会员中心</div>	
			<div class="product_list">
			<ul>
				<s:iterator value="products" id="product" status="st">
				<li>
					<a href="ProductAction!productInfo.action?productId=<s:property value="#product.id" />">
						<img src="<s:property value="#product.picUrl"/>"/>
						<div class="product_info">
			
							<p class="product_name"><s:property value="#product.name"/></p>
							<br />
							
							<span class="product_price" style="color:#FF0000;font-size:20px;">￥<s:property value="#product.price"/></span>
							<span class="product_location"><s:property value="#product.location"/></span>
						</div>
					</a>	
				</li>
				</s:iterator>
			</ul>
			
		</div>
			<div class="footer" align="center">
				<div class="span24">
					<ul class="footers">
						<li>
							<a href="#">关于我们</a>
							|
							<a href="#">联系我们</a>
							|
							<a href="#">诚聘英才</a>
							|
							<a href="#">法律声明</a>
							|
							<a href="#">友情链接</a>
							|

						</li>
					</ul>
				</div>
				<div class="span24">
					<div class="copyright">Copyright © 2019-2029 网上商城 版权所有</div>
				</div>
			</div>
		</div>
	</body>
</html>
