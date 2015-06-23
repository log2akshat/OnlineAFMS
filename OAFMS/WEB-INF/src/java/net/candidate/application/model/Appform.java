package net.candidate.application.model;

import com.opensymphony.xwork2.ActionSupport;

public class Appform extends ActionSupport{
	
	private String Passwd;
	private String Name;
	//private String Surname;
	private String DOB;
	private String Gender;
	private String Nationality;
	private String Email;
	private String CAddress;
	private String CPin;
	private String CCity;
	private String CState;
	private String Telephone;
	private String PAddress;
	private String PPin;
	private String PCity;
	private String PermanentState;
	private String Category;
	private String Edu_XthStd;
	private String Edu_XthStd_Institute;
	private String Edu_XthStd_Board;
	private String Edu_XthStd_Year;
	private String Edu_XthStd_Grade;
	private String Edu_XthStd_Pc;
	private String Edu_XIIthStd;
	private String Edu_XIIthStd_Institute;
	private String Edu_XIIthStd_Board;
	private String Edu_XIIthStd_Year;
	private String Edu_XIIthStd_Grade;
	private String Edu_XIIthStd_Pc;
	private String Edu_UG;
	private String Edu_UG_Institute;
	private String Edu_UG_Board;
	private String Edu_UG_Year;
	private String Edu_UG_Grade;
	private String Edu_UG_Pc;
	private String Edu_PG;
	private String Edu_PG_Institute;
	private String Edu_PG_Board;
	private String Edu_PG_Year;
	private String Edu_PG_Grade;
	private String Edu_PG_Pc;
	private String Presentcourse;
	private String Coursecompyear;
	private String Referee1;
	private String Referee1Email;
	private String Referee2;
	private String Referee2Email;
	private String Reason;
	private String Appliedbefore1;
	private String Appliedbefore2;
	private String Interest;
	private String GQ_Subject;
	private String GQ_Project;
	private String GQ_Awards;
	private String GQ_Result;
	
	// Passwd Getter and Setter
	public String getPasswd() {
		return Passwd;
	}
	public void setPasswd(String Passwd) {
		this.Passwd = Passwd;
	}
	
