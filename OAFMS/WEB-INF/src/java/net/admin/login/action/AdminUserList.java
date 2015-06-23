package net.admin.login.action;

public class AdminUserList {
	int ID;
	String Name;
	String Username;
	String Email;
	String Passwd;
	String AccountStatus;
	
	public AdminUserList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminUserList(int ID,  String Name, String Username, String Email, String Passwd, String AccountStatus)
	{
		super();
		this.ID = ID;
		this.Name = Name;
		this.Username = Username;
		this.Email = Email;
		this.Passwd = Passwd;
		this.AccountStatus = AccountStatus;
	}
	
	// OnlineID Getter and Setter
	public int getID() {
		return ID;
	}
	public void setID(int ID) {
		this.ID = ID;
	}
	
	// Name Getter and Setter
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name = Name;
	}
	
	// Username Getter and Setter
	public String getUsername() {
		return Username;
	}
	public void setUsername(String Username) {
		this.Username = Username;
	}
	
	// Email Getter and Setter
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	
	// Passwd Getter and Setter
	public String getPasswd() {
		return Passwd;
	}
	public void setPasswd(String Passwd) {
		this.Passwd = Passwd;
	}
	
	// AccountStatus Getter and Setter
	public String getAccountStatus() {
		return AccountStatus;
	}
	public void setAccountStatus(String AccountStatus) {
		this.AccountStatus = AccountStatus;
	}
}
