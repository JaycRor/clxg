package com.zte.service.impl;


import java.util.List;

import com.zte.dao.ConfessionDao;
import com.zte.pojo.Confession;
import com.zte.service.ConfessionService;

public class ConfessionServiceImpl  implements
		ConfessionService {
	private ConfessionDao confessionDao;

	@Override
	public void addConfession(Confession confession) {
		// TODO Auto-generated method stub
		this.confessionDao.addConfession(confession);
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
		return this.confessionDao.findAllCon();
	}

	
}
