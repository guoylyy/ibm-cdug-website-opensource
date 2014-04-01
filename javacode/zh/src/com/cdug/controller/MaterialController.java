package com.cdug.controller;

import com.jfinal.core.Controller;

public class MaterialController extends Controller{
	public void index(){
		render("/page/material/materials.html");
	}
	
	public void content(){
		render("/page/material/material-content.html");
	}
}