	// Name Getter and Setter
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name = Name;
	}
	
	// Surname Getter and Setter
	/**public String getSurname() {
		return Surname;
	}
	public void setSurname(String Surname) {
		this.Surname = Surname;
	} **/
	
	// DOB Getter and Setter
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String DOB) {
		this.DOB = DOB;
	}
	
	// Gender Getter and Setter
	public String getGender() {
		return Gender;
	}
	public void setGender(String Gender) {
		this.Gender = Gender;
	}
	
	// Nationality Getter and Setter
	public String getNationality() {
		return Nationality;
	}
	public void setNationality(String Nationality) {
		this.Nationality = Nationality;
	}
	
	// Email Getter and Setter
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	
	// CAddress Getter and Setter
	public String getCAddress() {
		return CAddress;
	}
	public void setCAddress(String CAddress) {
		this.CAddress = CAddress;
	}
	
	// CPin Getter and Setter
	public String getCPin() {
		return CPin;
	}
	public void setCPin(String CPin) {
		this.CPin = CPin;
	}
	
	// CCity Getter and Setter
	public String getCCity() {
		return CCity;
	}
	public void setCCity(String CCity) {
		this.CCity = CCity;
	}
	
	// CState Getter and Setter
	public String getCState() {
		return CState;
	}
	public void setCState(String CState) {
		this.CState = CState;
	}
	
	// Telephone Getter and Setter
	public String getTelephone() {
		return Telephone;
	}
	public void setTelephone(String Telephone) {
		this.Telephone = Telephone;
	}
	
	// PAddress Getter and Setter
	public String getPAddress() {
		return PAddress;
	}
	public void setPAddress(String PAddress) {
		this.PAddress = PAddress;
	}
	
	// PPin Getter and Setter
	public String getPPin() {
		return PPin;
	}
	public void setPPin(String PPin) {
		this.PPin = PPin;
	}
	
	// PCity Getter and Setter
	public String getPCity() {
		return PCity;
	}
	public void setPCity(String PCity) {
		this.PCity = PCity;
	}
	
	// PState Getter and Setter
	public String getPermanentState() {
		return PermanentState;
	}
	public void setPermanentState(String PermanentState) {
		this.PermanentState = PermanentState;
	}
	
	// Category Getter and Setter
	public String getCategory() {
		return Category;
	}
	public void setCategory(String Category) {
		this.Category = Category;
	}
	
	// Edu_XthStd Getter and Setter
	public String getEdu_XthStd() {
		return Edu_XthStd;
	}
	public void setEdu_XthStd(String Edu_XthStd) {
		this.Edu_XthStd = Edu_XthStd;
	}
	
	// Edu_XthStd_Institute Getter and Setter
	public String getEdu_XthStd_Institute() {
		return Edu_XthStd_Institute;
	}
	public void setEdu_XthStd_Institute(String Edu_XthStd_Institute) {
		this.Edu_XthStd_Institute = Edu_XthStd_Institute;
	}
	
	// Edu_XthStd_Board Getter and Setter
	public String getEdu_XthStd_Board() {
		return Edu_XthStd_Board;
	}
	public void setEdu_XthStd_Board(String Edu_XthStd_Board) {
		this.Edu_XthStd_Board = Edu_XthStd_Board;
	}
	
	// Edu_XthStd_Year Getter and Setter
	public String getEdu_XthStd_Year() {
		return Edu_XthStd_Year;
	}
	public void setEdu_XthStd_Year(String Edu_XthStd_Year) {
		this.Edu_XthStd_Year = Edu_XthStd_Year;
	}
	
	// Edu_XthStd_Grade Getter and Setter
	public String getEdu_XthStd_Grade() {
		return Edu_XthStd_Grade;
	}
	public void setEdu_XthStd_Grade(String Edu_XthStd_Grade) {
		this.Edu_XthStd_Grade = Edu_XthStd_Grade;
	}
	
	// Edu_XthStd_Pc Getter and Setter
	public String getEdu_XthStd_Pc() {
		return Edu_XthStd_Pc;
	}
	public void setEdu_XthStd_Pc(String Edu_XthStd_Pc) {
		this.Edu_XthStd_Pc = Edu_XthStd_Pc;
	}
	
	// Edu_XIIthStd Getter and Setter
	public String getEdu_XIIthStd() {
		return Edu_XIIthStd;
	}
	public void setEdu_XIIthStd(String Edu_XIIthStd) {
		this.Edu_XIIthStd = Edu_XIIthStd;
	}
	
	// Edu_XIIthStd_Institute Getter and Setter
	public String getEdu_XIIthStd_Institute() {
		return Edu_XIIthStd_Institute;
	}
	public void setEdu_XIIthStd_Institute(String Edu_XIIthStd_Institute) {
		this.Edu_XIIthStd_Institute = Edu_XIIthStd_Institute;
	}
	
	// Edu_XIIthStd_Board Getter and Setter
	public String getEdu_XIIthStd_Board() {
		return Edu_XIIthStd_Board;
	}
	public void setEdu_XIIthStd_Board(String Edu_XIIthStd_Board) {
		this.Edu_XIIthStd_Board = Edu_XIIthStd_Board;
	}
	
	// Edu_XIIthStd_Year Getter and Setter
	public String getEdu_XIIthStd_Year() {
		return Edu_XIIthStd_Year;
	}
	public void setEdu_XIIthStd_Year(String Edu_XIIthStd_Year) {
		this.Edu_XIIthStd_Year = Edu_XIIthStd_Year;
	}
	
	// Edu_XIIthStd_Grade Getter and Setter
	public String getEdu_XIIthStd_Grade() {
		return Edu_XIIthStd_Grade;
	}
	public void setEdu_XIIthStd_Grade(String Edu_XIIthStd_Grade) {
		this.Edu_XIIthStd_Grade = Edu_XIIthStd_Grade;
	}
	
	// Edu_XIIthStd_Pc Getter and Setter
	public String getEdu_XIIthStd_Pc() {
		return Edu_XIIthStd_Pc;
	}
	public void setEdu_XIIthStd_Pc(String Edu_XIIthStd_Pc) {
		this.Edu_XIIthStd_Pc = Edu_XIIthStd_Pc;
	}
	
	// Edu_UG Getter and Setter
	public String getEdu_UG() {
		return Edu_UG;
	}
	public void setEdu_UG(String Edu_UG) {
		this.Edu_UG = Edu_UG;
	}
	
	// Edu_UG_Institute Getter and Setter
	public String getEdu_UG_Institute() {
		return Edu_UG_Institute;
	}
	public void setEdu_UG_Institute(String Edu_UG_Institute) {
		this.Edu_UG_Institute = Edu_UG_Institute;
	}
	
	// Edu_UG_Board Getter and Setter
	public String getEdu_UG_Board() {
		return Edu_UG_Board;
	}
	public void setEdu_UG_Board(String Edu_UG_Board) {
		this.Edu_UG_Board = Edu_UG_Board;
	}
	
	// Edu_UG_Year Getter and Setter
	public String getEdu_UG_Year() {
		return Edu_UG_Year;
	}
	public void setEdu_UG_Year(String Edu_UG_Year) {
		this.Edu_UG_Year = Edu_UG_Year;
	}
	
	// Edu_UG_Grade Getter and Setter
	public String getEdu_UG_Grade() {
		return Edu_UG_Grade;
	}
	public void setEdu_UG_Grade(String Edu_UG_Grade) {
		this.Edu_UG_Grade = Edu_UG_Grade;
	}
	
	// Edu_UG_Pc Getter and Setter
	public String getEdu_UG_Pc() {
		return Edu_UG_Pc;
	}
	public void setEdu_UG_Pc(String Edu_UG_Pc) {
		this.Edu_UG_Pc = Edu_UG_Pc;
	}
	
	// Edu_PG Getter and Setter
	public String getEdu_PG() {
		return Edu_PG;
	}
	public void setEdu_PG(String Edu_PG) {
		this.Edu_PG = Edu_PG;
	}
	
	// Edu_PG_Institute Getter and Setter
	public String getEdu_PG_Institute() {
		return Edu_PG_Institute;
	}
	public void setEdu_PG_Institute(String Edu_PG_Institute) {
		this.Edu_PG_Institute = Edu_PG_Institute;
	}
	
	// Edu_PG_Board Getter and Setter
	public String getEdu_PG_Board() {
		return Edu_PG_Board;
	}
	public void setEdu_PG_Board(String Edu_PG_Board) {
		this.Edu_PG_Board = Edu_PG_Board;
	}
	
	// Edu_PG_Year Getter and Setter
	public String getEdu_PG_Year() {
		return Edu_PG_Year;
	}
	public void setEdu_PG_Year(String Edu_PG_Year) {
		this.Edu_PG_Year = Edu_PG_Year;
	}
	
	// Edu_PG_Grade Getter and Setter
	public String getEdu_PG_Grade() {
		return Edu_PG_Grade;
	}
	public void setEdu_PG_Grade(String Edu_PG_Grade) {
		this.Edu_PG_Grade = Edu_PG_Grade;
	}
	
	// Edu_PG_Pc Getter and Setter
	public String getEdu_PG_Pc() {
		return Edu_PG_Pc;
	}
	public void setEdu_PG_Pc(String Edu_PG_Pc) {
		this.Edu_PG_Pc = Edu_PG_Pc;
	}
	
	// Presentcourse Getter and Setter
	public String getPresentcourse() {
		return Presentcourse;
	}
	public void setPresentcourse(String Presentcourse) {
		this.Presentcourse = Presentcourse;
	}
	
	// Coursecompyear Getter and Setter
	public String getCoursecompyear() {
		return Coursecompyear;
	}
	public void setCoursecompyear(String Coursecompyear) {
		this.Coursecompyear = Coursecompyear;
	}
	
	// Referee1 Getter and Setter
	public String getReferee1() {
		return Referee1;
	}
	public void setReferee1(String Referee1) {
		this.Referee1 = Referee1;
	}
	
	// Referee1Email Getter and Setter
	public String getReferee1Email() {
		return Referee1Email;
	}
	public void setReferee1Email(String Referee1Email) {
		this.Referee1Email = Referee1Email;
	}
	
	// Referee2 Getter and Setter
	public String getReferee2() {
		return Referee2;
	}
	public void setReferee2(String Referee2) {
		this.Referee2 = Referee2;
	}
	
	// Referee2Email Getter and Setter
	public String getReferee2Email() {
		return Referee2Email;
	}
	public void setReferee2Email(String Referee2Email) {
		this.Referee2Email = Referee2Email;
	}
	
	// Reason Getter and Setter
	public String getReason() {
		return Reason;
	}
	public void setReason(String Reason) {
		this.Reason = Reason;
	}
	
	// Appliedbefore1 Getter and Setter
	public String getAppliedbefore1() {
		return Appliedbefore1;
	}
	public void setAppliedbefore1(String Appliedbefore1) {
		this.Appliedbefore1 = Appliedbefore1;
	}
	
	// Appliedbefore2 Getter and Setter
	public String getAppliedbefore2() {
		return Appliedbefore2;
	}
	public void setAppliedbefore2(String Appliedbefore2) {
		this.Appliedbefore2 = Appliedbefore2;
	}
	
	// Interest Getter and Setter
	public String getInterest() {
		return Interest;
	}
	public void setInterest(String Interest) {
		this.Interest = Interest;
	}
	
	// GQ_Subject Getter and Setter
	public String getGQ_Subject() {
		return GQ_Subject;
	}
	public void setGQ_Subject(String GQ_Subject) {
		this.GQ_Subject = GQ_Subject;
	}
	
	// GQ_Project Getter and Setter
	public String getGQ_Project() {
		return GQ_Project;
	}
	public void setGQ_Project(String GQ_Project) {
		this.GQ_Project = GQ_Project;
	}
	
	// GQ_Awards Getter and Setter
	public String getGQ_Awards() {
		return GQ_Awards;
	}
	public void setGQ_Awards(String GQ_Awards) {
		this.GQ_Awards = GQ_Awards;
	}
	
	// GQ_Result Getter and Setter
	public String getGQ_Result() {
		return GQ_Result;
	}
	public void setGQ_Result(String GQ_Result) {
		this.GQ_Result = GQ_Result;
	}
	
	public Appform()
	    {
	    }
}
