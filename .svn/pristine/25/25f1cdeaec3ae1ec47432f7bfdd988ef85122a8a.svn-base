package com.zte.service.impl;

import java.util.List;

import com.zte.dao.OrderDao;
import com.zte.pojo.Order;
import com.zte.service.OrderService;

public class OrderServiceImpl implements OrderService{
	OrderDao orderDao;

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public List<Order> findAllOrder() {
		return this.orderDao.findAllOrder();
	}

}
