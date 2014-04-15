package com.cdug.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Technicals extends Model<Technicals>{
	public static Technicals dao = new Technicals();
	private boolean isChecked = false;
	
	public boolean addTechnical(String name){
		return new Technicals().set("name", name).save();
	}
	
	public ArrayList<Technicals> getTechnicals(){
		return (ArrayList<Technicals>) dao.find("select * from technicals");
	}

	public boolean isChecked() {
		return isChecked;
	}

	public void setChecked(boolean isChecked) {
		this.isChecked = isChecked;
	}
	
	public ArrayList<Technicals> getTechnicalsFromMaterial(int materialID) {
		ArrayList<Technicals> list = (ArrayList<Technicals>) dao
				.find("select * from technicals");
		ArrayList<MaterialTechnical> msList = MaterialTechnical.dao
				.getMaterialSolutionIds(materialID);
		for (Technicals technical : list) {
			for (MaterialTechnical ms : msList) {
				if (technical.getInt("id") == ms.getInt("technical_id")) {
					technical.setChecked(true);
				}
			}
		}
		return list;
	}
}
