package com.cdug.model;

import java.util.ArrayList;
import java.util.HashMap;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Users extends Model<Users> {
	public static final Users dao = new Users();

	public ArrayList<Users> getUsers() {
		return (ArrayList<Users>) Users.dao.find("select * from users");
	}

	public boolean addUser(String email, String password, String name,
			String role, String reg_time) {
		// Set datetime
		return new Users().set("email", email).set("password", password)
				.set("name", name).set("role", role).set("reg_time", reg_time)
				.save();
	}
	
	public boolean updateUser(HashMap<String, Object> updateMap){
		return false;
	}
	
	public Users getUserById(int id){
		return new Users().findById(id);
	}

}
