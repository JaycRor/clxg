package com.zte.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.dao.ConfessionDao;
import com.zte.pojo.Confession;

public class ConfessionDaoImpl extends HibernateDaoSupport implements ConfessionDao{

	private ConfessionDao confessionDao;
	@Override
	public void addConfession(Confession confession) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(confession);
	}
	
	public ConfessionDao getConfessionDao() {
		return confessionDao;
	}
	public void setConfessionDao(ConfessionDao confessionDao) {
		this.confessionDao = confessionDao;
	}

	@Override
	public List<Confession> findAllCon() {
		// TODO Auto-generated method stub
		String hql = "from Confession";
		@SuppressWarnings("unchecked")
		List<Confession> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	
}
