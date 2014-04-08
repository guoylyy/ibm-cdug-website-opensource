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
			if (Posts.dao.addPost(title, content, author, type, isDraft)) {
				render("/backpage/feedback/success.html");
			} else {
				render("/backpage/feedback/fail.html");
			}
		}

	}

	public void delete() {
		String id = getPara(0);
		if (Posts.dao.deleteById(id)) {
			redirect("/private/post");
		} else {
			renderText("fail");
		}
	}

	public void edit() {
		if ("GET".equals(getRequest().getMethod())) {
			String id = getPara(0);
			setAttr("post", new Posts().findById(id));
			render("/backpage/post/edit_post.html");
		} else {
			// update
			String pid = getPara("id");
			String title = getPara("title");
			String content = getPara("content");
			String type = getPara("type");
			int isDraft = UITools.convertCheckboxValue(getPara("draft"));
			if(Posts.dao.updatePost(pid, title, content, type, isDraft)){
				render("/backpage/feedback/success.html");
			}else{
				render("/backpage/feedback/error.html");
			}
		}
	}
}
