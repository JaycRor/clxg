package com.zte.service.impl;

import java.util.List;

import com.zte.dao.MonkDao;
import com.zte.pojo.Monk;
import com.zte.service.MonkService;

public class MonkServiceImpl implements MonkService{
	MonkDao monkDao;

	public MonkDao getMonkDao() {
		return monkDao;
	}

	public void setMonkDao(MonkDao monkDao) {
		this.monkDao = monkDao;
	}

	@Override
	public List<Monk> findAllMonk() {
		return monkDao.findAllMonk();
	}

	@Override
	public void saveMonk(Monk monk) {
		this.monkDao.saveMonk(monk);
		
	}

	@Override
	public void deleteMonk(Monk monk) {
		this.monkDao.deleteMonk(monk);
		
	}

	@Override
	public void updateMonk(Monk monk) {
		this.monkDao.updateMonk(monk);
	}
	

}
