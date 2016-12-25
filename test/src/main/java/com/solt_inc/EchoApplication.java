package com.solt_inc;

import org.apache.wicket.protocol.http.WebApplication;

public class EchoApplication extends WebApplication {
	
	public EchoApplication() {
	}
	
	@Override
	public Class getHomePage() {
		return Echo.class;
	}
}
