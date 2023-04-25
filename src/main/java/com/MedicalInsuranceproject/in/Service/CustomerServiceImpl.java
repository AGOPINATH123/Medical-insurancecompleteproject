package com.MedicalInsuranceproject.in.Service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.MedicalInsuranceproject.in.Entity.Customers;
import com.MedicalInsuranceproject.in.Repo.CustomerRepo;


@Service
@Component
public class CustomerServiceImpl implements CustomerService,Serializable

{
	
	private static final long serialVersionUID = 1L;

	private transient CustomerRepo repo;
	
	
	
	public CustomerServiceImpl(CustomerRepo repo) {
		super();
		this.repo = repo;
	}

	//Insert Data method
	@Override
	public void Savedetails(Customers cust) {
		repo.save(cust);
	}   
	
	//Fields for the view Purpose
	static String[] tableDetails = { "UID ", "Cmr_Name ", "Cmr_Age ", "Cmr_Gender ", "Cmr_mobile ",
			"Cmr_Email ", "Cmr_Aadhar ", "Cmr_Address  ", "Cmr_qualification " ,"Policy_Start Date" , "Policy_End Date","Policy Premium","Policy_taken For",
			"Sp_Name ", "Sp_Age " , "Sp_Gender ", "Sp_mobile ", "Sp_Email  ", "Sp_Aadhar  ",
			"Sp_Address  ", "Sp_qualification  ", "Sp_No_ofChildren ", "ch1_Name ", "ch1_Age  ", "ch2_Name = ",
			"ch2_Age  ", "No_ofDependents " ,"Dp1_Name ", "Dp1_Age  ", "Dp1_Gender  ", "Dp1_Aadhar ",
		    "Dp1_qualification ", "Dp1_Relation ", "Dp2_Name ", "Dp2_Age ", "Dp2_Gender ", "Dp2_Aadhar","Dp2_qualification", "Dp2_Relation",
	};	
	
	// ViewMethod For inserted data	
	public Map<String,Object> getInsertDetailsInView(Customers cust) {		
		Object[] obj = { cust.getUID(), cust.getCmr_Name(), cust.getCmr_Age(), cust.getCmr_Gender(),
				cust.getCmr_mobile(), cust.getCmr_Email(), cust.getCmr_Aadhar(), cust.getCmr_Address(),
				cust.getCmr_qualification(),cust.getPstartdate(),cust.getPenddate(),cust.getPremium(),cust.getPremiumfor() ,cust.getSp_Name(), cust.getSp_Age(),
			    cust.getSp_Gender(), cust.getSp_mobile(), cust.getSp_Email(),
				cust.getSp_Aadhar(), cust.getSp_Address(), cust.getSp_qualification(),
				cust.getSp_No_ofChildren(), cust.getCh1_Name(), cust.getCh1_Age(), cust.getCh2_Name(),
				cust.getCh2_Age(), cust.getSp_No_ofDependents(), cust.getDp1_Name(), cust.getDp1_Age(),
				cust.getDp1_Gender(), cust.getDp1_Aadhar(), cust.getDp1_qualification(),
				cust.getDp1_Relation(), cust.getDp2_Name(), cust.getDp2_Age(), cust.getDp2_Gender(),
				cust.getDp2_Aadhar(), cust.getDp2_qualification(),
				cust.getDp2_Relation() };
			
		Map<String,Object>map=new LinkedHashMap<>();
		for (int i = 0; i < obj.length; i++) 
		{
			
			for (int j = i; j<=i; j++) 
			{
				if(obj[j]!=null && (!map.containsValue(0)&& map.size()==j )) 
				{
					map.put(tableDetails[j], obj[j]);
				}
			}
		}	
		return map;
	}
 
