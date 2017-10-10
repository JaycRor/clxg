package com.zte.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zte.pojo.Monk;
import com.zte.service.MonkService;

public class MonkAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1732949842496639852L;
	private Monk monk;
	private MonkService monkService;
	private List<Monk> monks;
	public Monk getMonk() {
		return monk;
	}
	public void setMonk(Monk monk) {
		this.monk = monk;
	}
	public MonkService getMonkService() {
		return monkService;
	}
	public void setMonkService(MonkService monkService) {
		this.monkService = monkService;
	}
	public List<Monk> getMonks() {
		return monks;
	}
	public void setMonks(List<Monk> monks) {
		this.monks = monks;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String findAllMonk(){
		List<Monk> m = this.monkService.findAllMonk();
		setMonks(m);
		return "senglvList";
		
	}
	public String addMonk(){
		this.monkService.saveMonk(monk);
		findAllMonk();
		return "senglvList";
	}
	public String deleteMonk(){
		if(monk.getId()!=null){
		this.monkService.deleteMonk(monk);
		}
		findAllMonk();
		return "senglvList";
	}
	public String updateMonk() throws Exception{
		if(check(monk.getId())){
		this.monkService.updateMonk(monk);
		}else{
			this.addActionError("请输入已有的ID!");
			return "updateSL";
		}
		findAllMonk();
		return "senglvList";
		
	}
	public Boolean check(int id){
		List<Monk> m = this.monkService.findAllMonk();
		Boolean b = true;
		for(Monk monk:m){
			if(monk.getId()==id){
				b = true;
			}else{
				b = false;
			}
		}
		return b;
	}

}
