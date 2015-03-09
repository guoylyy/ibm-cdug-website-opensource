package com.cdug.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class FirstTag extends Model<FirstTag> {
	private ArrayList<SecondTag> secondTags = new ArrayList<>();
	public static FirstTag dao = new FirstTag();

	public ArrayList<SecondTag> getSecondTags() {
		return secondTags;
	}

	public void setSecondTags(ArrayList<SecondTag> secondTags) {
		this.secondTags = secondTags;
	}

	public void addSecondTag(SecondTag secondTag) {
		this.secondTags.add(secondTag);
	}

	public ArrayList<FirstTag> getFirstTags() {
		ArrayList<FirstTag> firstTags = (ArrayList<FirstTag>) dao
				.find("select * from firsttag");
		ArrayList<SecondTag> secondTags = SecondTag.dao.getTagList();
		for (FirstTag firTag : firstTags) {
			int id = firTag.getInt("id");
			for (SecondTag seTag : secondTags) {
				if (seTag.getInt("first_tag_id") == id) {
					firTag.addSecondTag(seTag);
				}
			}
		}
		return firstTags;
	}

	public ArrayList<FirstTag> getFirstTags(String[] tag_ids) {
		ArrayList<FirstTag> firstTags = (ArrayList<FirstTag>) dao
				.find("select * from firsttag");
		ArrayList<SecondTag> secondTags = SecondTag.dao.getTagList();
		for(String tid:tag_ids){
			int temp_tid = Integer.parseInt(tid);
			for(SecondTag st:secondTags){
				if(st.getInt("id")==temp_tid){
					st.setChecked(true);
				}
			}
		}
		for (FirstTag firTag : firstTags) {
			int id = firTag.getInt("id");
			for (SecondTag seTag : secondTags) {
				if (seTag.getInt("first_tag_id") == id) {
					firTag.addSecondTag(seTag);
				}
			}
		}
		return firstTags;
	}
	
	public ArrayList<FirstTag> getFirstTags(int mid) {
		ArrayList<FirstTag> firstTags = (ArrayList<FirstTag>) dao
				.find("select * from firsttag");
		ArrayList<SecondTag> secondTags = SecondTag.dao.getTagList();
		ArrayList<MaterialSecondTag> msts = MaterialSecondTag.dao.geMaterialTags(mid);
		for(MaterialSecondTag mst:msts){
			int tid = mst.getInt("second_tag_id");
			for(SecondTag st:secondTags){
				if(st.getInt("id")==tid){
					st.setChecked(true);
				}
			}
		}
		for (FirstTag firTag : firstTags) {
			int id = firTag.getInt("id");
			for (SecondTag seTag : secondTags) {
				if (seTag.getInt("first_tag_id") == id) {
					firTag.addSecondTag(seTag);
				}
			}
		}
		return firstTags;
	}
}
