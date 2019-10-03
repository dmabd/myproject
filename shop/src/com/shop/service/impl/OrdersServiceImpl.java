package com.shop.service.impl;

import java.util.List;

import com.shop.bean.Orders;
import com.shop.bean.Product;
import com.shop.bean.SellProductVo;
import com.shop.dao.OrdersDao;
import com.shop.service.OrdersService;

public class OrdersServiceImpl implements OrdersService{

	private OrdersDao dao;
	
	
	
	public OrdersDao getDao() {
		return dao;
	}



	public void setDao(OrdersDao dao) {
		this.dao = dao;
	}



	@Override
	public boolean addOrderByOrder(Orders order) {
		return dao.addOrderByOrder(order);
	}



	@Override
	public List<SellProductVo> queryShoppingCart(int userId) {
		// TODO Auto-generated method stub
		
		return dao.queryOrders(userId, "0");
	}








}
