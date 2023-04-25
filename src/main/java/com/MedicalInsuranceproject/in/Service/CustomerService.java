package com.MedicalInsuranceproject.in.Service;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.MedicalInsuranceproject.in.Entity.Customers;


public interface CustomerService {
	
   void Savedetails(Customers cust);

   public Map<String,Object> getInsertDetailsInView(Customers customer) ;

   public Map<String,Object> getByUID(String UID);

   public List<Customers> FetchList();
   
   public void Serial(Set<Object> gh) throws IOException;
   
  // public Set<Object> EmiCals();
	public Customers Claimdata(String UID,Customers cmr) ;


	public Set<Object> EMICalculation(Customers cust);

	public Map<String,Object> getByUIDByAgent(String UID) ;

	public Customers AgentSubmitClaimdata(String UID,Customers cust);
  
	//public Agent logindetails(Agent agent) ;




}
