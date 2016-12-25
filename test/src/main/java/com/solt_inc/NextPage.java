package com.solt_inc;

import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.basic.Label;

import model.TestDAO;

public class NextPage extends WebPage {
	

	public NextPage(Echo page) {
		
		TestDAO dao = new TestDAO();
		String message;
		
		String name = (String)page.getName().getObject();
		String password = (String)page.getPassword().getObject();
		int result = 0;
		result = dao.insert(name, password);
		if(result <= 0) {
			message = "registration failed !!";
		} else {
			message = "registration success !!";
		}
//		add(new Label("name", page.getName()));
		add(new Label("name", name));
		add(new Label("message", message));
	}
}
