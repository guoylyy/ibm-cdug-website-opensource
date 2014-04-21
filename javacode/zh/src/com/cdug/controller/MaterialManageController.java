package com.cdug.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.cdug.config.GlobalConfig;
import com.cdug.interceptor.LoginInterceptor;
import com.cdug.interceptor.OwnerRequiredInterceptor;
import com.cdug.model.Files;
import com.cdug.model.FirstTag;
import com.cdug.model.Materials;
import com.cdug.model.Users;
import com.cdug.tool.UITools;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.core.JFinal;
import com.jfinal.upload.UploadFile;

@Before(LoginInterceptor.class)
public class MaterialManageController extends Controller {
	public void index() {
		Users user = getSessionAttr("loginUser");
		if (user != null) {
			if (user.isAdmin()) {
				setAttr("materials", Materials.dao.getMaterials());
			} else {
				setAttr("materials",
						Materials.dao.getMaterials(user.getInt("id")));
			}
			render("/backpage/material/list_material.html");
		} else {
			redirect("/private/login/");
		}
	}
	
	public void tags(){
		setAttr("tags", FirstTag.dao.getFirstTags());
		render("/backpage/material/tags.html");
	}

	public void delete() {
		String id = getPara(0);
		if (Materials.dao.deleteMaterial(Integer.parseInt(id))) {
			setAttr("result", "success");
			redirect("/private/material");
		} else {
			setAttr("result", "fail");
			render("/backpage/feedback/error.html");
		}
	}

	public void addMaterialView() {
		if ("GET".equals(getRequest().getMethod())) {
			//setAttr("solutions", new Solutions().getSolutions());
			//setAttr("technicals", new Technicals().getTechnicals());
			setAttr("tags", FirstTag.dao.getFirstTags());
			render("/backpage/material/add_material.html");
		}
	}

	@Before(OwnerRequiredInterceptor.class)
	public void editView() {
		if ("GET".equals(getRequest().getMethod())) {
			int mid = getParaToInt(0);
			String flag = getPara(1);
			if(flag != null){
				if(flag.equals(GlobalConfig.SUCCESS)){
					setAttr("msg", "Operation Success!");
				}
			}
			setAttr("material", Materials.dao.findById(mid));
			setAttr("tags", FirstTag.dao.getFirstTags(mid));
			setAttr("files", Files.dao.getFilesByMaterialId(mid));
			render("/backpage/material/edit.html");
		} else {
			int mid = getParaToInt("id");
			String title = getPara("title");
			String content = getPara("content");
			int draft = UITools.convertCheckboxValue(getPara("draft"));
			String[] file_ids = UITools.convertIdsValue(getParaValues("file"));
			String[] tag_ids = UITools.convertIdsValue(getParaValues("secondTag"));
			try {
				int rc = Materials.dao.updateMaterial(mid, title, content,
						draft, file_ids,tag_ids);
				if (rc != -1) {
					redirect("/private/material/editView/" + rc +"-success");
				} else {
					render("/backpage/feedback/error.html");
				}

			} catch (Exception e) {
				// TODO: handle exception
				render("/backpage/feedback/error.html");
			}
		}

	}

	public void addMaterial() {
		if ("POST".equals(getRequest().getMethod())) {
			String title = getPara("title");
			String content = getPara("content");
			int draft = UITools.convertCheckboxValue(getPara("draft"));
			Users user = (Users) getSessionAttr("loginUser");
			String[] file_ids = UITools.convertIdsValue(getParaValues("file"));
			String[] tag_ids = UITools.convertIdsValue(getParaValues("secondTag"));

			try {
				int rc = Materials.dao.addMaterial(title, content,
						user.getStr("name"), user.getInt("id"), draft,
						file_ids,tag_ids);
				if (rc != -1) {
					redirect("/private/material/editView/"+rc+"-success");
				} else {
					setAttr("msg", "Save material fail!");
					render("/backpage/feedback/error.html");
				}

			} catch (Exception e) {
				// TODO: handle exception
				render("/backpage/feedback/error.html");
			}
		}
	}

//	@Before(AdminRequiredInterceptor.class)
//	public void solutions() {
//		if ("GET".equals(getRequest().getMethod())) {
//			setAttr("solutions", new Solutions().getSolutions());
//			render("/backpage/material/solutions.html");
//		} else {
//			// add category
//			String name = getPara("name");
//			if (new Solutions().addSolution(name)) {
//				redirect("/private/material/solutions");
//			} else {
//				render("/backpage/feedback/error.html");
//			}
//		}
//	}

//	@Before(AdminRequiredInterceptor.class)
//	public void solutionDelete() {
//		int id = getParaToInt(0);
//		if (Solutions.dao.deleteById(id)) {
//			redirect("/private/material/solutions");
//		} else {
//			render("/backpage/feedback/error.html");
//		}
//	}
//
//	@Before(AdminRequiredInterceptor.class)
//	public void technicals() {
//		if ("GET".equals(getRequest().getMethod())) {
//			setAttr("technicals", new Technicals().getTechnicals());
//			render("/backpage/material/technicals.html");
//		} else {
//			// add technicals
//			String name = getPara("name");// todo check is not duplicate
//			if (new Technicals().addTechnical(name)) {
//				redirect("/private/material/technicals");
//			} else {
//				render("/backpage/feedback/error.html");
//			}
//		}
//	}
//
//	@Before(AdminRequiredInterceptor.class)
//	public void technicalDelete() {
//		int id = getParaToInt(0);
//		if (Technicals.dao.deleteById(id)) {
//			redirect("/private/material/technicals");
//		} else {
//			render("/backpage/feedback/error.html");
//		}
//	}

	public void fileUpload() {
		String contextPath = JFinal.me().getServletContext().getRealPath("/");
		String savePath = contextPath + "/resource/dynamic/upload/";
		Date today = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(today).toString();
		savePath = savePath + dateString + "/";
		File file = new File(savePath);
		if (file.isFile() || !file.exists()) {
			file.mkdir();
		}
		UploadFile uploadFile = getFile("file", savePath);
		String originName = uploadFile.getFileName();
		String newName = System.currentTimeMillis() + uploadFile.getFileName();
		uploadFile.getFile().renameTo(new File(savePath + newName));

		Files file1 = new Files().addFile(originName, dateString + "/"
				+ newName, "txt");
		setAttr("file", file1);
		renderJson();
	}

	public void file() {
		Files file = Files.dao.findById(1);
		setAttr("file", file);
		renderJson();
	}

}
