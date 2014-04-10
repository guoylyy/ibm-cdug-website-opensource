package com.cdug.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import com.cdug.tool.DataHanlder;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.IAtom;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.tx.Tx;

@SuppressWarnings("serial")
public class Materials extends Model<Materials> {
	public static Materials dao = new Materials();
	private String solution;
	private String technical;

	public String getTechnical() {
		return technical;
	}

	public void setTechnical(String technical) {
		this.technical = technical;
	}

	public String getSolution() {
		return solution;
	}

	public void setSolution(String solution) {
		this.solution = solution;
	}

	public ArrayList<Materials> getMaterials() {
		return (ArrayList<Materials>) dao.find("select * from materials");
	}

	public ArrayList<Materials> getAllMaterial() {
		HashMap<String, String> ms_map = new HashMap<>();
		HashMap<String, String> mt_map = new HashMap<>();

		ArrayList<MaterialSolution> ms_list = (ArrayList<MaterialSolution>) MaterialSolution.dao
				.find("select a.material_id,b.name from material_solution a inner join solutions b where a.solution_id = b.id");
		// Cast to map
		for (MaterialSolution ms : ms_list) {
			String key = ms.get("material_id") + "";
			if (ms_map.containsKey(key)) {
				ms_map.put(key, ms_map.get(key) + "," + ms.getStr("name"));
			} else {
				ms_map.put(key, ms.getStr("name"));
			}
		}

		ArrayList<MaterialTechnical> mt_list = (ArrayList<MaterialTechnical>) MaterialTechnical.dao
				.find("select a.material_id,b.name from material_technical a inner join technicals b where a.technical_id = b.id");
		// Cast to map
		for (MaterialTechnical mt : mt_list) {
			String key = mt.get("material_id") + "";
			if (mt_map.containsKey(key)) {
				mt_map.put(key, mt_map.get(key) + "," + mt.getStr("name"));
			} else {
				mt_map.put(key, mt.getStr("name"));
			}
		}

		ArrayList<Materials> list = (ArrayList<Materials>) dao
				.find("select * from materials");

		for (Materials m : list) {
			String id = m.get("id") + "";
			m.setSolution("");
			m.setTechnical("");
			if (ms_map.containsKey(id)) {
				m.setSolution(ms_map.get(id));
			}
			if (mt_map.containsKey(id)) {
				m.setTechnical(mt_map.get(id));
			}
		}
		return list;
	}

	public ArrayList<Materials> getAllMaterial(String[] teids, String[] soids) {
		HashMap<String, String> ms_map = new HashMap<>();
		HashMap<String, String> mt_map = new HashMap<>();

		ArrayList<MaterialSolution> ms_list = (ArrayList<MaterialSolution>) MaterialSolution.dao
				.find("select a.material_id,b.name from material_solution a inner join solutions b where a.solution_id = b.id");
		// Cast to map
		for (MaterialSolution ms : ms_list) {
			String key = ms.get("material_id") + "";
			if (ms_map.containsKey(key)) {
				ms_map.put(key, ms_map.get(key) + "," + ms.getStr("name"));
			} else {
				ms_map.put(key, ms.getStr("name"));
			}
		}
		ArrayList<MaterialTechnical> mt_list = (ArrayList<MaterialTechnical>) MaterialTechnical.dao
				.find("select a.material_id,b.name from material_technical a inner join technicals b where a.technical_id = b.id");
		// Cast to map
		for (MaterialTechnical mt : mt_list) {
			String key = mt.get("material_id") + "";
			if (mt_map.containsKey(key)) {
				mt_map.put(key, mt_map.get(key) + "," + mt.getStr("name"));
			} else {
				mt_map.put(key, mt.getStr("name"));
			}
		}

		ArrayList<Materials> list = new ArrayList<>();
		if (teids.length == 0 && soids.length == 0) {
			list = (ArrayList<Materials>) dao.find("select * from materials");
		} else {
			HashMap<String, String> keyMap = new HashMap<>();
			if (teids.length > 0) {
				for (MaterialTechnical mt : MaterialTechnical.dao
						.find("select material_id from material_technical where technical_id in("
								+ DataHanlder.joinStrings(",", teids) + ")")) {
					keyMap.put(mt.get("material_id").toString(), "");
				}
			}
			if (soids.length > 0) {
				for (MaterialSolution ms : MaterialSolution.dao
						.find("select material_id from material_solution where solution_id in("
								+ DataHanlder.joinStrings(",", soids) + ")")) {
					keyMap.put(ms.get("material_id").toString(), "");
				}
			}
			String[] keyStrings = new String[keyMap.keySet().size()];
			int i = 0;
			for (String key : keyMap.keySet()) {
				keyStrings[i] = key;
				i++;
			}
			if (keyStrings.length > 0) {
				String ids = DataHanlder.joinStrings(",", keyStrings);
				list = (ArrayList<Materials>) dao
						.find("select * from materials where id in (" + ids
								+ ")");
			}
		}

		for (Materials m : list) {
			String id = m.get("id") + "";
			m.setSolution("");
			m.setTechnical("");
			if (ms_map.containsKey(id)) {
				m.setSolution(ms_map.get(id));
			}
			if (mt_map.containsKey(id)) {
				m.setTechnical(mt_map.get(id));
			}
		}
		return list;
	}

	
	@Before(Tx.class)
	// Transaction support
	public int addMaterial(String title, String content, String type,
			String author, int user_id, int isDraft, String[] fileids,
			String[] teids, String[] soids) {
		Materials material = new Materials().set("title", title).set("content", content)
				.set("mtype", type).set("user_id", user_id)
				.set("isDraft", isDraft).set("update_time", new Date())
				.set("create_time", new Date()).set("author", author);
		boolean msave_reuslt = material.save();
		int mid = material.get("id");
		if (msave_reuslt) {
			for (String id : fileids) {
				MaterialFile.dao.set("material_id", mid)
						.set("file_id", Integer.parseInt(id)).save();
			}

			for (String id : soids) {
				MaterialSolution.dao.set("material_id", mid)
						.set("solution_id", Integer.parseInt(id)).save();
			}

			for (String id : teids) {
				MaterialTechnical.dao.set("material_id", mid)
						.set("technical_id", Integer.parseInt(id)).save();
			}
		} else {
			return -1;
		}

		return mid;
	}

	public boolean deleteMaterial(int id) {
		final int mid = id;
		final int fileCount = MaterialFile.dao.count(mid);
		final int solutionCount = MaterialSolution.dao.count(mid);
		final int techincalCount = MaterialTechnical.dao.count(mid);

		boolean succeed = Db.tx(new IAtom() {

			@Override
			public boolean run() throws SQLException {

				int count1 = Db
						.update("delete from material_solution where material_id="
								+ mid + "");
				int count2 = Db
						.update("delete from material_file where material_id="
								+ mid);
				int count3 = Db
						.update("delete from material_technical where material_id="
								+ mid);
				int count4 = Db.update("delete from materials where id=" + mid);

				return (count1 == solutionCount) && (count2 == fileCount)
						&& (count3 == techincalCount) && (count4 == 1);
			}
		});
		return succeed;
	}

}
