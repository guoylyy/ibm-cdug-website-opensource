package com.cdug.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Solutions extends Model<Solutions> {
	public static Solutions dao = new Solutions();
	private boolean isChecked = false;

	public boolean isChecked() {
		return isChecked;
	}

	public void setChecked(boolean isChecked) {
		this.isChecked = isChecked;
	}

	public boolean addSolution(String name) {
		return new Solutions().set("name", name).save();
	}

	public ArrayList<Solutions> getSolutions() {
		return (ArrayList<Solutions>) dao.find("select * from solutions");
	}

	public ArrayList<Solutions> getSolutionsFromMaterial(int materialID) {
		ArrayList<Solutions> list = (ArrayList<Solutions>) dao
				.find("select * from solutions");
		ArrayList<MaterialSolution> msList = MaterialSolution.dao
				.getMaterialSolutionIds(materialID);
		for (Solutions solution : list) {
			for (MaterialSolution ms : msList) {
				if (solution.getInt("id") == ms.getInt("solution_id")) {
					solution.setChecked(true);
				}
			}
		}
		return list;
	}
}
