package com.shop.bean;

import java.util.Date;

public class Product {
	private Integer id;
	private Integer userId;
	private String name;
	private String picUrl;
	private String type;
	private Double price;
	private String description;
	private String state;
	private Integer num;
	private String location;
	private Date dateOnSale;
	private Date dateSubmit;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getDateOnSale() {
		return dateOnSale;
	}
	public void setDateOnSale(Date dateOnSale) {
		this.dateOnSale = dateOnSale;
	}
	public Date getDateSubmit() {
		return dateSubmit;
	}
	public void setDateSubmit(Date dateSubmit) {
		this.dateSubmit = dateSubmit;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", userId=" + userId + ", name=" + name
				+ ", picUrl=" + picUrl + ", type=" + type + ", price=" + price
				+ ", description=" + description + ", state=" + state
				+ ", num=" + num + ", location=" + location + ", dateOnSale="
				+ dateOnSale + ", dateSubmit=" + dateSubmit + "]";
	}
	
	
	
}
