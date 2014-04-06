package com.cdug.model;

import java.util.ArrayList;
import java.util.Date;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Posts extends Model<Posts> {
	public static Posts dao = new Posts();

	public ArrayList<Posts> getPosts() {
		return (ArrayList<Posts>) Posts.dao.find("select * from posts");
	}

	public boolean addPost(String title, String content, String author,
			String type, int isDraft) {
		return new Posts().set("title", title).set("content", content)
				.set("author", author).set("type", type)
				.set("isDraft", isDraft).set("create_time", new Date())
				.set("update_time", new Date()).save();
	}

}
