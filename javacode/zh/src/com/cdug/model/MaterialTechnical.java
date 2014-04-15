package com.cdug.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class MaterialTechnical extends Model<MaterialTechnical> {
	public static MaterialTechnical dao = new MaterialTechnical();

	public int count(int id) {
		return dao.find(
				"select * from material_technical where material_id=" + id)
				.size();
	}

	public ArrayList<MaterialTechnical> getMaterialSolutionIds(int materialID) {
		return (ArrayList<MaterialTechnical>) dao
				.find("select * from material_technical where material_id="
						+ materialID);
	}
}
