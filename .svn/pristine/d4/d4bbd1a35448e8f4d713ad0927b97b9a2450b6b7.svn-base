package com.zte.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.dao.TempleDao;
import com.zte.pojo.Temple;
import com.zte.pojo.User;

public class TempleDaoImpl extends HibernateDaoSupport implements TempleDao {

	
	
	private TempleDao templeDao;
	
	
	@Override
	public void save(Temple temple) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(temple);
	}

	public TempleDao getTempleDao() {
		return templeDao;
	}
	public void setTempleDao(TempleDao templeDao) {
		this.templeDao = templeDao;
	}

	@Override
	public List<Temple> findAllTemple() {
		String hql = "from Temple";     
        List<Temple> temple = this.getHibernateTemplate().find(hql) ;    
        for(Temple t : temple){     
            System.out.println(t.getTLeagleName() + " : " + t.getTName() + " : " + t.getTNumber());     
        }     
		return temple;
	}
	
}
