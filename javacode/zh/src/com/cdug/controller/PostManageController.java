package com.cdug.controller;

import com.cdug.model.Posts;
import com.cdug.tool.UITools;
import com.jfinal.core.Controller;

public class PostManageController extends Controller {
	public void index() {
		setAttr("posts", new Posts().getPosts());
		render("/backpage/post/list_post.html");
	}

	public void addPost() {
		if ("GET".equals(getRequest().getMethod())) {
			render("/backpage/post/add_post.html");
		} else {

			String title = getPara("title");
			String content = getPara("content");
			String type = getPara("type");
			String author = "同济大学";
			int isDraft = UITools.convertCheckboxValue(getPara("draft"));
			if (new Posts().addPost(title, content, author, type, isDraft)) {
				render("/backpage/feedback/success.html");
			} else {
				render("/backpage/feedback/fail.html");
			}
		}

	}

	public void delete() {
		String id = getPara(0);
		if (Posts.dao.deleteById(id)) {
			renderText("success");
		} else {
			renderText("fail");
		}
	}

	public void edit() {
		String id = getPara(0);
		if ("GET".equals(getRequest().getMethod())) {
			setAttr("post", new Posts().findById(id));
			render("/backpage/post/edit_post.html");
		}else{
			//update
			render("/backpage/feedback/success.html");
		}
	}
}
