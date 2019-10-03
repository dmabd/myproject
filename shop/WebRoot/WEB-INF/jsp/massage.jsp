<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>物品详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/shouye.css">
<link rel="stylesheet" type="text/css" href="css/header2.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />

<script type="text/javascript">
	function addcar() {
		document.getElementById("car").action = "OrdersAction!insert.action";
		document.getElementById("car").submit();
	}
</script>
<style type="text/css">

.box {
	width: 192px;
	height: 50px;
	border: none;
}

#left,#center,#right {
	float: left;
	width: 50px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: #eee;
	font-weight: bold;
	font-size: 18px;
	cursor: pointer;
}

#center {
	width: 90px;
	background: #fff;
	cursor: auto;
}

#right {
	float: right;
	cursor: pointer;
}
</style>
<script type="text/javascript">
	if (window.addEventListener) {
		window.addEventListener("load", init);
	} else if (window.attachEvent()) {
		window.attachEvent("onload", init); //IE浏览器在写时间的时候必须加上on
	}

	function init() {
		var left = document.getElementById("left");
		left.onclick = function() {
			leftNum();
		}

		var right = document.getElementById("right");
		right.onclick = function() {
			rightNum();
		}

		function leftNum() {
			var center = document.getElementById("center").innerHTML;
			if (center > 1) { //如果中间显示的数大于1
				center--; //自减
				currentNum(center); //中间显示自减后的数值
			} else {
				alert("已经是第一个数了！！！");
			}
		}

		function rightNum() {
			var center = document.getElementById("center").innerHTML;
			if (center < 10) { //如果中间显示的数值小于最大的数
				center++ //自加
				currentNum(center); //在中间显示自加后的数值
			} else {
				alert("已经是最后一个数了！！！");
			}
		}

		function currentNum(num) {
			center.innerHTML = num; //在中间显示相应的数值
		}
	}
</script>


</head>

<body>

	<div class="a">
		<ul>
			<li style="display: list-item;" id="headerLogin" class="headerLogin"><a
				href="#">登录</a>&emsp; <a href="#">注册</a>&emsp; <a href="#">[注销]</a>&emsp;
				<a>会员中心</a> &emsp; <a>购物指南</a> &emsp; <a>关于我们</a></li>
		</ul>
	</div>
	<div class="header">
		<div class="search">
			<input type="text" name="search_content" id="search_content" value="" />
			<input type="button" value="搜 索" id="search_btn" onclick="" />
		</div>
	</div>

	<div class="shouye">
		&nbsp;首页&emsp;&emsp;全部分类&emsp;&emsp;男款系列&emsp;&emsp;女款系列&emsp;&emsp;近视夹片系列&emsp;&emsp;儿童青少年系列&emsp;
		&emsp;太阳镜专区&emsp;&emsp;会员中心</div>

	<p>
		首页 >
		<s:property value="product.name" />
	</p>

	<div class="Xcontent">
		<form action="" id="car">
			<ul class="Xcontent01">

				<div class="Xcontent06">
					<img src="<s:property value="product.picUrl"/>" height="300px"
						width="270px" />
				</div>

				<ol class="Xcontent13">

					<input type="hidden" name="order.productId"
						value="<s:property value = "product.id" />">
					<input type="hidden" name="order.saleUserId"
						value="<s:property value = "product.userId"/>">
					<div class="Xcontent14">
						<a href="#">
							<p>
								<s:property value="product.name" />
							</p>
						</a>
					</div>

					<div class="Xcontent16">
						<p></p>

					</div>
					<div class="Xcontent17">
						<p class="Xcontent18">售价:</p>
						<p class="Xcontent19">
							￥<span id="totalPrice" name="order.price"><s:property
									value="product.price" /></span>
						</p>
						<input type="hidden" name="order.price"
							value="<s:property
								value="product.price" />" /> <input
							type="hidden" value="<s:property value="product.price" />"
							id="price" />


						<div class="Xcontent20">
							<p class="Xcontent21">促销：暂无</p>
						</div>

					</div>
					<div class="Xcontent30">
						<br>
						<p>
							数量（库存：
							<s:property value="product.num" />
							）：
						</p>
						<div class="box">
							<div id="left"><</div>
							<div id="center" name="order.saleNum">1</div>
							<div id="right">></div>
						</div>

					</div>

					<div class="jiaru">

						<br>
						<input type="button" value="加入购物车" class="jiarugouwuche" align="left" onclick="addcar()" />
						<p>温馨提示：支持七天无理由退货</p>

					</div>

				</ol>

			</ul>
		</form>
	</div>
	<div class="descriptionmenu">&nbsp;商品介绍&emsp;&emsp;评价</div>
	<div class="description">
		<s:property value="product.description" />

	</div>

</body>
</html>
