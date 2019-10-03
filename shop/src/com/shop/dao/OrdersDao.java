package com.shop.dao;

import java.util.List;

import com.shop.bean.Orders;
import com.shop.bean.Product;
import com.shop.bean.SellProductVo;

public interface OrdersDao {
	public boolean addOrderByOrder(Orders order);
	public List<SellProductVo> queryOrders(int userId,String state);
}
