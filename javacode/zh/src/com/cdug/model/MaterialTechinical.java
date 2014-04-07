package com.cdug.model;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class MaterialTechinical extends Model<MaterialTechinical>{
	public static MaterialTechinical dao = new MaterialTechinical();
	public int count(int id){
		return dao.find("select * from material_technical where material_id="+id).size();
	}
}
