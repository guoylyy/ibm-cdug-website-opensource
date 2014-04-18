package com.cdug.model;

import java.util.ArrayList;
import java.util.Date;

import com.cdug.config.JfinalConfiguration;
import com.cdug.tool.DataHanlder;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

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
			int isDraft, Users user, String[] file_ids) {
		Posts post = new Posts().set("title", title).set("content", content)
				.set("author", user.getStr("name")).set("type", type)
				.set("isDraft", isDraft).set("create_time", new Date())
				.set("update_time", new Date())
				.set("publisher", user.getInt("id"));
		if (post.save()) {
			int id = post.getInt("id");
			for (String fid : file_ids) {
				PostFile.dao.set("post_id", id)
						.set("file_id", Integer.parseInt(fid)).save();
			}
			return true;
		} else {
			return false;
		}

	}

	public boolean addViewCount(int pid) {
		Posts post = dao.findById(pid);
		if (post != null) {
			return post.set("view_count", post.getInt("view_count") + 1)
					.update();
		} else {
			return false;
		}
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

	public boolean updatePost(int id, String title, String content,
			String type, int isDraft, String[] file_ids) {
		updatePostFiles(file_ids, id);
		return dao.findById(id).set("title", title).set("content", content)
				.set("type", type).set("isDraft", isDraft).update();

	}

	@Before(Tx.class)
	private boolean updatePostFiles(String[] file_ids, int post_id) {
		// Delete multiple ot multiple relationship
		Db.update("delete from post_file where post_id=" + post_id);
		for (String fid : file_ids) {
			PostFile.dao.set("post_id", post_id)
					.set("file_id", Integer.parseInt(fid)).save();
		}
		return true;
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
		return dao
				.paginate(
						pageIndex,
						JfinalConfiguration.getPostsPageSize(),
						"select *",
						"from posts where type=? and isDraft=0 order by create_time desc",
						type);
	}

	public int countNews() {
		return dao.find("select * from posts where type='NEWS'").size();
	}

	public int countNotice() {
		return dao.find("select * from posts where type='NOTICE'").size();
	}

}
