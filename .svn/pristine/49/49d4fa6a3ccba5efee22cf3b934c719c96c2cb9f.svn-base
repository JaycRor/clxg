package com.zte.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.dao.MonkDao;
import com.zte.pojo.Monk;


public class MonkDaoImpl extends HibernateDaoSupport implements MonkDao{
	MonkDao monkDao;

	public MonkDao getMonkDao() {
		return monkDao;
	}

	public void setMonkDao(MonkDao monkDao) {
		this.monkDao = monkDao;
	}

	@Override
	public List<Monk> findAllMonk() {
		String hql = "from Monk";     
        @SuppressWarnings("unchecked")
		List<Monk> monk = this.getHibernateTemplate().find(hql) ;
		return monk;
	}

	@Override
	public void saveMonk(Monk monk) {
		this.getHibernateTemplate().save(monk);
	}

	@Override
	public void deleteMonk(Monk monk) {
		this.getHibernateTemplate().delete(monk);
	}

	@Override
	public void updateMonk(Monk monk) {
		this.getHibernateTemplate().update(monk);
	}
	

}
