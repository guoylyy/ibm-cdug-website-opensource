package com.cdug.controller;

import com.cdug.model.Files;
import com.jfinal.core.Controller;

public class DownloadController extends Controller{
	
	public String baseUrl = "/resource/dynamic/upload/";
	public void index(){
		int id = Integer.parseInt(getPara(0));
		Files file = Files.dao.findById(id);
		renderFile(baseUrl+file.get("file_path"));
	}
}
