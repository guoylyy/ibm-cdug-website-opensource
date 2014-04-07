package com.cdug.controller;

import com.cdug.model.Materials;
import com.cdug.model.Solutions;
import com.cdug.model.Technicals;
import com.jfinal.core.Controller;

public class MaterialController extends Controller {
	public void index() {

		setAttr("solutions", new Solutions().getSolutions());
		setAttr("technicals", new Technicals().getTechnicals());
		// get all material
		if ("GET".equals(getRequest().getMethod())) {
			setAttr("materials", Materials.dao.getAllMaterial());
			render("/page/material/materials.html");
		}else{
			
			setAttr("materials", Materials.dao.getAllMaterial());
			render("/page/material/materials.html");
		}
	}

	public void content() {
		render("/page/material/material-content.html");
	}
}
