package com.cdug.tool;

public class UITools {
	public static int convertCheckboxValue(String val){
		if(val == null){
			return 0;
		}
		if(val.equals("on")||val.equals("checked")){
			return 1;
		}else{
			return 0;
		}
	}
	
	public static String[] convertIdsValue(String[] val){
		String[] rc = {};
		if(val == null||val.length==0){
			return rc;
		}else{
			return val;
		}
	}
	
}
