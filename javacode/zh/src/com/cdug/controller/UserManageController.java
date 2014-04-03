package com.cdug.controller;

import com.cdug.model.Users;
import com.jfinal.core.Controller;

public class UserManageController extends Controller{
	
	/*
	 * List user in management page
	 */
	public void index(){
		setAttr("users", new Users().getUsers());
		render("/backpage/user/list_user.html");
	}
	
	public void addUser(){
		String email = getPara("email");
		String password = getPara("password");
		String name = getPara("name");
		String role = "USER";
		render("/backpage/user/add_user.html");
	}
	
	public void myprofile(){
		render("/backpage/user/myprofile.html");
	}
	
	public void profile(){
		render("/backpage/user/profile.html");
	}
}
