package com.zte.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zte.base.StrRandom;
import com.zte.pojo.Confession;
import com.zte.service.ConfessionService;

public class ConfessionAction extends ActionSupport {
	
	private String message="";


	/**
	 * @author kevinLuo
	 */
	private static final long serialVersionUID = 8418415828440751143L;
	private Confession confession;
	private ConfessionService confessionService;
	private List<Confession> list;

	// �������
	public String addConfession() {
		ConPwd();
		this.confessionService.addConfession(confession);
		System.out.println(confession.getPwd());
		return "OK";

	}

	// ��������
	public void ConPwd() {
		Date d = new Date();
		String s = StrRandom.getStringRandom(7);
		confession.setPwd(s);
		confession.setReturnflag(false);
		confession.setCtime(d);
		setMessage("���μ�������Կ��"+s);
	}

	// �鿴���
	public String checkConfession() {
		list = this.confessionService.findAllCon();
		 setList(list);

//		Map<String, Object> map = ActionContext.getContext().getSession();
//		map.put("list", list);
		System.out.println("---------" + list.get(0).getPwd());
		return "list";
	}

	public Confession getConfession() {
		return confession;
	}

	public void setConfession(Confession confession) {
		this.confession = confession;
	}

	public ConfessionService getConfessionService() {
		return confessionService;
	}

	public void setConfessionService(ConfessionService confessionService) {
		this.confessionService = confessionService;
	}
	 public List<Confession> getList() {
	 return list;
	 }
	 public void setList(List<Confession> list) {
	 this.list = list;
	 }

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
