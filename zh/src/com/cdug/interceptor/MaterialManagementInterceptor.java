package com.cdug.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;

public class MaterialManagementInterceptor implements Interceptor{
	public void intercept(ActionInvocation ai){
		ai.invoke();
	}
}
