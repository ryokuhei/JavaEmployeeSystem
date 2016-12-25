package com.solt_inc;

import org.apache.wicket.protocol.http.WebApplication;

public class HelloWorldApplication extends WebApplication {
	
	public HelloWorldApplication() {
	}
	
	@Override
	public Class getHomePage() {
		return HelloWorld.class;
	}

}
