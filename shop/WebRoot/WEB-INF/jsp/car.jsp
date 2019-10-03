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
    
    <title>My JSP 'car.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<link rel="stylesheet" type="text/css" href="css/car.css" />
		<title>购物车</title>
		 <meta charset="UTF-8">
      <title>购物车</title>
      <script src="gg.js"></script>
      <style>
      	table{
    width:50%;
    position:relative;
    margin:30px auto;
    border-collapse: collapse;
    border:1px solid gray;
      }
th{
    background: cornflowerblue;
    height:2.5em;
   }
    .tdone{
        width:10%;
        }
    .tdtwo{
         width:20%;
    }
    .tdthree{      
         width:20%;
     }
     .tdfour{        
         width:20%;
              }
     .tdfive{
        width:20%;
    }
     .tdsix{     
         width:10%;
     }
  td{
        height:2em;       
          text-align: center;
         border:1px solid #ccc;
     }
     .num{
         display:inline-block;
        width:3em;
    }
 input{
        height:2em;
    }
    .talast{
        text-align: left;
    }
      
      
      
      </style>
		

  </head>
  
  <body>
        
    <script type="text/javascript">
		  window.onload = function(){
		         function cart(){
		             this.abtn = document.querySelectorAll('input');
		             this.ogood_num = document.querySelector('.goods_num');
		             this.opricetal = document.querySelector('.pricetal');
		             this.opricest = document.querySelector('.pricest');
		             this.totalnum = 0;
		         };
		          //小计:  商品数量 * 商品单价
		        cart.prototype.getsubtotal = function(goodsnum,unitprice){
		            return parseInt(goodsnum) * parseFloat(unitprice) ;
		        };
		        // 计算商品的总计花费
		        cart.prototype.gettotal = function(){
		            var asubtotal = document.querySelectorAll('.subtal');
		            var res = 0;
		            for(var i=0,len=asubtotal.length;i<len;i++){
		                res += parseFloat(asubtotal[i].innerHTML);
		            };   
		            return res;
		        };
		        // 寻找购物车中已经选中的产品的最大单价
		        cart.prototype.compareMaxunit = function(){
		            var anum = document.querySelectorAll('.num');
		            var aunit = document.querySelectorAll('.unit');
		            var temp = 0;
		            for(var i=0,len=anum.length;i<len;i++){
		                if(anum[i].innerHTML!=0){
		                    if(temp<parseFloat(aunit[i].innerHTML)){
		                        temp = parseFloat(aunit[i].innerHTML);
		                    }
		                }
		            };
		            return temp;
		        };
		        //打开页面就更新
		        cart.prototype.update= function(){
		      	  this.ogood_num.innerHTML = this.getNumbertal();
		            this.opricetal.innerHTML = this.gettotal();
		            this.opricest.innerHTML = this.compareMaxunit();
		            this.xuhaosort();
		        }
		        // 点击“+”号按钮触发的购物车商品数量，花费，最大价格的变动
		        cart.prototype.plus = function(obtn){
		            var onum = obtn.parentNode.querySelector('.num');
		            var n = parseInt(onum.innerHTML);
		            onum.innerHTML = ++n ;
		            this.totalnum++;
		            var oUnit = obtn.parentNode.parentNode.parentNode.querySelector('.unit');
		            var osubtotal = obtn.parentNode.parentNode.parentNode.querySelector('.subtal');
		            osubtotal.innerHTML = this.getsubtotal(onum.innerHTML,oUnit.innerHTML);
		            this.ogood_num.innerHTML = this.totalnum;
		            this.opricetal.innerHTML = this.gettotal();
		            this.opricest.innerHTML = this.compareMaxunit();
		        };
		        // 点击“-”号按钮触发的购物车商品数量，花费，最大价格的变动
		         cart.prototype.minus = function(obtn){
		            var onum = obtn.parentNode.querySelector('.num');
		            if(parseInt(onum.innerHTML)>0){
		                var n = parseInt(onum.innerHTML);
		                onum.innerHTML = --n ;
		                this.totalnum--;
		                var oUnit = obtn.parentNode.parentNode.parentNode.querySelector('.unit');
		                var osubtotal = obtn.parentNode.parentNode.parentNode.querySelector('.subtal');
		                osubtotal.innerHTML = this.getsubtotal(onum.innerHTML,oUnit.innerHTML);
		                this.ogood_num.innerHTML = this.totalnum;
		                this.opricetal.innerHTML = this.gettotal();
		                this.opricest.innerHTML = this.compareMaxunit();
		            }  
		        };
		        // 获取已买商品的总计数量
		        cart.prototype.getNumbertal = function(){
		             var anum = document.querySelectorAll('.num');
		             var res_num = 0;
		             for(var i =0;i<anum.length;i++){
		                 res_num += parseInt( anum[i].innerHTML ) ;
		             }
		             return res_num ;
		        }
		        // 删除按钮触发的购物车商品数量，花费，最大价格的变动
		        cart.prototype.del = function(obtn){
		            var odel = obtn.parentNode.parentNode;
		            var oparent = odel.parentNode;
		            oparent.removeChild(odel);
		            this.ogood_num.innerHTML = this.getNumbertal();
		            this.opricetal.innerHTML = this.gettotal();
		            this.opricest.innerHTML = this.compareMaxunit();
		            this.xuhaosort();
		           
		        }
		        
		        // 购物车序号重新排序
		        cart.prototype.xuhaosort = function(){
		            var axuhao = document.querySelectorAll('.xuhao');
		            for(var i=0,len=axuhao.length;i<len;i++){
		                axuhao[i].innerHTML = i+1;
		            }
		        }
		        // 绑定“+”，“-”，删除按钮的点击事件
		        cart.prototype.bind = function(){
		            var that = this ;
		            for(var i=0;i<this.abtn.length;i++){
		                if(i%2 !=0){
		                    this.abtn[i].onclick = function(){
		                        that.plus(this);
		                    }
		               }else{
		                     this.abtn[i].onclick = function(){
		                       that.minus(this);
		                   }
		               }
		           };
		           var delbtn = document.querySelectorAll('.del');
		           for(var i=0;i<delbtn.length;i++){
		               delbtn[i].onclick = function(){
		                   that.del(this);
		               }
		          }
		       };
		       var oCart = new cart();
		       oCart.bind();
		       oCart.update()
		   }

		  
		  
		  
	  </script>
     <table>
         <thead>

         
             <tr>
                 <th class="tdone">序号</th>
                 <th class="tdtwo">商品名称</th>
                 <th class="tdthree">数量</th>
                 <th class="tdfour">单价</th>
                 <th class="tdfive">小计</th>
                 <th class="tdsix">操作</th>
             </tr>
         </thead>
                 <tbody>
                 
              <s:iterator value="scList" id="sc" status="st">
        
                

             <tr class="trclass">
                 <td class="tdone xuhao">1</td>
                 <td class="tdtwo "><s:property value="#sc.name"/></td>
                 <td class="tdthree"><span class="jiajie"><input type="button" value="-"><span class="num">0</span><input type="button" value="+"></span></td>
                 <td class="tdfour"><span>单价：</span><span class="unit"><s:property value="#sc.perPrice"/></span></td>
                 <td class="tdfive"><span>小计：</span><span class="subtal">0</span></td>
                 <td class="tdsix"><button class="del">删除</button></td>
             </tr>
             </s:iterator>
             
               
             <tr><td   colspan="6"; class="talast"><span>商品一共 <span class="goods_num">0</span> 件; 共计花费 <span class="pricetal">0</span> 元; 其中最贵的商品单价是 <span class="pricest">0</span> 元</span></td></tr>

         
        
         
         </tbody>
     </table>
  </body>
</html>
