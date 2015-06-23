package net.admin.login.action;

import java.sql.*;
import java.io.*;
import java.util.*;
import java.io.FileOutputStream;
import java.io.IOException;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;

import net.adminsecurity.AdminUser;
import net.admin.login.action.*;
import net.candidate.login.dao.DAO;
import net.candidate.login.action.*;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class CallLetter extends ActionSupport{
	String msg1 = getText("SelectionMessagePDF");
	String getMsg() {
        return msg1;
    }
	
	String msg2 = getText("selectionregardspdfpart1");
	String getMsgRegardspart1() {
        return msg2;
    }
	
	String msg3 = getText("selectionregardspdfpart2");
	String getMsgRegardspart2() {
        return msg3;
    }
	
	String instnameline1 = getText("InstituteName_Line1");
	String getInstituteNameLine1() {
        return instnameline1;
    }
	
	String instnameline2 = getText("InstituteName_Line2");
	String getInstituteNameLine2() {
        return instnameline2;
    }
	
	String instaddline1 = getText("InstituteAdd_Line1");
	String getInstituteAddLine1() {
        return instaddline1;
    }
	
	String instaddline2 = getText("InstituteAdd_Line2");
	String getInstituteAddLine2() {
        return instaddline2;
    }
	
	String instaddline3 = getText("InstituteAdd_Line3");
	String getInstituteAddLine3() {
        return instaddline3;
    }
	
	String offuseline1 = getText("Offuse_Line1");
	String getOffUseLine1() {
        return offuseline1;
    }
	
	String offuseline2 = getText("Offuse_Line2");
	String getOffUseLine2() {
        return offuseline2;
    }

	String offuseline3 = getText("Offuse_Line3");
	String getOffUseLine3() {
        return offuseline3;
    }
	
	String signature = getText("Signature");
	String getSignature() {
        return signature;
    }
	
	String logolocation = getText("LogoLocation");
	String getLogoLocation() {
        return logolocation;
    }
	
	String savinglocation = getText("PDFSavingLocation");
	String getPDFSavingLocation() {
        return savinglocation;
    }
	
	public static String getName(String RegID)
	{	
		String name = "usr";
		try
			{
				Connection connect = null;
				ResultSet result = null;
				PreparedStatement pstmt;
				DBConnection getConnect = new DBConnection();
				connect = getConnect.getCon();
			
				String query = "Select Name FROM applicant WHERE OnlineID=?";
				pstmt = connect.prepareStatement(query);
				pstmt.setString(1,RegID);
				result = pstmt.executeQuery(query);
			       	while (result.next())
			       		{
			       			name = result.getString(1);
			       		}
				}
			catch(Exception e){}
			return name;
	}				
	
	public static String generateview(String RegID)
	{		
		CallLetter progInstance = new CallLetter();
			String qry = "";
			int val1=0;
			
	  	Connection connect = null;
	    ResultSet result = null;
		ResultSet result1 = null;
		PreparedStatement pstmt;

	int appid = 0;	
	String AppName = "";
	String Address = "";
	String State = "";
	String City = "";
	String Pin = "";
	String name = "";
	String msg = "";
	name = getName(RegID);
	  
			try
				{
				DBConnection getConnect = new DBConnection();
				connect = getConnect.getCon();
					msg = "Dear "+name+"\n\n";
					Properties properties = new Properties();
	    try {
	        //properties.load(new FileInputStream("/usr/local/apache-tomcat-6.0.32/webapps/raws/TextFiles/SelectedApplicantPDF.properties"));
			String AppEmailMsg = progInstance.getMsg();
			msg += AppEmailMsg;

	String query = "Select OnlineID, Name, CAddress, CCity, CState, CPin from applicant where OnlineID= ?";
				pstmt = connect.prepareStatement(query);
				pstmt.setString(1,RegID);
				result = pstmt.executeQuery();
	{
	        while (result.next())
	{
	        appid = result.getInt(1);	
	        AppName	= result.getString(2);
	        Address = result.getString(3);
			City = result.getString(4);
			State = result.getString(5);
			Pin = result.getString(6);
	}
	}

			String RefereeRegardspart1 = progInstance.getMsgRegardspart1();
			msg += RefereeRegardspart1;
			
			String RefereeRegardspart2 = progInstance.getMsgRegardspart2();
			msg += RefereeRegardspart2;
			
			Document document=new Document();
	       	PdfWriter.getInstance(document,new FileOutputStream(progInstance.getPDFSavingLocation()+appid+" Name:"+AppName+".pdf"));
			document.open(); 
			  
			  Image image = Image.getInstance(progInstance.getLogoLocation());
		      image.scalePercent(11f);
	          image.setAbsolutePosition(70f, 740f);
			  document.add(image);
					
			Font font1 = new Font(Font.FontFamily.TIMES_ROMAN , 20, Font.BOLD);	
			Font font2 = new Font(Font.FontFamily.TIMES_ROMAN , 15);		
			Font font3 = new Font(Font.FontFamily.TIMES_ROMAN , 8);	
			Font font4 = new Font(Font.FontFamily.TIMES_ROMAN , 11);	
			Font font5 = new Font(Font.FontFamily.TIMES_ROMAN , 8);	
			Font font6 = new Font(Font.FontFamily.TIMES_ROMAN , 12);
			Font font7 = new Font(Font.FontFamily.TIMES_ROMAN , 10);
			document.add(new Chunk("                         "+progInstance.getInstituteNameLine1(), font1));
			document.add(new Paragraph("                                 "+progInstance.getInstituteNameLine2(), font2));
			document.add(new Paragraph("                                                               "+progInstance.getInstituteAddLine1(), font3));
			document.add(new Paragraph("                                                               "+progInstance.getInstituteAddLine2(), font3));
			//document.add(new Paragraph("                                                               "+progInstance.getInstituteAddLine3(), font3));
			
			Paragraph Nopara = new Paragraph();
			Nopara.setSpacingAfter(23);
            Nopara.setSpacingBefore(10);
            Nopara.setAlignment(Element.ALIGN_RIGHT);
            Nopara.setIndentationLeft(50);
            Nopara.setIndentationRight(50);
		    Chunk officeuse1 = new Chunk(progInstance.getOffUseLine1(), font6); 
            Chunk officeuse2 = new Chunk(progInstance.getOffUseLine2(), font6); 
			Chunk officeuse3 = new Chunk(progInstance.getOffUseLine3()+appid, font6); 
			Nopara.add(officeuse1); 
			Nopara.add(officeuse2); 
			Nopara.add(officeuse3); 
			document.add(Nopara);
			
			Paragraph Addresspara = new Paragraph();
			Addresspara.setSpacingAfter(20);
			Addresspara.setSpacingBefore(7);
			Addresspara.setAlignment(Element.ALIGN_JUSTIFIED);
			Addresspara.setIndentationLeft(50);
			Addresspara.setIndentationRight(50);
			Addresspara.setLeading(0f, 0.8f);
		
		Chunk addressline1 = new Chunk(AppName+"\n", font7);
		Addresspara.add(addressline1);
		
		String Add = "";
		StringTokenizer st = new StringTokenizer(Address, ",");
		while (st.hasMoreTokens()) 
		{
 		Add = st.nextToken();
		Chunk addressline2 = new Chunk(Add+ "\n", font7);
 		Addresspara.add(addressline2);
		}
		
		Chunk addressline3 = new Chunk(City+ " - " +Pin+ "\n" +State+ "\n\n", font7);
		Addresspara.add(addressline3);
		document.add(Addresspara);
		
		Paragraph Msgpara = new Paragraph();
		Msgpara.setSpacingAfter(20);
        Msgpara.setSpacingBefore(7);
        Msgpara.setAlignment(Element.ALIGN_JUSTIFIED);
        Msgpara.setIndentationLeft(50);
        Msgpara.setIndentationRight(50);
		
		
		//Msgpara.add("Dear "+AppName+" "+Surname+", \n\n");
		Chunk msgline1 = new Chunk("Dear "+AppName+", \n\n", font6);
		Msgpara.add(msgline1);
		
		//Msgpara.add(AppEmailMsg+ "\n\n");
		Chunk msgline2 = new Chunk(AppEmailMsg+ "\n\n", font4);
		Msgpara.add(msgline2);
		
		//Msgpara.add(RefereeRegards);
		Chunk regardspart1 = new Chunk(RefereeRegardspart1, font4);
		Msgpara.add(regardspart1);
		document.add(Msgpara);
		
		/* Signature
		Image Sign = Image.getInstance(progInstance.getSignature());
		Sign.scalePercent(10f);
		Sign.setAbsolutePosition(80f, 655f);
		document.add(Sign);
		*/
		
		Paragraph Regpara = new Paragraph();
		Regpara.setSpacingAfter(20);
		Regpara.setSpacingBefore(7);
		Regpara.setAlignment(Element.ALIGN_JUSTIFIED);
		Regpara.setIndentationLeft(50);
		Regpara.setIndentationRight(50);	
		
		Chunk regardspart2 = new Chunk(RefereeRegardspart2, font4);
		Regpara.add(regardspart2);
		document.add(Regpara);
					  
	      	document.close();
		  
	        } catch (IOException e) {
	    }              
						    }
	                        catch(Exception e){}
	                        return msg;
	        }
}
