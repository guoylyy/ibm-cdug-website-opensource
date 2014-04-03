package com.cdug.controller;

import com.jfinal.core.Controller;

public class PostManageController extends Controller{
	public void index(){
		render("/backpage/post/list_post.html");
	}
	
	public void addPost(){
		render("/backpage/post/add_post.html");
	}
}
