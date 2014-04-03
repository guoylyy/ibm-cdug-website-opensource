package com.cdug.controller;

import com.jfinal.core.Controller;

public class MaterialManageController extends Controller{
	public void index(){
		render("/backpage/material/list_material.html");
	}
	
	public void addMaterial(){
		render("/backpage/material/add_material.html");
	}
}
