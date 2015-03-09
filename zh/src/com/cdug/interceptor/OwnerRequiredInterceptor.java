package com.cdug.interceptor;

import com.cdug.model.Materials;
import com.cdug.model.Posts;
import com.cdug.model.Users;
import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.Controller;

public class OwnerRequiredInterceptor implements Interceptor {
	public void intercept(ActionInvocation ai) {
		ai.invoke();
		String key = ai.getControllerKey();
		Controller controller = ai.getController();
		key = key.split("/")[key.split("/").length - 1];
		Users user = controller.getSessionAttr("loginUser");
		if (user == null) {
			controller.redirect("/private/login");
		} else if (!user.isAdmin()) {
			int id = 0;
			if(controller.getRequest().getMethod().equals("GET")){
				id = controller.getParaToInt(0);
			}else{
				id = controller.getParaToInt("id");
			}
			
			if (key.equals("material")) {
				
				int muser_Id = Materials.dao.getUserId(id);
				if (muser_Id == -1) {
					controller.renderText("No this object"); // to 404
				} else if (user.getInt("id") != muser_Id) {
					controller
							.renderText("You are not authorized to do this action!");
				}
			} else if (key.equals("post")) {
				int puser_id = Posts.dao.getUserId(id);
				if (puser_id == -1) {
					controller.renderText("No this object"); // to 404
				} else if (user.getInt("id") != puser_id) {
					controller
							.renderText("You are not authorized to do this action!");
				}
			}
		}
	}
}
