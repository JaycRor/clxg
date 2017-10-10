package com.zte.dao.impl;
/**
 * 管理员功能实现
 * @author KevinLuo
 *
 */

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.dao.SuperManagerDao;
import com.zte.pojo.City;

public class SuperManagerDaoImpl extends HibernateDaoSupport implements SuperManagerDao{

	private SuperManagerDao superManagerDao;
	@Override
	public void addCity(City city) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(city);
		
	}

	@Override
	public void setHotCity() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addSeng() {
	//得到僧侣信息，直接添加僧侣
//		this.getHibernateTemplate().save(entity);
	}

	@Override
	public void deleteSeng() {
		// TODO Auto-generated method stub
		//直接删除
//		this.getHibernateTemplate().delete(entity);
	}

	@Override
	public void addManager() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void check_join() {
		// TODO Auto-generated method stub
		//同意即
	}

	@Override
	public void checkHouseMessage() {
		// TODO Auto-generated method stub
		
	}

	public SuperManagerDao getSuperManagerDao() {
		return superManagerDao;
	}

	public void setSuperManagerDao(SuperManagerDao superManagerDao) {
		this.superManagerDao = superManagerDao;
	}

}
