package com.cdug.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class MaterialSecondTag extends Model<MaterialSecondTag> {
	public static MaterialSecondTag dao = new MaterialSecondTag();

	public int count(int mid) {
		return dao.find(
				"select * from material_second_tag where material_id=" + mid)
				.size();
	}

	public ArrayList<MaterialSecondTag> geMaterialTags(int mid) {
		return (ArrayList<MaterialSecondTag>) dao
				.find("select * from material_second_tag where material_id="
						+ mid);
	}
}
