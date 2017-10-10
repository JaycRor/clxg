package com.zte.dao;

import java.util.List;

import com.zte.pojo.Confession;

public interface ConfessionDao {

	public void addConfession(Confession confession);
	
	public List<Confession> findAllCon();
}
