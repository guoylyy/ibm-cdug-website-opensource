package com.cdug.controller;

import com.cdug.interceptor.LoginInterceptor;
import com.cdug.interceptor.OwnerRequiredInterceptor;
import com.cdug.model.Files;
import com.cdug.model.Posts;
import com.cdug.model.Users;
import com.cdug.tool.UITools;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

@Before({ LoginInterceptor.class })
public class PostManageController extends Controller {
	public void index() {
		Users user = getSessionAttr("loginUser");
		if (user != null) {
			if (user.isAdmin()) {
				setAttr("posts", Posts.dao.getPosts());
			} else {
				setAttr("posts", Posts.dao.getPosts(user.getInt("id")));
			}
			render("/backpage/post/list_post.html");
		} else {
			redirect("/private/login/");
		}
	}

	public void addPost() {
		if ("GET".equals(getRequest().getMethod())) {
			render("/backpage/post/add_post.html");
		} else {
			String title = getPara("title");
			String content = getPara("content");
			String type = getPara("type");
			String[] file_ids = UITools.convertIdsValue(getParaValues("file"));
			Users user = getSessionAttr("loginUser");
			int isDraft = UITools.convertCheckboxValue(getPara("draft"));
			if (Posts.dao
					.addPost(title, content, type, isDraft, user, file_ids)) {
				redirect("/private/post");
			} else {
				render("/backpage/feedback/fail.html");
			}
		}

	}

	@Before(OwnerRequiredInterceptor.class)
	public void delete() {
		String id = getPara(0);
		if (Posts.dao.deleteById(id)) {
			redirect("/private/post");
		} else {
			renderText("fail");
		}
	}

	@Before(OwnerRequiredInterceptor.class)
	public void edit() {
		if ("GET".equals(getRequest().getMethod())) {
			int id = getParaToInt(0);
			setAttr("post", Posts.dao.findById(id));
			setAttr("files", Files.dao.getFilesByPostId(id));
			render("/backpage/post/edit_post.html");
		} else {
			// update
			int pid = getParaToInt("id");
			String title = getPara("title");
			String content = getPara("content");
			String type = getPara("type");
			String[] file_ids = UITools.convertIdsValue(getParaValues("file"));
			int isDraft = UITools.convertCheckboxValue(getPara("draft"));

			if (Posts.dao.updatePost(pid, title, content, type, isDraft,
					file_ids)) {
				setAttr("result", "Success");
			} else {
				setAttr("result", "Fail");
			}
			setAttr("files", Files.dao.getFilesByPostId(pid));
			setAttr("post", new Posts().findById(pid));
			render("/backpage/post/edit_post.html");
		}
	}
}