	//SearchMethod
	@Override
	public Map<String,Object> getByUID(String uid) {
		
		Customers cust =repo.findById(uid).orElseThrow(null);		
		Object[] obj = { cust.getUID(), cust.getCmr_Name(), cust.getCmr_Age(), cust.getCmr_Gender(),
				cust.getCmr_mobile(), cust.getCmr_Email(), cust.getCmr_Aadhar(), cust.getCmr_Address(),
				cust.getCmr_qualification(),cust.getPstartdate(),cust.getPenddate(),cust.getPremium(),
				cust.getPremiumfor() , cust.getSp_Name(), cust.getSp_Age(),
			    cust.getSp_Gender(), cust.getSp_mobile(), cust.getSp_Email(),
				cust.getSp_Aadhar(), cust.getSp_Address(), cust.getSp_qualification(),
				cust.getSp_No_ofChildren(), cust.getCh1_Name(), cust.getCh1_Age(), cust.getCh2_Name(),
				cust.getCh2_Age(), cust.getSp_No_ofDependents(), cust.getDp1_Name(), cust.getDp1_Age(),
				cust.getDp1_Gender(), cust.getDp1_Aadhar(), cust.getDp1_qualification(),
				cust.getDp1_Relation(), cust.getDp2_Name(), cust.getDp2_Age(), cust.getDp2_Gender(),
				cust.getDp2_Aadhar(), cust.getDp2_qualification(),
				cust.getDp2_Relation() };
		
		Map<String,Object>map=new LinkedHashMap<>();
		for (int i = 0; i < obj.length; i++) 
		{
			
			for (int j = i; j<=i; j++) 
			{
				if(obj[j]!=null && (!map.containsValue(0)&& map.size()==j )) 
				{
					map.put(tableDetails[j], obj[j]);			
				}
			}
		}
		String[] dateformatdevided= {"yyyy","MM","dd"};	
		String []startdatestring= new String[3];
		String []atenddatestring= new String[3];
		Integer[] parsedateininteger=new Integer[3];
		
		for (int i = 0; i < dateformatdevided.length; i++) {
		DateFormat df = new SimpleDateFormat(dateformatdevided[i]);
			 startdatestring[i]=df.format(cust.getPstartdate());
			 atenddatestring[i]=df.format(cust.getPenddate());
		}
		for (int i = 0; i < parsedateininteger.length; i++) {
			parsedateininteger[i]=Integer.parseInt(atenddatestring[i]);
			parsedateininteger[i]=parsedateininteger[i]-Integer.parseInt(startdatestring[i]);}
			
		int months=parsedateininteger[0]*12;
		int total=(int) (cust.getPremium()/months);
		String ss="YOU HAVE TAKEN INSURANCE PREMIUMFOR ";
		String s="THE EMI IS ";
		String sa="THE INSTREST RATE IS 5% i;e ";
		String sd="THE TOTAL EMI AMOUNT THAT YOU HAVE TO PAY IS ";
		map.put(ss, parsedateininteger[0]+"\" YEAR "+parsedateininteger[1]+" MONTHS "+parsedateininteger[2]+" DAYS");
		map.put(s, total+"/-MONTH");
		map.put(sa, total*5/100+"/- EVERYMONTH");
		map.put(sd, (total+total*5/100)+"/-\" PER MONTH");
		return map;
	}
	

	//EMI CalculationMethod
	public Set<Object> EMICalculation(Customers cust){
		Set<Object>klll=new LinkedHashSet<>();
		
		String[] dateformatdevided= {"yyyy","MM","dd"};	
		String []startdatestring= new String[3];
		String []atenddatestring= new String[3];
		Integer[] parsedateininteger=new Integer[3];
		
		for (int i = 0; i < dateformatdevided.length; i++) {
		DateFormat df = new SimpleDateFormat(dateformatdevided[i]);
			 startdatestring[i]=df.format(cust.getPstartdate());
			 atenddatestring[i]=df.format(cust.getPenddate());
		}
		for (int i = 0; i < parsedateininteger.length; i++) {
			parsedateininteger[i]=Integer.parseInt(atenddatestring[i]);
			parsedateininteger[i]=parsedateininteger[i]-Integer.parseInt(startdatestring[i]);}
			
		int months=parsedateininteger[0]*12;
		int total=(int) (cust.getPremium()/months);
		String ss="YOU HAVE TAKEN INSURANCE PREMIUMFOR \""+parsedateininteger[0]+"\" YEAR "+parsedateininteger[1]+" MONTHS "+parsedateininteger[2]+" DAYS ";
		String s="THE EMI IS \""+total+"/-\"MONTH";
		String sa="THE INSTREST RATE IS 5% i;e \""+total*5/100+"/-\" EVERYMONTH";
		String sd="THE TOTAL EMI AMOUNT THAT YOU HAVE TO PAY IS \""+(total+total*5/100)+"/-\" PER MONTH";
		klll.add(ss);cust.setPremiumtakenmonths(months);
		klll.add(s);cust.setEMI(total);
		klll.add(sa);cust.setIntrstrate(5);
		klll.add(sd);cust.setTotalEMI(total+total*5/100);		
		repo.save(cust);
	
		return klll;
	}
	
