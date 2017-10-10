package com.zte.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zte.pojo.Hotel;
import com.zte.service.HotelService;

public class HotelAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4407969009796618892L;
	private Hotel hotel;
	private HotelService hotelService;
	private List<Hotel> hotels;
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public List<Hotel> getHotels() {
		return hotels;
	}
	public void setHotels(List<Hotel> hotels) {
		this.hotels = hotels;
	}
	public String findAllHotel(){
		List<Hotel> h = this.hotelService.findAllHotel();
		System.out.println("~~~~~~"+h.get(0).getHName());
		setHotels(h);
		return "conglinList";
	}
	public HotelService getHotelService() {
		return hotelService;
	}
	public void setHotelService(HotelService hotelService) {
		this.hotelService = hotelService;
	}
	
}
