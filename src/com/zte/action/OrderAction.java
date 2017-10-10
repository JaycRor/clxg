package com.zte.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zte.pojo.Order;
import com.zte.service.OrderService;

public class OrderAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7341776104274996021L;
	Order order;
	OrderService orderService;
	List<Order> orders;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public List<Order> getOrders() {
		return orders;
	}
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	public String findAllOrder(){
		List<Order> o = this.orderService.findAllOrder();
		setOrders(o);
		return "orderList";
	}

}
