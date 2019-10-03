package com.shop.action;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.shop.bean.Product;
import com.shop.service.ProductService;

public class SellerAction {
	private ProductService productService;
	private List<Product> productList;
	private List<Product> notonsellproductList;
	
	public String sellerProductsList(){
		int userId=0;
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cArr = request.getCookies();
		for (Cookie cookie : cArr) {
			if (cookie.getName().equals("USERID")) {
				userId=Integer.parseInt(cookie.getValue());
			}
		}
		setProductList(productService.queryProductsByUserId(userId));
		setNotonsellproductList(productService.querynotonsellProductsByUserId(userId));
		return "sellerPage";
	}
	public String shangjia(){
		return "tianxie";
		
	}
	public String fanhui(){
		return "sellerPage";
	}
	
	
	
	

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}






	public List<Product> getProductList() {
		return productList;
	}






	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}






	public List<Product> getNotonsellproductList() {
		return notonsellproductList;
	}






	public void setNotonsellproductList(List<Product> notonsellproductList) {
		this.notonsellproductList = notonsellproductList;
	}
	

}
