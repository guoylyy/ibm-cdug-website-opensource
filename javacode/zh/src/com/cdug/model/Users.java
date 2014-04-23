package com.cdug.model;

import java.util.ArrayList;
import java.util.Date;

import com.cdug.config.GlobalConfig;
import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Users extends Model<Users> {
	public static final Users dao = new Users();

	public ArrayList<Users> getUsers(int id) {
		return (ArrayList<Users>) Users.dao
				.find("select * from users where id not in(" + id + ")");
	}

	public boolean addUser(String email, String password, String name,
			String role, Date reg_time, int isActive) {
		// Set datetime
		try {
			return new Users().set("email", email).set("password", password)
					.set("name", name).set("role", role)
					.set("reg_time", reg_time).set("isActive", isActive).save();
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}

	public boolean updateUser(int id, String email, String password,
			String name, String role, int isActive) {
		Users user = dao.findById(id);
		if (user != null) {
			return user.set("email", email).set("password", password)
					.set("name", name).set("role", role)
					.set("isActive", isActive).update();
		} else {
			return false;
		}
	}

	public boolean updateUser(int id, String password, String name) {
		Users user = dao.findById(id);
		if (user != null) {
			return user.set("password", password).set("name", name).update();
		} else {
			return false;
		}
	}

	public Users getUserById(int id) {
		return new Users().findById(id);
	}

	public Users getUserByEmail(String email) {
		return dao.findFirst("select * from users where email='" + email + "'");
	}

	public boolean login(String username, String password) {
		Users user = dao.findFirst("select * from users where email='"
				+ username + "'");
		if (user != null && user.get("password").equals(password)) {
			return true;
		} else {
			return false;
		}
	}

	public boolean isActiveUser(String username) {
		Users user = dao.findFirst("select * from users where email='"
				+ username + "'");
		if (user.getInt("isActive") == 0) {
			return false;
		} else {
			return true;
		}
	}

	public boolean isAdmin() {
		if (this.get("role").equals("ADMIN")) {
			return true;
		} else {
			return false;
		}
	}

	public boolean updateUserRole(int id, String role) {
		if (role.equals(GlobalConfig.USER_ROLES[0])
				|| role.equals(GlobalConfig.USER_ROLES[1])) {
			return dao.findById(id).set("role", role).update();
		} else {
			return false;
		}
	}

}
