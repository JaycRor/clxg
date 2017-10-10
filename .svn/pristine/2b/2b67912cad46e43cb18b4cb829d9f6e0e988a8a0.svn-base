package com.zte.action;

import java.util.List;

//import org.junit.Test;

import com.opensymphony.xwork2.ActionSupport;
import com.zte.pojo.City;
import com.zte.service.CitySelService;

public class CitySelAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1809333281998946753L;
	private CitySelService citySelService;
	private City city;
//	@Test
	public void getCityList(){
		
		List<City> list=this.citySelService.selectCity(city);
		//得到城市信息
//		for(City c:list){
//			System.out.println(c.getId()+c.getName()+c.getKey());
//		}
	}
	public CitySelService getCitySelService() {
		return citySelService;
	}
	public void setCitySelService(CitySelService citySelService) {
		this.citySelService = citySelService;
	}
	
	
}
