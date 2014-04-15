package com.cdug.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Model;


@SuppressWarnings("serial")
public class MaterialSolution extends Model<MaterialSolution>{
	public static MaterialSolution dao = new MaterialSolution();
	public int count(int id){
		return dao.find("select * from material_solution where material_id="+id).size();
	}
	
	public ArrayList<MaterialSolution> getMaterialSolutionIds(int materialID){
		return (ArrayList<MaterialSolution>) dao
				.find("select * from material_solution where material_id="
						+ materialID);
	}
}
