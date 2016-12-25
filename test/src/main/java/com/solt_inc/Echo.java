package com.solt_inc;

import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.basic.Label;
import org.apache.wicket.markup.html.form.Form;
import org.apache.wicket.markup.html.form.TextField;
import org.apache.wicket.model.Model;

public class Echo extends WebPage{

	//	private String name = "[put in name !!]";

	private Model name = new Model();
	private Model password = new Model();
	
	private Form form = new Form("form") {

		@Override
		protected void onSubmit() {
			NextPage next = new NextPage((Echo) this.getParent());
			setResponsePage(next);
		}
	};

	/**
	 * コンストラクタ
	 */
	public Echo() {

		
		add(form);
		
		Label label = new Label("message", "Please give me your name !!");
		add(label);
		TextField name = new TextField("name", this.name);
		form.add(name);
		TextField password = new TextField("password", this.password);
		form.add(password);
	}

	public Model getName() {
		return this.name;
	}
	
	public Model getPassword() {
		return this.password;
	}
}
