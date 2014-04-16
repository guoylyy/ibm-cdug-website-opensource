package com.cdug.model;

import java.util.ArrayList;
import java.util.Date;

import com.cdug.config.GlobalConfig;
import com.cdug.tool.DataHanlder;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class Posts extends Model<Posts> {
	public static Posts dao = new Posts();

	public ArrayList<Posts> getPosts() {
		return (ArrayList<Posts>) Posts.dao
				.find("select * from posts order by id desc");
	}

	public ArrayList<Posts> getPosts(int uid) {
		return (ArrayList<Posts>) Posts.dao
				.find("select * from posts where publisher=" + uid);
	}

	public boolean addPost(String title, String content, String type,
			int isDraft, Users user) {
		return new Posts().set("title", title).set("content", content)
				.set("author", user.getStr("name")).set("type", type)
				.set("isDraft", isDraft).set("create_time", new Date())
				.set("update_time", new Date())
				.set("publisher", user.getInt("id")).save();
	}

	public int getUserId(int pid) {
		Posts post = dao.findFirst("select publisher from posts where id="
				+ pid);
		if (post == null) {
			return -1;
		} else {
			return post.getInt("publisher");
		}
	}

	public boolean updatePost(String id, String title, String content,
			String type, int isDraft) {
		return dao.findById(id).set("title", title).set("content", content)
				.set("type", type).set("isDraft", isDraft).update();
	}

	public String getContentPreview() {
		return getPreview(20);
	}

	public String getListPreview() {
		return getPreview(100);
	}

	private String getPreview(int size) {
		String content = DataHanlder.htmlRemoveTag(this.get("content")
				.toString());
		if (content.length() > size) {
			return (content.substring(0, size) + "...").replaceAll("\n", "");
		} else {
			return content.replaceAll("\n", "");
		}
	}

	public Page<Posts> getPostsByPage(int pageIndex, String type) {
		return dao.paginate(pageIndex, GlobalConfig.postsPageSize, "select *",
				"from posts where type=? order by create_time desc", type);
	}

	public int countNews() {
		return dao.find("select * from posts where type='NEWS'").size();
	}

	public int countNotice() {
		return dao.find("select * from posts where type='NOTICE'").size();
	}

}
