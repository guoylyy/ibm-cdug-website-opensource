package com.cdug.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Solutions extends Model<Solutions>{
	public static Solutions dao = new Solutions();
	
	public boolean addSolution(String name){
		return new Solutions().set("name", name).save();
	}
	
	public ArrayList<Solutions> getSolutions(){
		return (ArrayList<Solutions>) dao.find("select * from solutions");
	}
}
