package com.MedicalInsuranceproject.in.Entity;

import java.sql.Date;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Component
@Entity
@Table(name = "MedinCustomers")
public class Customers {	

	@GeneratedValue(strategy = GenerationType.AUTO)
	private long policynum;	
	@Id
	private String UID;

	private String Cmr_Name;
	
	private int Cmr_Age;
	
	private String Cmr_Gender;
	
	private String Cmr_mobile;
	
	private String Cmr_Email;
	
	private String Cmr_Aadhar;
	
	private String Cmr_Address;
	
	private String Cmr_qualification;
	
	private Date  pstartdate;
	
	public Date getPstartdate() {
		return pstartdate;
	}
	public void setPstartdate(Date pstartdate) {
		this.pstartdate = pstartdate;
	}
	public Date getPenddate() {
		return penddate;
	}
	public void setPenddate(Date penddate) {
		this.penddate = penddate;
	}
	public long getPremium() {
		return premium;
	}
	public void setPremium(long premium) {
		this.premium = premium;
	}
	public String getPremiumfor() {
		return premiumfor;
	}
	public void setPremiumfor(String premiumfor) {
		this.premiumfor = premiumfor;
	}
	
	
	private Date  penddate;
	
	private long premium;

	private String premiumfor;
	
	private int Premiumtakenmonths;
	
    private int EMI;
    
    private double intrestrate;
    
    public int getPremiumtakenmonths() {
		return Premiumtakenmonths;
	}
	public void setPremiumtakenmonths(int premiumtakenmonths) {
		Premiumtakenmonths = premiumtakenmonths;
	}
	public int getEMI() {
		return EMI;
	}
	public void setEMI(int eMI) {
		EMI = eMI;
	}
	public double getIntrstrate() {
		return intrestrate;
	}
	public void setIntrstrate(double intrstrate) {
		this.intrestrate = intrstrate;
	}
	public int getTotalEMI() {
		return totalEMI;
	}
	public void setTotalEMI(int totalEMI) {
		this.totalEMI = totalEMI;
	}


	private int totalEMI;
	
	
	private String Sp_Name;
	
	private int Sp_Age;
	
	private String Sp_Gender;
	
	private String Sp_mobile;
	
	private String Sp_Email;
	
	private String Sp_Aadhar;
	
	private String Sp_Address;
	
	private String Sp_qualification;
	
	private int Sp_No_ofChildren;
	
	private String ch1_Name;
	
	private int ch1_Age;
	
	private String ch2_Name;
	
	private int ch2_Age;
	
	private int Sp_No_ofDependents;
	
	
	private String Dp1_Name;
	
	private int Dp1_Age;
	
	private String Dp1_Gender;
	
	private String Dp1_Aadhar;
	
	private String Dp1_qualification;
	
	private String Dp1_Relation;
	
	private String Dp2_Name;
	
	private int Dp2_Age;
	
	private String Dp2_Gender;
	
	private String Dp2_Aadhar;
	
	private String Dp2_qualification;
	
	private String Dp2_Relation;
	
	public String getClaimreason() {
		return Claimreason;
	}
	public void setClaimreason(String claimreason) {
		Claimreason = claimreason;
	}
	public String getHospitallist() {
		return Hospitallist;
	}
	public void setHospitallist(String hospitallist) {
		Hospitallist = hospitallist;
	}
	public String getClearenceamout() {
		return Clearenceamout;
	}
	public void setClearenceamout(String clearenceamout) {
		Clearenceamout = clearenceamout;
	}
	public int getCashlessadmitlimt() {
		return cashlessadmitlimt;
	}
	public void setCashlessadmitlimt(int cashlessadmitlimt) {
		this.cashlessadmitlimt = cashlessadmitlimt;
	}
	public String getStatusofclaim() {
		return Statusofclaim;
	}
	public void setStatusofclaim(String statusofclaim) {
		Statusofclaim = statusofclaim;
	}


