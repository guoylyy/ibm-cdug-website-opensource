package com.cdug.config;

import com.cdug.controller.FileManageController;
import com.cdug.controller.PostManageController;
import com.cdug.controller.UserManageController;
import com.jfinal.config.Routes;

public class BackgroundRouter extends Routes{
	public void config(){
		add("/private/file",FileManageController.class);
		add("/private/post",PostManageController.class);
		add("/private/user",UserManageController.class);
	}
}
