package com.cdug.controller;

import com.cdug.model.Posts;
import com.cdug.tool.DataHanlder;
import com.cdug.tool.UITools;
import com.jfinal.core.Controller;

public class NoticeController extends Controller{
	public void index(){
		int pageIndex = UITools.getPageIndex(getPara(0));
		int pageScale = UITools.getPageSize(Posts.dao.countNotice());
		boolean isLastPage = false;
		boolean isFirstPage = false;
		if (pageIndex >= pageScale) {
			pageIndex = pageScale;
		}else if(pageIndex<0){
			pageIndex = 1;
		}
		if(pageIndex == pageScale){
			isLastPage = true;
		}
		if(pageIndex == 1){
			isFirstPage = true;
		}
		setAttr("pageIndex", pageIndex);
		setAttr("pages", DataHanlder.range(pageScale));
		setAttr("isLastPage", isLastPage);
		setAttr("isFirstPage", isFirstPage);
		setAttr("notices", Posts.dao.getPostsByPage(pageIndex, "NOTICE"));
		
		render("/page/news/notice-index.html");
	}
	public void content(){
		String idstr = getPara(0);
		if(idstr==null){
			//to error page
		}else{
			int id = Integer.parseInt(idstr);
			setAttr("post",Posts.dao.findById(id));
		}
		render("/page/news/notice-content.html");
	}
}
