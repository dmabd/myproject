package com.shop.action;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.shop.bean.User;
import com.shop.service.UserService;

public class UserAction {
	private UserService userService;
	
	private String username;
	private String password;
	private String type;
	private String r_username;
	private String r_password;
	private String r_type;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getR_username() {
		return r_username;
	}

	public void setR_username(String r_username) {
		this.r_username = r_username;
	}

	public String getR_password() {
		return r_password;
	}

	public void setR_password(String r_password) {
		this.r_password = r_password;
	}

	public String getR_type() {
		return r_type;
	}

	public void setR_type(String r_type) {
		this.r_type = r_type;
	}

	public String preLogin(){
		return "login";
	}
	
	public String preRegister(){
		return "register";
	}
	
	public String login() throws IOException{
		User user = userService.queryUserByUsername(username);
		if(user!=null && user.getPassword().equals(password)){
			String un = URLEncoder.encode(username,"utf-8");
			Cookie cookie = new Cookie("USERNAME",un);
			HttpServletResponse response = ServletActionContext.getResponse();
			cookie.setPath("/");
			response.addCookie(cookie);
			String uid=URLEncoder.encode(user.getId()+"","utf-8");
			Cookie cookie2 = new Cookie("USERID",uid);
			response.addCookie(cookie2);
			String managername="dm";
			if(username.equals(managername)){
				return "manager";
				}
			else{
				return "success";
			}
						
		}else{
			return "login";
		}
	}
	
	public String register(){
		User u = userService.queryUserByUsername(r_username);
		if(u == null){
			User user= new User();
			user.setUsername(r_username);
			user.setPassword(r_password);
			user.setType(r_type);
			userService.addUser(user);
			return "login";
		}
		return "register";
	}
	

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	
}
