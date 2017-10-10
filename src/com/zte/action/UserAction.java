package com.zte.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zte.pojo.User;
import com.zte.service.UserService;

public class UserAction extends ActionSupport {

	private static final int MANAGER = 1;
	private static final int COMMONPEOPLE = 0;
	private static final int MONK = 2;
	/**
	 */
	private static final long serialVersionUID = -6394146460844350247L;
	private User user;
	private UserService userService;
	private List<User> users;

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	// 接收验证码:
	private String yzm;

	

	public void setYzm(String yzm) {
		this.yzm = yzm;
	}

	public Boolean checkYZM() {
		// 判断验证码程序:
		// 从session中获得验证码的随机值:
		String yzm1 = (String) ServletActionContext.getRequest()
				.getSession().getAttribute("yzm");
		if (!yzm.equalsIgnoreCase(yzm1)) {
			this.addActionError("验证码输入错误!");
			return false;
		}
		return true;
	}

	public String addUser() {
		this.userService.addUser(user);
		return LOGIN;
	}

	public String login() {
		User existUser = this.userService.checklogin(user);
		// 判断
		if (existUser == null) {
			// 登录失败
			this.addActionError("登录失败:用户名或密码错误!");
			return LOGIN;
		} else if (existUser.getUState() == COMMONPEOPLE) {
			// 登录成功
			// 将用户的信息存入到session中
			ServletActionContext.getRequest().getSession()
					.setAttribute("existUser", existUser);
			// 页面跳转
			return SUCCESS;
		} else if (existUser.getUState() == MANAGER) {
			ServletActionContext.getRequest().getSession()
					.setAttribute("existUser", existUser);
			return "manager";
		} else if (existUser.getUState() == MONK) {
			ServletActionContext.getRequest().getSession()
					.setAttribute("existUser", existUser);
			return "rent";
		} else {
			return "rent";
		}

	}
	public String findAllUser(){
		List<User> u = this.userService.findAllUser();
		System.out.println("~~~~~~"+u.get(0).getUName());
		setUsers(u);
		return "userList";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
