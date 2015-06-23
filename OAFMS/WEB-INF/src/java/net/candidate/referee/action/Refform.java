package net.candidate.referee.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import net.candidate.referee.dao.DAO;
import net.database.DBConnection;

public class Refform extends ActionSupport{
	
	private int Oid;
	private String Candname;
	private String Knowing;
	private String Gi;
	private String Gsk;
	private String Oap;
	private String Mfr;
	private String Ma;
	private String Eos;
	private String Psa;
	private String Cs;
	private String Sc;
	private String Cit;
	private String Strength;
	private String Weaknesses;
	private String Order;
	private String Recommending;
	private String Grades;
	private String Gradesifno;
	private String Interest;
	private String Excc;
	private String Summary;
	private String Refname;
	private String Designation;
	private String Institute;
	private String City;
	private String Pin;
	private String Mobilenum;
	private String Telephone;
	private String Email;
	
	DAO dao=new DAO();
	
	public String execute(){
		try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int RefID=0;
			String AlreadyApplied_qry = "SELECT RefID FROM Referee WHERE Email=? and App_OnlineID=?";
			pstmt = connect.prepareStatement(AlreadyApplied_qry);
			pstmt.setString(1, Email);
			pstmt.setInt(2, Oid);
			result = pstmt.executeQuery();
			while(result.next())
			{
				RefID = result.getInt(1);
			}
			
			boolean comparing_appform = (RefID == 0); 
			
			if (comparing_appform == false)
			{			
				addActionError(getText("validate_RefereeAlreadyapplied"));
		        return ERROR;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(dao.insert(Oid, Candname, Knowing, Gi, Gsk, Oap, Mfr, Ma, Eos, Psa, Cs, Sc, Cit, Strength, Weaknesses, Order, Recommending, Grades, Gradesifno, Interest, Excc, Summary, Refname, Designation, Institute, City, Pin, Mobilenum, Telephone, Email))
		{
			this.addActionError("You have successfully inserted data.");
			return "success";
			}
		else
			this.addActionError("Data is not successfully inserted");
			return "error";
	}
	
	// OnlineID Getter and Setter
	public int getOid() {
		return Oid;
	}
	public void setOid(int Oid) {
		this.Oid = Oid;
	}
	
	// Candidate's Name Getter and Setter
	public String getCandname() {
		return Candname;
	}
	public void setCandname(String Candname) {
		this.Candname = Candname;
	}
	
	// Knowing Getter and Setter
	public String getKnowing() {
		return Knowing;
	}
	public void setKnowing(String Knowing) {
		this.Knowing = Knowing;
	}
	
	// Gi Getter and Setter
	public String getGi() {
		return Gi;
	}
	public void setGi(String Gi) {
		this.Gi = Gi;
	}
	
	// Gsk Getter and Setter
	public String getGsk() {
		return Gsk;
	}
	public void setGsk(String Gsk) {
		this.Gsk = Gsk;
	}
	
	// Oap Getter and Setter
	public String getOap() {
		return Oap;
	}
	public void setOap(String Oap) {
		this.Oap = Oap;
	}
	
	// Mfr Getter and Setter
	public String getMfr() {
		return Mfr;
	}
	public void setMfr(String Mfr) {
		this.Mfr = Mfr;
	}
	
	// Ma Getter and Setter
	public String getMa() {
		return Ma;
	}
	public void setMa(String Ma) {
		this.Ma = Ma;
	}
	
	// Eos Getter and Setter
	public String getEos() {
		return Eos;
	}
	public void setEos(String Eos) {
		this.Eos = Eos;
	}
	
	// Psa Getter and Setter
	public String getPsa() {
		return Psa;
	}
	public void setPsa(String Psa) {
		this.Psa = Psa;
	}
	
	// Cs Getter and Setter
	public String getCs() {
		return Cs;
	}
	public void setCs(String Cs) {
		this.Cs = Cs;
	}
	
	// Sc Getter and Setter
	public String getSc() {
		return Sc;
	}
	public void setSc(String Sc) {
		this.Sc = Sc;
	}
	
	// Cit Getter and Setter
	public String getCit() {
		return Cit;
	}
	public void setCit(String Cit) {
		this.Cit = Cit;
	}
	
	// Strength Getter and Setter
	public String getStrength() {
		return Strength;
	}
	public void setStrength(String Strength) {
		this.Strength = Strength;
	}
	
	// Weaknesses Getter and Setter
	public String getWeaknesses() {
		return Weaknesses;
	}
	public void setWeaknesses(String Weaknesses) {
		this.Weaknesses = Weaknesses;
	}
	
	// Order Getter and Setter
	public String getOrder() {
		return Order;
	}
	public void setOrder(String Order) {
		this.Order = Order;
	}
	
	// Recommending Getter and Setter
	public String getRecommending() {
		return Recommending;
	}
	public void setRecommending(String Recommending) {
		this.Recommending = Recommending;
	}
	
	// Grades Getter and Setter
	public String getGrades() {
		return Grades;
	}
	public void setGrades(String Grades) {
		this.Grades = Grades;
	}
	
	// Gradesifno Getter and Setter
	public String getGradesifno() {
		return Gradesifno;
	}
	public void setGradesifno(String Gradesifno) {
		this.Gradesifno = Gradesifno;
	}
	
	// Interest Getter and Setter
	public String getInterest() {
		return Interest;
	}
	public void setInterest(String Interest) {
		this.Interest = Interest;
	}
	
	// Excc Getter and Setter
	public String getExcc() {
		return Excc;
	}
	public void setExcc(String Excc) {
		this.Excc = Excc;
	}
	
	// Summary Getter and Setter
	public String getSummary() {
		return Summary;
	}
	public void setSummary(String Summary) {
		this.Summary = Summary;
	}
	
	// Referee Name Getter and Setter
	public String getRefname() {
		return Refname;
	}
	public void setRefname(String Refname) {
		this.Refname = Refname;
	}
	
	// Designation Getter and Setter
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String Designation) {
		this.Designation = Designation;
	}
	
	// Institute Getter and Setter
	public String getInstitute() {
		return Institute;
	}
	public void setInstitute(String Institute) {
		this.Institute = Institute;
	}
	
	// City Getter and Setter
	public String getCity() {
		return City;
	}
	public void setCity(String City) {
		this.City = City;
	}
	
	// Pin Getter and Setter
	public String getPin() {
		return Pin;
	}
	public void setPin(String Pin) {
		this.Pin = Pin;
	}
	
	// Mobile Number Getter and Setter
	public String getMobilenum() {
		return Mobilenum;
	}
	public void setMobilenum(String Mobilenum) {
		this.Mobilenum = Mobilenum;
	}
	
	// Telephone Getter and Setter
	public String getTelephone() {
		return Telephone;
	}
	public void setTelephone(String Telephone) {
		this.Telephone = Telephone;
	}
	
	// Email Getter and Setter
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	
	public Refform()
	    {
	    }
}
