package com.user;

public class RegisterUser {
	private int RID;
	private String First_Name;
	private String Last_Name;
	private String Email;
	private String Phone;
	private String Username;
	private String Password;
	
	public RegisterUser(int RID,String First_Name,String Last_Name,String phone2,String Username,String Password) {
		this.RID=RID;
		this.First_Name=First_Name;
		this.Last_Name=Last_Name;
		this.Password=Password;
		this.Phone=phone2;
		this.Username=Username;
	}
	
	public int getRID() {
		return this.RID;
	}
	public String getFirst_Name() {
		return First_Name;
	}
	public String getLast_Name() {
		return Last_Name;
	}
	public String getPassword() {
		return Password;
	}
	public String getUsername() {
		return Username;
	}
	public String getPhone() {
		return Phone;
	}
}













