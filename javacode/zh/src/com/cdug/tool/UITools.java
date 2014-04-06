package com.cdug.tool;

public class UITools {
	public static int convertCheckboxValue(String val){
		if(val == null){
			return 0;
		}
		if(val.equals("on")){
			return 1;
		}else{
			return 0;
		}
	}
}