	private String Claimreason;
	
	private String Hospitallist;
	
	private String Clearenceamout;
	
	private int cashlessadmitlimt;
	
	private String Statusofclaim;

	private Date dateofjoin;
	
	
	
	
	public Date getDateofjoin() {
		return dateofjoin;
	}
	public void setDateofjoin(Date dateofjoin) {
		this.dateofjoin = dateofjoin;
	}
	public long getPolicyNumber() {
		return policynum;
	}
	public void setPolicyNumber(long policyNumber) {
		this.policynum = policyNumber;
	}
	public String getUID() {
		return UID;
	}
	public void setUID(String  uID) {
		this.UID = uID;
	}
	public String getCmr_Name() {
		return Cmr_Name;
	}
	public void setCmr_Name(String cmr_Name) {
		this.Cmr_Name = cmr_Name;
	}
	public int getCmr_Age() {
		return Cmr_Age;
	}
	public void setCmr_Age(int cmr_Age) {
		this.Cmr_Age = cmr_Age;
	}
	public String getCmr_Gender() {
		return Cmr_Gender;
	}
	public void setCmr_Gender(String cmr_Gender) {
		this.Cmr_Gender = cmr_Gender;
	}
	public String getCmr_mobile() {
		return Cmr_mobile;
	}
	public void setCmr_mobile(String cmr_mobile) {
		this.Cmr_mobile = cmr_mobile;
	}
	public String getCmr_Email() {
		return Cmr_Email;
	}
	public void setCmr_Email(String cmr_Email) {
		this.Cmr_Email = cmr_Email;
	}
	public String getCmr_Aadhar() {
		return Cmr_Aadhar;
	}
	public void setCmr_Aadhar(String cmr_Aadhar) {
		this.Cmr_Aadhar = cmr_Aadhar;
	}
	public String getCmr_Address() {
		return Cmr_Address;
	}
	public void setCmr_Address(String cmr_Address) {
		this.Cmr_Address = cmr_Address;
	}
	public String getCmr_qualification() {
		return Cmr_qualification;
	}
	public void setCmr_qualification(String cmr_qualification) {
		this.Cmr_qualification = cmr_qualification;
	}
	public String getSp_Name() {
		return Sp_Name;
	}
	public void setSp_Name(String sp_Name) {
		this.Sp_Name = sp_Name;
	}
	public int getSp_Age() {
		return Sp_Age;
	}
	public void setSp_Age(int sp_Age) {
		this.Sp_Age = sp_Age;
	}
	public String getSp_Gender() {
		return Sp_Gender;
	}
	public void setSp_Gender(String sp_Gender) {
		this.Sp_Gender = sp_Gender;
	}
	public String getSp_mobile() {
		return Sp_mobile;
	}
	public void setSp_mobile(String sp_mobile) {
		this.Sp_mobile = sp_mobile;
	}
	public String getSp_Email() {
		return Sp_Email;
	}
	public void setSp_Email(String sp_Email) {
		this.Sp_Email = sp_Email;
	}
	public String getSp_Aadhar() {
		return Sp_Aadhar;
	}
	public void setSp_Aadhar(String sp_Aadhar) {
		this.Sp_Aadhar = sp_Aadhar;
	}
	public String getSp_Address() {
		return Sp_Address;
	}
	public void setSp_Address(String sp_Address) {
		this.Sp_Address = sp_Address;
	}
	public String getSp_qualification() {
		return Sp_qualification;
	}
	public void setSp_qualification(String sp_qualification) {
		this.Sp_qualification = sp_qualification;
	}
	public int getSp_No_ofChildren() {
		return Sp_No_ofChildren;
	}
	public void setSp_No_ofChildren(int sp_No_ofChildren) {
		this.Sp_No_ofChildren = sp_No_ofChildren;
	}
	public String getCh1_Name() {
		return ch1_Name;
	}
	public void setCh1_Name(String ch1_Name) {
		this.ch1_Name = ch1_Name;
	}
	public int getCh1_Age() {
		return ch1_Age;
	}
	public void setCh1_Age(int ch1_Age) {
		this.ch1_Age = ch1_Age;
	}
	public String getCh2_Name() {
		return ch2_Name;
	}
	public void setCh2_Name(String ch2_Name) {
		this.ch2_Name = ch2_Name;
	}
	public int getCh2_Age() {
		return ch2_Age;
	}
	public void setCh2_Age(int ch2_Age) {
		this.ch2_Age = ch2_Age;
	}
	public int getSp_No_ofDependents() {
		return Sp_No_ofDependents;
	}
	public void setSp_No_ofDependents(int sp_No_ofDependents) {
		this.Sp_No_ofDependents = sp_No_ofDependents;
	}
	public String getDp1_Name() {
		return Dp1_Name;
	}
	public void setDp1_Name(String dp1_Name) {
		this.Dp1_Name = dp1_Name;
	}
	public int getDp1_Age() {
		return Dp1_Age;
	}
	public void setDp1_Age(int dp1_Age) {
		this.Dp1_Age = dp1_Age;
	}
	public String getDp1_Gender() {
		return Dp1_Gender;
	}
	public void setDp1_Gender(String dp1_Gender) {
		this.Dp1_Gender = dp1_Gender;
	}
	public String getDp1_Aadhar() {
		return Dp1_Aadhar;
	}
	public void setDp1_Aadhar(String dp1_Aadhar) {
		this.Dp1_Aadhar = dp1_Aadhar;
	}
	public String getDp1_qualification() {
		return Dp1_qualification;
	}
	public void setDp1_qualification(String dp1_qualification) {
		this.Dp1_qualification = dp1_qualification;
	}
	public String getDp2_Name() {
		return Dp2_Name;
	}
	public void setDp2_Name(String dp2_Name) {
		this.Dp2_Name = dp2_Name;
	}
	public int getDp2_Age() {
		return Dp2_Age;
	}
	public void setDp2_Age(int dp2_Age) {
		this.Dp2_Age = dp2_Age;
	}
	public String getDp2_Gender() {
		return Dp2_Gender;
	}
	public void setDp2_Gender(String dp2_Gender) {
		this.Dp2_Gender = dp2_Gender;
	}
	public String getDp2_Aadhar() {
		return Dp2_Aadhar;
	}
	public void setDp2_Aadhar(String dp2_Aadhar) {
		this.Dp2_Aadhar = dp2_Aadhar;
	}
	public String getDp2_qualification() {
		return Dp2_qualification;
	}
	public void setDp2_qualification(String dp2_qualification) {
		this.Dp2_qualification = dp2_qualification;
	}
	public String getDp1_Relation() {
		return Dp1_Relation;
	}
	public void setDp1_Relation(String dp1_Relation) {
		this.Dp1_Relation = dp1_Relation;
	}
	public String getDp2_Relation() {
		return Dp2_Relation;
	}
	public void setDp2_Relation(String dp2_Relation) {
		this.Dp2_Relation = dp2_Relation;
	}
	/*public Customers(long policyNumber, String uID, String cmr_Name, int cmr_Age, String cmr_Gender, String cmr_mobile,
			String cmr_Email, String cmr_Aadhar, String cmr_Address, String cmr_qualification, String sp_Name,
			int sp_Age, String sp_Gender, String sp_mobile, String sp_Email, String sp_Aadhar, String sp_Address,
			String sp_qualification, int sp_No_ofChildren, String ch1_Name, int ch1_Age, String ch2_Name, int ch2_Age,
			int sp_No_ofDependents, String dp1_Name, int dp1_Age, String dp1_Gender, String dp1_Aadhar,
			String dp1_qualification, String dp1_Relation, String dp2_Name, int dp2_Age, String dp2_Gender,
			String dp2_Aadhar, String dp2_qualification, String dp2_Relation) {
		super();
		this.PolicyNumber = policyNumber;
		this.UID = uID;
		this.Cmr_Name = cmr_Name;
		this.Cmr_Age = cmr_Age;
		this.Cmr_Gender = cmr_Gender;
		this.Cmr_mobile = cmr_mobile;
		this.Cmr_Email = cmr_Email;
		this.Cmr_Aadhar = cmr_Aadhar;
		this.Cmr_Address = cmr_Address;
		this.Cmr_qualification = cmr_qualification;
		this.Sp_Name = sp_Name;
		this.Sp_Age = sp_Age;
		this.Sp_Gender = sp_Gender;
		this.Sp_mobile = sp_mobile;
		this.Sp_Email = sp_Email;
		this.Sp_Aadhar = sp_Aadhar;
		this.Sp_Address = sp_Address;
		this.Sp_qualification = sp_qualification;
		this.Sp_No_ofChildren = sp_No_ofChildren;
		this.ch1_Name = ch1_Name;
		this.ch1_Age = ch1_Age;
		this.ch2_Name = ch2_Name;
		this.ch2_Age = ch2_Age;
		this.Sp_No_ofDependents = sp_No_ofDependents;
		this.Dp1_Name = dp1_Name;
		this.Dp1_Age = dp1_Age;
		this.Dp1_Gender = dp1_Gender;
		this.Dp1_Aadhar = dp1_Aadhar;
		this.Dp1_qualification = dp1_qualification;
		this.Dp1_Relation = dp1_Relation;
		this.Dp2_Name = dp2_Name;
		this.Dp2_Age = dp2_Age;
		this.Dp2_Gender = dp2_Gender;
		this.Dp2_Aadhar = dp2_Aadhar;
		this.Dp2_qualification = dp2_qualification;
		this.Dp2_Relation = dp2_Relation;
	}
	
	@Override
	public String toString() {
		return "Customers [PolicyNumber=" + PolicyNumber + ", UID=" + UID + ", Cmr_Name=" + Cmr_Name + ", Cmr_Age="
				+ Cmr_Age + ", Cmr_Gender=" + Cmr_Gender + ", Cmr_mobile=" + Cmr_mobile + ", Cmr_Email=" + Cmr_Email
				+ ", Cmr_Aadhar=" + Cmr_Aadhar + ", Cmr_Address=" + Cmr_Address + ", Cmr_qualification="
				+ Cmr_qualification + ", Sp_Name=" + Sp_Name + ", Sp_Age=" + Sp_Age + ", Sp_Gender=" + Sp_Gender
				+ ", Sp_mobile=" + Sp_mobile + ", Sp_Email=" + Sp_Email + ", Sp_Aadhar=" + Sp_Aadhar + ", Sp_Address="
				+ Sp_Address + ", Sp_qualification=" + Sp_qualification + ", Sp_No_ofChildren=" + Sp_No_ofChildren
				+ ", ch1_Name=" + ch1_Name + ", ch1_Age=" + ch1_Age + ", ch2_Name=" + ch2_Name + ", ch2_Age=" + ch2_Age
				+ ", Sp_No_ofDependents=" + Sp_No_ofDependents + ", Dp1_Name=" + Dp1_Name + ", Dp1_Age=" + Dp1_Age
				+ ", Dp1_Gender=" + Dp1_Gender + ", Dp1_Aadhar=" + Dp1_Aadhar + ", Dp1_qualification="
				+ Dp1_qualification + ", Dp1_Relation=" + Dp1_Relation + ", Dp2_Name=" + Dp2_Name + ", Dp2_Age="
				+ Dp2_Age + ", Dp2_Gender=" + Dp2_Gender + ", Dp2_Aadhar=" + Dp2_Aadhar + ", Dp2_qualification="
				+ Dp2_qualification + ", Dp2_Relation=" + Dp2_Relation + "]";
	}
	*/ 
	
	
	
		
	
}
