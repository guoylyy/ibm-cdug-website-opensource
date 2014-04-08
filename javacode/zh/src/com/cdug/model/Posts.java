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
		return (ArrayList<Posts>) Posts.dao.find("select * from posts order by id desc");
	}

	public boolean addPost(String title, String content, String author,
			String type, int isDraft) {
		return new Posts().set("title", title).set("content", content)
				.set("author", author).set("type", type)
				.set("isDraft", isDraft).set("create_time", new Date())
				.set("update_time", new Date()).save();
	}

	public String getContentPreview() {
		return getPreview(20);
	}
	
	public String getListPreview(){
		return getPreview(100);
	}

	private String getPreview(int size){
		String content = DataHanlder.htmlRemoveTag(this.get("content").toString());
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
