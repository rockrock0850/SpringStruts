package com.utility.web.action;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;

@Controller
public class UtilityWebAciton implements Action{
	private final Logger log = Logger.getLogger(UtilityWebAciton.class);
	
	private String request;

	@Override
	public String execute() {
		log.debug("AAAA: ");
		return SUCCESS;
	}

	public String hello(){
		return SUCCESS;
	}

	public String locale(){
		return SUCCESS;
	}

	public String speed(){
		return SUCCESS;
	}

//	Getter and Setter
	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}
}
