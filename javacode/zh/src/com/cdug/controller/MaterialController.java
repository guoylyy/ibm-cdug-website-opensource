package com.cdug.controller;

import com.cdug.config.GlobalConfig;
import com.cdug.model.Materials;
import com.cdug.model.Solutions;
import com.cdug.model.Technicals;
import com.cdug.tool.UITools;
import com.jfinal.core.Controller;

public class MaterialController extends Controller {
	public void index() {
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_MATERIAL);
		setAttr("solutions", new Solutions().getSolutions());
		setAttr("technicals", new Technicals().getTechnicals());
		// get all material
		if ("GET".equals(getRequest().getMethod())) {
			setAttr("materials", Materials.dao.getAllMaterial());
			render("/page/material/materials.html");
		}else{
			String[] teids = UITools.convertIdsValue(getParaValues("technical"));
			String[] soids = UITools.convertIdsValue(getParaValues("solution"));
			
			setAttr("materials", Materials.dao.getAllMaterial(teids,soids));
			render("/page/material/materials.html");
		}
	}

	public void content() {
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_MATERIAL);
		render("/page/material/material-content.html");
	}
}
