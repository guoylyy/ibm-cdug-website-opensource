package com.cdug.tool;

import com.cdug.config.JfinalConfiguration;

public class UITools {
	public static int convertCheckboxValue(String val) {
		if (val == null) {
			return 0;
		}
		if (val.equals("on") || val.equals("checked")) {
			return 1;
		} else {
			return 0;
		}
	}

	public static int getPageSize(int count) {
		int size = count / JfinalConfiguration.getPostsPageSize();
		if (count % JfinalConfiguration.getPostsPageSize() == 0) {
			return size;
		} else {
			return size + 1;
		}
	}

	public static String[] convertIdsValue(Object val) {

		if (val instanceof String) {
			String[] rc = new String[1];
			rc[0] = val.toString();
			return rc;
		} else if (val instanceof String[]) {
			String[] input = (String[]) val;
			return input;
		} else {
			String[] rc = {};
			return rc;
		}
	}

	public static int getPageIndex(String val) {
		if (val == null || val.length() == 0 || Integer.parseInt(val) == 0) {
			return 1;
		} else {
			return Integer.parseInt(val);
		}
	}

}
