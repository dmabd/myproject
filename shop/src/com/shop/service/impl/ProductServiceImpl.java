package com.shop.service.impl;

import java.util.List;

import com.shop.bean.Product;
import com.shop.dao.ProductDao;
import com.shop.service.ProductService;

public class ProductServiceImpl implements ProductService{

	private ProductDao dao;
	
	public ProductDao getDao() {
		return dao;
	}

	public void setDao(ProductDao dao) {
		this.dao = dao;
	}
	
	@Override
	public List<Product> queryProductOnSale() {
		return dao.queryProductOnSale();
	}

	@Override
	public List<Product> queryProductBySearch(String search) {
		
		return dao.queryProductBySearch(search);
	}

	@Override
	public Product queryProductById(Integer id) {
		return dao.queryProductById(id);
	}

	@Override
	public List<Product> queryProductsByUserId(int userId) {

		return dao.queryProductsByUserId(userId);
	}

	@Override
	public List<Product> querynotonsellProductsByUserId(int userId) {
		return dao.querynotonsellProductsByUserId(userId);
	}



	
}
