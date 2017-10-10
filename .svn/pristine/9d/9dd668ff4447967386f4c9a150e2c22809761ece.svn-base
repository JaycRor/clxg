package com.zte.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.dao.HotelDao;
import com.zte.pojo.Hotel;

public class HotelDaoImpl extends HibernateDaoSupport implements HotelDao{
	private HotelDao hotelDao;

	public HotelDao getHotelDao() {
		return hotelDao;
	}

	public void setHotelDao(HotelDao hotelDao) {
		this.hotelDao = hotelDao;
	}

	@Override
	public List<Hotel> findAllHotel() {
		String hql = "from Hotel";     
        @SuppressWarnings("unchecked")
		List<Hotel> hotel = this.getHibernateTemplate().find(hql) ;    
		return hotel;
	}

}
