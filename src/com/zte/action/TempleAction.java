package com.zte.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zte.pojo.Temple;
import com.zte.service.TempleService;

public class TempleAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1512388899383204420L;
	private Temple temple;
	private TempleService templeService;
	private List<Temple> temples;

	public Temple getTemple() {
		return temple;
	}

	public void setTemple(Temple temple) {
		this.temple = temple;
	}

	public TempleService getTempleService() {
		return templeService;
	}

	public void setTempleService(TempleService templeService) {
		this.templeService = templeService;
	}

	
	public String addTemple(){
		this.templeService.addTemple(temple);
		return SUCCESS;
	}
	public String findAllTemple(){
		List<Temple> t = this.templeService.findAllTemple();
		setTemples(t);
		return "xianjuList";
		
	}

	public List<Temple> getTemples() {
		return temples;
	}

	public void setTemples(List<Temple> temples) {
		this.temples = temples;
	}
	
	
}
