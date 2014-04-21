package com.cdug.controller;

import java.util.Date;

import com.cdug.config.GlobalConfig;
import com.cdug.interceptor.AdminRequiredInterceptor;
import com.cdug.interceptor.LoginInterceptor;
import com.cdug.interceptor.UserManagementInterceptor;
import com.cdug.model.Users;
import com.cdug.tool.MD5Tool;
import com.cdug.tool.UITools;
import com.jfinal.aop.Before;
import com.jfinal.aop.ClearInterceptor;
import com.jfinal.core.Controller;

@Before({ UserManagementInterceptor.class, LoginInterceptor.class,
		AdminRequiredInterceptor.class })
public class UserManageController extends Controller {

	/*
	 * List user in management page
	 */
	public void index() {
		String flag = getPara(0);
		if (flag != null) {
			if (flag.equals(GlobalConfig.SUCCESS)) {
				setAttr("msg", "Operation Success!");
			}
		}
		Users user = getSessionAttr("loginUser");
		if (user != null) {
			setAttr("users", new Users().getUsers(user.getInt("id")));
			render("/backpage/user/list_user.html");
		} else {
			redirect("/private/login/");
		}

	}

	public void addUser() {
		if ("GET".equals(getRequest().getMethod())) {
			render("/backpage/user/add_user.html");
		} else {
			String email = getPara("email");
			String password = getPara("password");
			String name = getPara("name");
			int isActive = UITools.convertCheckboxValue(getPara("active"));
			String role = getPara("role");
			password = MD5Tool.GetMd5(password);
			if (Users.dao.addUser(email, password, name, role, new Date(),
					isActive)) {
				redirect("/private/user/success");
			} else {
				render("/backpage/feedback/error.html");
			}
		}
	}

	public void delete() {
		String uid = getPara(0);
		if (new Users().deleteById(uid)) {
			redirect("/private/user/success");
		} else {
			render("/backpage/feedback/error.html");
		}

	}

	public void mark() {
		int uid = Integer.parseInt(getPara(0));
		String role = getPara(1);
		if (Users.dao.updateUserRole(uid, role)) {
			redirect("/private/user");
		} else {
			redirect("/private/user");
		}
	}

	public void update() {
		if ("GET".equals(getRequest().getMethod())) {
			render("/backpage/feedback/error.html");
		} else {
			int id = getParaToInt("id");
			String email = getPara("email");
			String password = getPara("password");
			String name = getPara("name");
			int isActive = UITools.convertCheckboxValue(getPara("active"));
			String role = getPara("role");
			setAttr("user", new Users().findById(id));
			if (Users.dao.updateUser(id, email, password, name, role, isActive)) {
				setAttr("result", "Success");
				render("/backpage/user/profile.html");
			} else {
				setAttr("result", "Fail");
				redirect("/private/user/profile/" + id);
			}

		}
	}

	@ClearInterceptor
	@Before(LoginInterceptor.class)
	public void myprofile() {
		if ("GET".equals(getRequest().getMethod())) {
			setAttr("user", getSessionAttr("loginUser"));
			render("/backpage/user/myprofile.html");
		} else {
			// update my profile
			String email = getPara("email");
			String password = getPara("password");
			String name = getPara("name");
			Users user = getSessionAttr("loginUser");
			password = MD5Tool.GetMd5(password);
			if (email.equals(user.get("email"))
					&& password.equals(user.get("password"))
					&& name.equals(user.get("name"))) {
				setAttr("result", "Success");
			} else {
				if (Users.dao.updateUser(user.getInt("id"), password, name)) {
					setAttr("result", "Success");
				} else {
					setAttr("result", "Fail");
				}
			}
			Users new_user = Users.dao.findById(user.getInt("id"));
			setAttr("user", new_user);
			setSessionAttr("loginUser", new_user);
			render("/backpage/user/myprofile.html");
		}
	}

	public void profile() {
		String uid = getPara(0);
		setAttr("user", new Users().findById(uid));
		render("/backpage/user/profile.html");
	}
}
