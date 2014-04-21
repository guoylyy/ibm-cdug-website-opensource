package com.cdug.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.cdug.tool.DataHanlder;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.IAtom;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.sun.org.apache.bcel.internal.generic.NEW;

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

	public boolean addViewCount(int mid) {
		Materials material = dao.findById(mid);
		if (material == null) {
			return false;
		} else {
			return material
					.set("view_count", material.getInt("view_count") + 1)
					.update();
		}
	}

	public int getUserId(int mid) {
		Materials material = dao
				.findFirst("select user_id from materials where id=" + mid);
		if (material != null) {
			return material.getInt("user_id");
		} else {
			return -1;
		}
	}

	public ArrayList<Materials> getMaterials() {
		return (ArrayList<Materials>) dao
				.find("select * from materials order by id desc");
	}

	public ArrayList<Materials> getMaterials(int uid) {
		return (ArrayList<Materials>) dao
				.find("select * from materials where user_id =" + uid
						+ " order by id desc");
	}

	@Before(Tx.class)
	public int updateMaterial(int mid, String title, String content,
			int isDraft, String[] fileids, String[] tag_ids) {
		// update files
		if (deleteRelatedRows(mid)) {
			for (String id : fileids) {
				MaterialFile.dao.set("material_id", mid)
						.set("file_id", Integer.parseInt(id)).save();
			}
			// for (String id : soids) {
			// MaterialSolution.dao.set("material_id", mid)
			// .set("solution_id", Integer.parseInt(id)).save();
			// }
			// for (String id : teids) {
			// MaterialTechnical.dao.set("material_id", mid)
			// .set("technical_id", Integer.parseInt(id)).save();
			// }
			for (String id : tag_ids) {
				MaterialSecondTag.dao.set("material_id", mid)
						.set("second_tag_id", id).save();
			}
			if (dao.findById(mid).set("title", title).set("content", content)
					.set("isDraft", isDraft).set("update_time", new Date())
					.update()) {
				return mid;
			} else {
				return -1;
			}
		} else {
			return -1;
		}
	}

	public ArrayList<Materials> getAllMaterial() {
		// HashMap<String, String> ms_map = new HashMap<>();
		// HashMap<String, String> mt_map = new HashMap<>();
		//
		// ArrayList<MaterialSolution> ms_list = (ArrayList<MaterialSolution>)
		// MaterialSolution.dao
		// .find("select a.material_id,b.name from material_solution a inner join solutions b where a.solution_id = b.id");
		// // Cast to map
		// for (MaterialSolution ms : ms_list) {
		// String key = ms.get("material_id") + "";
		// if (ms_map.containsKey(key)) {
		// ms_map.put(key, ms_map.get(key) + "," + ms.getStr("name"));
		// } else {
		// ms_map.put(key, ms.getStr("name"));
		// }
		// }
		//
		// ArrayList<MaterialTechnical> mt_list = (ArrayList<MaterialTechnical>)
		// MaterialTechnical.dao
		// .find("select a.material_id,b.name from material_technical a inner join technicals b where a.technical_id = b.id");
		// // Cast to map
		// for (MaterialTechnical mt : mt_list) {
		// String key = mt.get("material_id") + "";
		// if (mt_map.containsKey(key)) {
		// mt_map.put(key, mt_map.get(key) + "," + mt.getStr("name"));
		// } else {
		// mt_map.put(key, mt.getStr("name"));
		// }
		// }
		ArrayList<Materials> list = (ArrayList<Materials>) dao
				.find("select * from materials where isDraft=0");

		// for (Materials m : list) {
		// String id = m.get("id") + "";
		// m.setSolution("");
		// m.setTechnical("");
		// if (ms_map.containsKey(id)) {
		// m.setSolution(ms_map.get(id));
		// }
		// if (mt_map.containsKey(id)) {
		// m.setTechnical(mt_map.get(id));
		// }
		// }
		return list;
	}

	public ArrayList<Materials> getAllMaterial(String[] tag_ids) {
		ArrayList<Materials> list;
		if (tag_ids.length > 0) {
			String ids = DataHanlder.joinStrings(",", tag_ids);
			list = (ArrayList<Materials>) dao
					.find("select * from materials where id in(select material_id from material_second_tag where second_tag_id in("
							+ ids + ") group by material_id) and isDraft=0");
		} else {
			list = new ArrayList<>();
		}
		return list;
	}

	@Before(Tx.class)
	// Transaction support
	public int addMaterial(String title, String content, String author,
			int user_id, int isDraft, String[] fileids, String[] tagIds) {
		Materials material = new Materials().set("title", title)
				.set("content", content).set("user_id", user_id)
				.set("isDraft", isDraft).set("update_time", new Date())
				.set("create_time", new Date()).set("author", author);
		boolean msave_reuslt = material.save();
		int mid = material.get("id");
		if (msave_reuslt) {
			for (String id : fileids) {
				MaterialFile.dao.set("material_id", mid)
						.set("file_id", Integer.parseInt(id)).save();
			}
			for (String id : tagIds) {
				MaterialSecondTag.dao.set("material_id", mid)
						.set("second_tag_id", id).save();
			}
		} else {
			return -1;
		}
		return mid;
	}

	private boolean deleteRelatedRows(int id) {
		final int mid = id;
		final int fileCount = MaterialFile.dao.count(mid);
		// final int solutionCount = MaterialSolution.dao.count(mid);
		// final int techincalCount = MaterialTechnical.dao.count(mid);
		final int tagsCount = MaterialSecondTag.dao.count(mid);
		boolean succeed = Db.tx(new IAtom() {
			@Override
			public boolean run() throws SQLException {
				// int count1 = Db
				// .update("delete from material_solution where material_id="
				// + mid + "");
				int count1 = Db
						.update("delete from material_file where material_id="
								+ mid);
				// int count3 = Db
				// .update("delete from material_technical where material_id="
				// + mid);
				int count2 = Db
						.update("delete from material_second_tag where material_id="
								+ mid);
				return (count2 == tagsCount) && (count1 == fileCount);
			}
		});
		return succeed;
	}

	public boolean deleteMaterial(int id) {
		final int mid = id;
		final int fileCount = MaterialFile.dao.count(mid);
		// final int solutionCount = MaterialSolution.dao.count(mid);
		// final int techincalCount = MaterialTechnical.dao.count(mid);
		final int tagsCount = MaterialSecondTag.dao.count(mid);

		boolean succeed = Db.tx(new IAtom() {
			@Override
			public boolean run() throws SQLException {
				int count1 = Db
						.update("delete from material_second_tag where material_id="
								+ mid);
				int count2 = Db
						.update("delete from material_file where material_id="
								+ mid);
				int count4 = Db.update("delete from materials where id=" + mid);

				return (count1 == tagsCount) && (count2 == fileCount)
						&& (count4 == 1);
			}
		});
		return succeed;
	}

}
