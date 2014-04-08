package com.cdug.controller;
import com.cdug.model.Posts;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

public class CommonController extends Controller{
	public void index(){
		//get things to render in index page
		Page<Posts> news = Posts.dao.paginate(1, 3, "select *","from posts where type = ? order by id desc","NEWS");
		Page<Posts> notices = Posts.dao.paginate(1, 3, "select *","from posts where type = ? order by id desc","NOTICE");
		setAttr("news", news);
		setAttr("notices", notices);
		render("/page/index.html");
	}
}
