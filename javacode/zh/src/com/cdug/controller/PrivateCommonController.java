package com.cdug.controller;

import com.jfinal.core.Controller;

public class PrivateCommonController extends Controller{
	public void index(){
		render("/backpage/login.html");
	}
	
	public void logout(){
		render("/backpage/login.html");
	}
	
	public void login(){
		render("/backpage/login.html");
	}
}
