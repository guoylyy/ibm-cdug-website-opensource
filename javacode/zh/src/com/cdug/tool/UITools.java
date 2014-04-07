package com.cdug.tool;

import com.cdug.config.GlobalConfig;

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
	
	public static int getPageSize(int count){
		int size = count/GlobalConfig.postsPageSize;
		if(count%GlobalConfig.postsPageSize == 0){
			return size;
		}else{
			return size + 1;
		}
	}

	public static String[] convertIdsValue(String[] val) {
		String[] rc = {};
		if (val == null || val.length == 0) {
			return rc;
		} else {
			return val;
		}
	}

	public static int getPageIndex(String val) {
		if (val == null || val.length() == 0 || Integer.parseInt(val)==0) {
			return 1;
		} else {
			return Integer.parseInt(val);
		}
	}


}
