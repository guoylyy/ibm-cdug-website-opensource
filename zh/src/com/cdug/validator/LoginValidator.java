package com.cdug.validator;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

public class LoginValidator extends Validator {
	protected void validate(Controller controller) {
		controller.setAttr("emailMsg", "");
		controller.setAttr("passwordMsg", "");
		controller.setAttr("msg", "");
		if (controller.getRequest().getMethod().equals("POST")) {
			validateRequired("email", "emailMsg", "Account can't be empty");
			validateRequired("password", "passwordMsg",
					"Password can't be empty");
			//validateEmail("email", "emailMsg", "Please enter your email!");
		}
	}

	protected void handleError(Controller controller) {
		controller.keepPara();
		controller.render("/backpage/login.html");
	}
}
