package com.cdug.config;

import com.cdug.controller.AboutController;
import com.cdug.controller.HistoryController;
import com.cdug.controller.MaterialController;
import com.cdug.controller.NewsController;
import com.cdug.controller.NoticeController;
import com.jfinal.config.Routes;

public class FrontgroundRouter extends Routes{
	public void config(){
		add("/news",NewsController.class);
		add("/notice",NoticeController.class);
		add("/material",MaterialController.class);
		add("/about",AboutController.class);
		add("/history",HistoryController.class);
	}
}
