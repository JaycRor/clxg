package com.zte.service.impl;

import java.util.List;

import com.zte.dao.TempleDao;
import com.zte.pojo.Temple;
import com.zte.service.TempleService;

public class TempleServiceImpl implements TempleService{
	
	private TempleDao templeDao;

	@Override
	public void addTemple(Temple temple) {
		// TODO Auto-generated method stub
		this.templeDao.save(temple);
	}

	public TempleDao getTempleDao() {
		return templeDao;
	}

	public void setTempleDao(TempleDao templeDao) {
		this.templeDao = templeDao;
	}

	@Override
	public List<Temple> findAllTemple() {
		// TODO Auto-generated method stub
		return this.templeDao.findAllTemple();
	}
	
	



}
