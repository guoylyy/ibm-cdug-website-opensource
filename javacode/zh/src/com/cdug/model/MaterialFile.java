package com.cdug.model;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class MaterialFile extends Model<MaterialFile>{
	public static MaterialFile dao = new MaterialFile();
	
	public int count(int id){
		return dao.find("select * from material_file where material_id="+id).size();
	}
}
