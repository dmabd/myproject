package com.shop.service;

import java.util.List;

import com.shop.bean.Orders;
import com.shop.bean.Product;
import com.shop.bean.SellProductVo;

public interface OrdersService {
	public boolean addOrderByOrder(Orders order);
	public List<SellProductVo> queryShoppingCart(int userId);
}
