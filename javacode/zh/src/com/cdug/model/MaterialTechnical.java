package com.cdug.model;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class MaterialTechnical extends Model<MaterialTechnical>{
	public static MaterialTechnical dao = new MaterialTechnical();
	public int count(int id){
		return dao.find("select * from material_technical where material_id="+id).size();
	}
}
