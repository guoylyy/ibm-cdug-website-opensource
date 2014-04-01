package com.cdug.controller;

import com.jfinal.core.Controller;

public class NewsController extends Controller{
	public void index(){
		render("/page/news/news-index.html");
	}
	public void content(){
		render("/page/news/news-content.html");
	}
	
}
