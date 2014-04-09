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
}
