package com.cdug.controller;

import com.cdug.config.GlobalConfig;
import com.jfinal.core.Controller;

public class AboutController extends Controller{
	public void index(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/about_cdug.html");
	}
	public void intoduction(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/cdug_introduction.html");
	}
	public void visionandmission(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/mission.html");
	}
	public void organization(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/architecture.html");
	}
	public void history(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/history.html");
	}
	public void statistics(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/statics.html");
	}
	public void contact(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/contract.html");
	}
	public void member(){
		setAttr(GlobalConfig.NAV_KEY,GlobalConfig.NAV_ABOUT);
		render("/page/about/member.html");
	}

}
