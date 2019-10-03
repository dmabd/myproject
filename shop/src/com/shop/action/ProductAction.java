package com.shop.action;

import java.util.List;

import com.shop.bean.Product;
import com.shop.service.ProductService;

public class ProductAction {
	private ProductService productService;
	
	private List<Product> products;
	
	private Product product;
	
	private String search_content;
	
	private Integer productId;
	
	public String homePage(){
		
		products = productService.queryProductOnSale();
		
		return "homePage";
	}

	public String search(){
		
		if(!search_content.equals("")){
		
			products = productService.queryProductBySearch(search_content);
		
		}else {
			products = productService.queryProductOnSale();
		}
		
		return "homePage";
	}
	
	public String productInfo(){
		
		product = productService.queryProductById(productId);
		
		System.out.println(product.toString());
		
		return "massage";
	}
	
	
	
	
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}



	public List<Product> getProducts() {
		return products;
	}



	public void setProducts(List<Product> products) {
		this.products = products;
	}



	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public String getSearch_content() {
		return search_content;
	}

	public void setSearch_content(String search_content) {
		this.search_content = search_content;
	}
	
	
}
