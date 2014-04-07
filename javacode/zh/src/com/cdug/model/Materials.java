package com.cdug.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.IAtom;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.tx.Tx;

@SuppressWarnings("serial")
public class Materials extends Model<Materials> {
	public static Materials dao = new Materials();

	public ArrayList<Materials> getMaterials() {
		return (ArrayList<Materials>) dao.find("select * from materials");
	}
	
	@Before(Tx.class)
	// Transaction support
	public int addMaterial(String title, String content, String type,
			String author, int user_id, int isDraft, String fileids,
			String teids, String soids) {
		boolean msave_reuslt = dao.set("title", title).set("content", content)
				.set("mtype", type).set("user_id", user_id)
				.set("isDraft", isDraft).set("update_time", new Date())
				.set("create_time", new Date()).set("author", author).save();

		int mid = dao.get("id");
		if (msave_reuslt) {
			if (!fileids.equals("")) {
				String[] fids = fileids.split(",");
				for (String id : fids) {
					MaterialFile.dao.set("material_id", mid)
							.set("file_id", Integer.parseInt(id)).save();
				}
			}

			if (!soids.equals("")) {
				String[] sids = soids.split(",");
				for (String id : sids) {
					MaterialSolution.dao.set("material_id", mid)
							.set("solution_id", Integer.parseInt(id)).save();
				}
			}

			if (!teids.equals("")) {
				String[] tids = teids.split(",");
				for (String id : tids) {
					MaterialTechinical.dao.set("material_id", mid)
							.set("technical_id", Integer.parseInt(id)).save();
				}
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
		final int techincalCount = MaterialTechinical.dao.count(mid);

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
