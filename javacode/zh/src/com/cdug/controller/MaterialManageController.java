package com.cdug.controller;

import com.jfinal.core.Controller;

public class MaterialManageController extends Controller{
	public void index(){
		render("/backpage/material/list_material.html");
	}
	
	public void addMaterial(){
		render("/backpage/material/add_material.html");
	}
	
	public void category(){
		if("GET".equals(getRequest().getMethod())){
			render("/backpage/material/list_categories.html");
		}else{
			//add category
		}
	}
	public void technicals(){
		if("GET".equals(getRequest().getMethod())){
			render("/backpage/material/list_technicals.html");
		}else{
			//add technicals
		}
	}
}
