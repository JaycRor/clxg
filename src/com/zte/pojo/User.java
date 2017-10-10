package com.zte.pojo;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -5369911170731960576L;
	private Integer UId;
	private String UName;
	private String UPassword;
	private String USex;
	private String UEmail;
	private String UTel;
	private int UState;
	// Constructors
	public int getUState() {
		return UState;
	}

	public void setUState(int uState) {
		UState = uState;
	}

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String UName, String UPassword) {
		this.UName = UName;
		this.UPassword = UPassword;

	}

	/** full constructor */
	public User(String UName, String UPassword, String USex, String UTel,String UEmail) {
		this.UName = UName;
		this.UPassword = UPassword;
		this.USex = USex;
		this.UTel = UTel;
		this.UEmail=UEmail;

	}

	// Property accessors

	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	public String getUName() {
		return this.UName;
	}

	public void setUName(String UName) {
		this.UName = UName;
	}

	public String getUPassword() {
		return this.UPassword;
	}

	public void setUPassword(String UPassword) {
		this.UPassword = UPassword;
	}

	public String getUSex() {
		return this.USex;
	}

	public void setUSex(String USex) {
		this.USex = USex;
	}

	public String getUTel() {
		return this.UTel;
	}

	public void setUTel(String UTel) {
		this.UTel = UTel;
	}

	public String getUEmail() {
		return UEmail;
	}

	public void setUEmail(String uEmail) {
		UEmail = uEmail;
	}

}