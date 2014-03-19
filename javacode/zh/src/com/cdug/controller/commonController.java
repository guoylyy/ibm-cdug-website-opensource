package com.cdug.controller;
import com.cdug.model.News;
import com.jfinal.core.Controller;

public class commonController extends Controller{
	public void index(){
		News n = News.dao.findById(1);
	    System.out.println(n.get("title"));
		render("/page/index.html");
	}
	
	public void about(){
		render("/page/about.html");
	}
}
