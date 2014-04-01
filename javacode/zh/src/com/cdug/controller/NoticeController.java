package com.cdug.controller;

import com.jfinal.core.Controller;

public class NoticeController extends Controller{
	public void index(){
		render("/page/news/notice-index.html");
	}
	public void content(){
		render("/page/news/notice-content.html");
	}
}
