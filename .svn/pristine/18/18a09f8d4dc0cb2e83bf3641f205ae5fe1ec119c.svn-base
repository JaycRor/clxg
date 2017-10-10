package com.zte.service.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.pojo.City;
import com.zte.service.CitySelService;

public class CitySelServiceImpl extends HibernateDaoSupport implements CitySelService{

	private  CitySelService citySelService;
	@Override
	public List<City> selectCity(City c) {
		// TODO Auto-generated method stub
	//	String hql = "from City as c where c.name like '%"+c.getName()+"%' and c.key like '%"+c.getKey()+"%'";  
	
		String hql02 = "from City as c where c.key like ? or c.name like ?";  
		@SuppressWarnings("unchecked")
		List<City> list= this.getHibernateTemplate().find(hql02,c.getKey(),c.getName());
		return list;
	}
	public CitySelService getCitySelService() {
		return citySelService;
	}
	public void setCitySelService(CitySelService citySelService) {
		this.citySelService = citySelService;
	}
	

}
