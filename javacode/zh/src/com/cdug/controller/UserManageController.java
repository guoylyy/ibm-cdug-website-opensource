package com.cdug.controller;

import java.util.Date;

import com.cdug.interceptor.UserManagementInterceptor;
import com.cdug.model.Users;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

@Before(UserManagementInterceptor.class)
public class UserManageController extends Controller {

	/*
	 * List user in management page
	 */
	public void index() {
		setAttr("users", new Users().getUsers());
		render("/backpage/user/list_user.html");
	}

	public void addUser() {
		if ("GET".equals(getRequest().getMethod())) {
			render("/backpage/user/add_user.html");
		} else {
			String email = getPara("email");
			String password = getPara("password");
			String name = getPara("name");
			String isActive = getPara("active");
			String role = "USER";

			if (new Users().addUser(email, password, name, role, new Date())) {
				render("/backpage/feedback/success.html");
			} else {
				render("/backpage/feedback/error.html");
			}
		}
	}
	
	public void delete(){
		String uid = getPara(0);
		if(new Users().deleteById(uid)){
			renderText("success");
		}else{
			renderText("fail");
		}
		
	}
	
	public void update(){
		if("GET".equals(getRequest().getMethod())){
			render("/backpage/feedback/error.html");
		}else{
			String uid = getPara("id");
			String email = getPara("email");
			String password = getPara("password");
			String name = getPara("name");
			String isActive = getPara("active");
			String role = "USER";
			renderText("success");
		}
	}
	
	public void myprofile() {
		render("/backpage/user/myprofile.html");
	}

	public void profile() {
		String uid = getPara(0);
		setAttr("user", new Users().findById(uid));
		render("/backpage/user/profile.html");
	}
}
