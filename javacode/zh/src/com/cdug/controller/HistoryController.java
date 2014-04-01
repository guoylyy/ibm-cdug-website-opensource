package com.cdug.controller;

import com.jfinal.core.Controller;

public class HistoryController extends Controller{
	public void index(){
		render("/page/history/history.html");
	}
}
