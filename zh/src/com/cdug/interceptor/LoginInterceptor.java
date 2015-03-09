package com.cdug.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.Controller;

public class LoginInterceptor implements Interceptor {
	public void intercept(ActionInvocation ai) {
		ai.invoke();
		Controller controller = ai.getController();
		if (controller.getSessionAttr("loginUser") == null) {
			controller.setAttr("msg", "");
			controller.setAttr("emailMsg", "");
			controller.setAttr("passwordMsg", "");
			controller.redirect("/private/login/");
		}else{
			controller.setAttr("sessionUser", controller.getSessionAttr("loginUser"));
		}
	}
}
