package com.shop.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.shop.bean.Orders;
import com.shop.bean.Product;
import com.shop.bean.SellProductVo;
import com.shop.service.OrdersService;

public class OrdersAction {
	private OrdersService ordersService;
	private Orders order;
	private List<SellProductVo> scList;
	
	

	public OrdersService getOrdersService() {
		return ordersService;
	}

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}
	public String shoppingCartList(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cArr = request.getCookies();
		for (Cookie cookie : cArr) {
			if (cookie.getName().equals("USERID")) {
				scList =ordersService.queryShoppingCart(Integer.parseInt(cookie.getValue()));
			}
		}
		return "shopcart";
		
		
	}

	 public static String getOrderIdByTime() {
	        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
	        String newDate=sdf.format(new Date());
	        String result="";
	        Random random=new Random();
	        for(int i=0;i<3;i++){
	            result+=random.nextInt(10);
	        }
	        return newDate+result;
	    }

	public String insert() throws Exception {
		String id=null;
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cArr = request.getCookies();
		for (Cookie cookie : cArr) {
			if (cookie.getName().equals("USERID")) {
				order.setUserId(Integer.parseInt(cookie.getValue()));
			}
		}
		order.setSaleDate(new Date());
		order.setOrderId(getOrderIdByTime());
		order.setState("0");
		boolean b = ordersService.addOrderByOrder(order);
		if (b) {
			return "successCar";
		}
		return "massageCar";
	}

	public List<SellProductVo> getScList() {
		return scList;
	}

	public void setScList(List<SellProductVo> scList) {
		this.scList = scList;
	}


}
