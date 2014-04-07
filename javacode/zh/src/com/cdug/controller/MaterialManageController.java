package com.cdug.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.cdug.interceptor.MaterialManagementInterceptor;
import com.cdug.model.Files;
import com.cdug.model.Materials;
import com.cdug.model.Solutions;
import com.cdug.model.Technicals;
import com.cdug.tool.UITools;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.core.JFinal;
import com.jfinal.upload.UploadFile;

@Before(MaterialManagementInterceptor.class)
public class MaterialManageController extends Controller {
	public void index() {
		setAttr("materials", Materials.dao.getMaterials());
		render("/backpage/material/list_material.html");
	}
	
	public void delete(){
		//try {
			String id = getPara(0);
			if(Materials.dao.deleteMaterial(Integer.parseInt(id))){
				setAttr("result", "success");
				redirect("/private/material");
			}else{
				setAttr("result","fail");
				render("/backpage/feedback/error.html");
			}
			//renderJson();
//		} catch (Exception e) {
//			// TODO: handle exception
//			System.out.print(e);
//			setAttr("result","fail");
//		}finally{
//			renderJson();
//		}
		
	}

	public void addMaterialView() {
		if ("GET".equals(getRequest().getMethod())) {
			setAttr("solutions", new Solutions().getSolutions());
			setAttr("technicals", new Technicals().getTechnicals());
			render("/backpage/material/add_material.html");
		}
	}

	public void editView() {
		setAttr("solutions", new Solutions().getSolutions());
		setAttr("technicals", new Technicals().getTechnicals());
		render("/backpage/material/edit.html");
	}

	public void addMaterial() {
		if ("POST".equals(getRequest().getMethod())) {
			String title = getPara("title");
			String type = getPara("type");
			String content = getPara("content");
			int draft = UITools.convertCheckboxValue(getPara("draft"));
			int user_id = 100001;
			String[] file_ids = UITools.convertIdsValue(getParaValues("file"));
			String[] te_ids = UITools.convertIdsValue(getParaValues("technical"));
			String[] so_ids = UITools.convertIdsValue(getParaValues("solution"));
			
			try {
				int rc = Materials.dao.addMaterial(title, content, type,
						"mark", user_id, draft, file_ids, te_ids, so_ids);
				if (rc != -1) {
					redirect("/private/material/editView?id=" + rc);
				} else {
					render("/backpage/feedback/error.html");
				}

			} catch (Exception e) {
				// TODO: handle exception
				render("/backpage/feedback/error.html");
			} 
		}
	}

	public void solutions() {
		if ("GET".equals(getRequest().getMethod())) {
			setAttr("solutions", new Solutions().getSolutions());
			render("/backpage/material/solutions.html");
		} else {
			// add category
			String name = getPara("name");
			if (new Solutions().addSolution(name)) {
				redirect("/private/material/solutions");
			} else {
				render("/backpage/feedback/error.html");
			}
		}
	}

	public void solutionDelete() {
		int id = getParaToInt(0);
		if (Solutions.dao.deleteById(id)) {
			redirect("/private/material/solutions");
		} else {
			render("/backpage/feedback/error.html");
		}
	}

	public void technicals() {
		if ("GET".equals(getRequest().getMethod())) {
			setAttr("technicals", new Technicals().getTechnicals());
			render("/backpage/material/technicals.html");
		} else {
			// add technicals
			String name = getPara("name");// todo check is not duplicate
			if (new Technicals().addTechnical(name)) {
				redirect("/private/material/technicals");
			} else {
				render("/backpage/feedback/error.html");
			}
		}
	}

	public void technicalDelete() {
		int id = getParaToInt(0);
		if (Technicals.dao.deleteById(id)) {
			redirect("/private/material/technicals");
		} else {
			render("/backpage/feedback/error.html");
		}
	}

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
		String newName = System.currentTimeMillis() + uploadFile.getFileName();
		uploadFile.getFile().renameTo(new File(savePath + newName));

		Files file1 = new Files().addFile(uploadFile.getFileName(), dateString
				+ "/" + newName, "txt");
		setAttr("file", file1);
		renderJson();
	}

	public void file() {
		Files file = Files.dao.findById(1);
		setAttr("file", file);
		renderJson();
	}

}
