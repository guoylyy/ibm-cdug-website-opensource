package com.cdug.config;

import com.cdug.model.Files;
import com.cdug.model.FirstTag;
import com.cdug.model.MaterialFile;
import com.cdug.model.MaterialSecondTag;
import com.cdug.model.Materials;
import com.cdug.model.PostFile;
import com.cdug.model.Posts;
import com.cdug.model.SecondTag;
import com.cdug.model.Users;
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
	
	private static int postsPageSize;
	/*
	 * Set up basic infomation
	 */
	public void configConstant(Constants me) {
		loadPropertyFile("config.properties");
		me.setDevMode(getPropertyToBoolean("devMode", false));
		JfinalConfiguration.setPostsPageSize(getPropertyToInt("postsPageSize", 10));
		me.setDevMode(true);
	}

	/*
	 * Set up router
	 */
	public void configRoute(Routes me) {
		me.add(new FrontgroundRouter());
		me.add(new BackgroundRouter());
	}

	/*
	 * Config plugins
	 */
	public void configPlugin(Plugins me) {
		// Add database plugin
		C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("jdbcUrl"),
				getProperty("user"), getProperty("password").trim());
		me.add(c3p0Plugin);
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
		arp.addMapping("posts", Posts.class);
		arp.addMapping("materials", Materials.class);
		arp.addMapping("files", Files.class);
		arp.addMapping("users", Users.class);
//		arp.addMapping("solutions", Solutions.class);
//		arp.addMapping("technicals", Technicals.class);
		arp.addMapping("material_file", MaterialFile.class);
//		arp.addMapping("material_technical", MaterialTechnical.class);
//		arp.addMapping("material_solution", MaterialSolution.class);
		arp.addMapping("firsttag", FirstTag.class);
		arp.addMapping("secondtag", SecondTag.class);
		arp.addMapping("material_second_tag", MaterialSecondTag.class);
		arp.addMapping("post_file", PostFile.class);
		// add spring framework
	}

	public void configInterceptor(Interceptors me) {

	}

	public void configHandler(Handlers me) {

	}

	/**
	 * test interface
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 8084, "/", 5);
	}

	public static int getPostsPageSize() {
		return postsPageSize;
	}

	public static void setPostsPageSize(int postsPageSize) {
		JfinalConfiguration.postsPageSize = postsPageSize;
	}
}
