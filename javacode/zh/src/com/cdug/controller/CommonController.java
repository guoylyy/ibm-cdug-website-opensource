package com.cdug.controller;
import com.jfinal.core.Controller;

public class CommonController extends Controller{
	public void index(){
		render("/page/index.html");
	}
}
