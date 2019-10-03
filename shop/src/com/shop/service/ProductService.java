package com.shop.service;

import java.util.List;

import com.shop.bean.Product;

public interface ProductService {
	public List<Product> queryProductOnSale();
	public List<Product> queryProductBySearch(String search);
	public Product queryProductById(Integer id);
	public List<Product> queryProductsByUserId(int userId);
	public List<Product> querynotonsellProductsByUserId(int userId);
}
