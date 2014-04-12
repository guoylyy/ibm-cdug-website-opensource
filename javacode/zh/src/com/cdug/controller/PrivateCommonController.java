package com.cdug.controller;

import com.cdug.interceptor.LoginInterceptor;
import com.cdug.model.Users;
import com.cdug.tool.MD5Tool;
import com.cdug.validator.LoginValidator;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

public class PrivateCommonController extends Controller {

	@Before(LoginInterceptor.class)
	public void index() {
		render("/backpage/index.html");
	}

	@Before(LoginInterceptor.class)
	public void logout() {
		removeSessionAttr("loginUser");
		redirect("private/login/");
	}

	@Before(LoginValidator.class)
	public void login() {
		if ("GET".equals(getRequest().getMethod())) {
			if (getSessionAttr("loginUser") == null) {
				setAttr("emailMsg", "");
				setAttr("passwordMsg", "");
				setAttr("msg", "");
				render("/backpage/login.html");
			} else {
				redirect("/private");
			}
		} else {
			String username = getPara("email");
			String password = getPara("password");
			password = MD5Tool.GetMd5(password);
			if (Users.dao.login(username, password)) {
				setSessionAttr("loginUser", Users.dao.getUserByEmail(username));
				redirect("/private/");
			} else {
				setAttr("msg", "Email or Password incorrect!");
				render("/backpage/login.html");
			}
		}
	}
}
