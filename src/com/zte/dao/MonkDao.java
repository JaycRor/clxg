package com.zte.dao;

import java.util.List;

import com.zte.pojo.Monk;

public interface MonkDao {
	List<Monk> findAllMonk();
	void saveMonk(Monk monk);
	void deleteMonk(Monk monk);
	void updateMonk(Monk monk);

}
