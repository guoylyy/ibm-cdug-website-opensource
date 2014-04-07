package com.cdug.model;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Files extends Model<Files> {
	public static Files dao = new Files();

	public Files addFile(String name, String path, String type) {
		Files file = new Files().set("file_name", name).set("file_path", path)
				.set("file_type", type);
		file.save();
		return file;
	}
}
