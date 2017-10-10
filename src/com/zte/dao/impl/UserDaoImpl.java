package com.zte.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zte.dao.UserDao;
import com.zte.pojo.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	private UserDao userDao;

	@Override
	public void saveUser(User user) {

		this.getHibernateTemplate().save(user);
	}

	@Override
	public User checklogin(User user) {

		String hql = "from User where UName = ? and UPassword = ?";
		@SuppressWarnings("unchecked")
		List<User> list = this.getHibernateTemplate().find(hql,
				user.getUName(), user.getUPassword());
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;

	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public List<User> findAllUser() {
		String hql = "from User";     
        List<User> user = this.getHibernateTemplate().find(hql) ;    
        for(User u : user){     
            System.out.println(u.getUName() + " : " + u.getUPassword() + " : " + u.getUId());     
        }     
		return user;
	}

}
