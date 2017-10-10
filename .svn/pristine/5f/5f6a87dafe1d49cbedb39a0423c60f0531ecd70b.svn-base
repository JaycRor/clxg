package com.zte.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.dao.OrderDao;
import com.zte.pojo.Order;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao{

	

	@Override
	public List<Order> findAllOrder() {
		String hql = "from Order";     
        @SuppressWarnings("unchecked")
		List<Order> order = this.getHibernateTemplate().find(hql) ;    
		return order;
		
	}

}