	//Fetching data
	public List<Customers> FetchList()
	{		
		return repo.findAll();
	}

	
	//Claim insert data and some feilds are updated
	public Customers Claimdata(String uid,Customers cmr) {
		Customers cust=repo.findById(uid).orElseThrow(null);
		cust.setPolicyNumber(cmr .getPolicyNumber());
		cust.setCmr_Name(cmr.getCmr_Name());
		cust.setCmr_Age(cmr.getCmr_Age());
		cust.setCmr_mobile(cmr.getCmr_mobile());
		cust.setCmr_Email(cmr.getCmr_Email());
		cust.setClaimreason(cmr.getClaimreason());
		cust.setHospitallist(cmr.getHospitallist());
		cust.setDateofjoin(cmr.getDateofjoin());
		repo.save(cust);
		
		return cust;
		
	}
	
	//Agent search
	public Map<String,Object> getByUIDByAgent(String uid) {
		
		Map<String,Object>map=new LinkedHashMap<>();
	    Customers cust=	repo.findById(uid).orElseThrow(null);	
	String s=cust.getUID();		
	
	if( cust.getClaimreason()==null ) 
	{
		 map.put("This Id is Not Applied For Claim",s);
	  		
	

	}

    else if(cust.getStatusofclaim()!=null|| "Rejected".equals(cust.getStatusofclaim())) 
	{ 
	 
		map.put("Data is not Available for ",s);
		map.put("THE CLAIM SETTLEMENT IS COMPLETED FOR THIS CUSTOMER",cust.getStatusofclaim());
				
}
	  else {
		Object  [] details= {cust.getUID(),  cust.getCmr_Name(),cust.getCmr_Gender(),cust.getCmr_Age(),cust.getPolicyNumber(),cust.getPremiumfor(),cust.getPremium()+"/-",    cust.getPstartdate(),
				cust.getPenddate(),cust.getClaimreason(),cust.getHospitallist(),cust.getDateofjoin()};
		String []dg= {"User UID","Name","Gender","Age","PolicyNumber","PolicyTakenFor","PremiumAmount",  "PolicyStartDate","PolicyEndDate","ReasonForCalim","HospitalSelected","AdmitDate"};
		
		for (int i = 0; i < details.length; i++) 
		{
			
			for (int j = i; j <=i; j++) 
			{
				if(details[i]!=null)
				{
					map.put(dg[j], details[j]);
				}
			}			
		} 		
	}		

	
	return map;
	
	}
	
	
	
	
	
	
	
	//Serialization
    public void Serial(Set<Object> gh) throws IOException 
    {
	File file =new File ("User.txt");
	try(FileOutputStream fout=new FileOutputStream(file);ObjectOutputStream oout=new ObjectOutputStream(fout)){
		oout.writeObject(gh);
	}	
    }

  
	@Override
	public Customers AgentSubmitClaimdata(String uid,Customers cust) 
	{
		
		Customers cus=repo.findById(uid).orElseThrow(null);
		cus.setCashlessadmitlimt(cust.getCashlessadmitlimt());
		cus.setClearenceamout(cust.getClearenceamout());
		cus.setStatusofclaim(cust.getStatusofclaim());
		repo.save(cus);
		
		
		return cus;
	}
}
