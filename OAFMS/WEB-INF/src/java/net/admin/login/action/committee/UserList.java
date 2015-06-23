package net.admin.login.action.committee;

public class UserList {
	int ID;
	String Name;
	String Username;
	String Email;
	String Passwd;
	
	public UserList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserList(int ID, String Name, String Username, String Email, String Passwd)
	{
		super();
		this.ID = ID;
		this.Name = Name;
		this.Username = Username;
		this.Email = Email;
		this.Passwd = Passwd;
	}
	
	// ID Getter and Setter
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
}
