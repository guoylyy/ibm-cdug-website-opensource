package com.cdug.controller;

import java.io.File;

import com.cdug.config.JfinalConfiguration;
import com.jfinal.core.Controller;
import com.jfinal.core.JFinal;
import com.jfinal.upload.UploadFile;

public class PictureManagerController extends Controller {
	public void index() {
		render("/backpage/feedback/404.html");
	}

	public void picUpload() {
		String contextPath = JFinal.me().getServletContext().getRealPath("/");
		String savePath = contextPath + "/resource/dynamic/img/";
		//Date today = new Date();
		int CKEditorFuncNum = getParaToInt("CKEditorFuncNum");
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//		String dateString = formatter.format(today).toString();
		
		File file = new File(savePath);
		if (file.isFile() || !file.exists()) {
			file.mkdir();
		}
		UploadFile uploadFile = getFile("upload", savePath);
		String newName = System.currentTimeMillis() + uploadFile.getFileName();
		uploadFile.getFile().renameTo(new File(savePath + newName));
		String path = JfinalConfiguration.getBaseURL()
				+ "resource/dynamic/img/"  + newName;

		renderHtml("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
				+ CKEditorFuncNum
				+ ", '"
				+ path
				+ "' , '"
				+ "success"
				+ "');</script>");
	}
}
