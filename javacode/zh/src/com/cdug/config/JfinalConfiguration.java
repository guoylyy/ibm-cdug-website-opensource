package com.cdug.config;

import com.cdug.controller.CommonController;
import com.cdug.model.Posts;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;

public class JfinalConfiguration extends JFinalConfig {
	public void configConstant(Constants me) {
		loadPropertyFile("config.properties");
		me.setDevMode(getPropertyToBoolean("devMode", false));
		me.setDevMode(true);
	}

	/*
	 * Set up router
	 */
	public void configRoute(Routes me) {
		me.add("/", CommonController.class);
		me.add(new FrontgroundRouter());
		me.add(new BackgroundRouter());
	}

	/*
	 * Config plugins
	 */
	public void configPlugin(Plugins me) {
		C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("jdbcUrl"),
				getProperty("user"), getProperty("password").trim());
		me.add(c3p0Plugin);

		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
		arp.addMapping("posts", Posts.class);
	}

	public void configInterceptor(Interceptors me) {
	}

	public void configHandler(Handlers me) {
	}

	/**
	 * 
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 8088, "/", 5);
	}
}
