package com.cdug.controller;

import com.jfinal.core.Controller;

public class AboutController extends Controller{
	public void index(){
		render("/page/about/about_cdug.html");
	}
	public void intoduction(){
		render("/page/about/cdug_introduction.html");
	}
	public void mission(){
		render("/page/about/mission.html");
	}
	public void architecture(){
		render("/page/about/architecture.html");
	}
	public void history(){
		render("/page/about/history.html");
	}
	public void statics(){
		render("/page/about/statics.html");
	}
	public void contract(){
		render("/page/about/contract.html");
	}
	public void member(){
		render("/page/about/member.html");
	}

}
