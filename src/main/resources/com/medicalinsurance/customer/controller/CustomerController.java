package com.medicalinsurance.customer.controller;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.medicalinsurance.customer.entity.Agent;
import com.medicalinsurance.customer.entity.Customers;
import com.medicalinsurance.customer.service.CustomerService;

@RestController
public class CustomerController {
	
	@Autowired
	CustomerService service;

	
	@PostMapping("/custometrss")
	public ModelAndView Inserdetails(Customers cust) {
		service.Savedetails(cust);		
		ModelAndView mv=new ModelAndView();			
		Map<String,Object> map=service.getInsertDetailsInView(cust);
		Set<Object>listemi=service.EMICalculation(cust);
		mv.addObject("data", map);
		mv.addObject("emidata",listemi);
		mv.setViewName("Detailsview");	
		
		return mv;
	}	
	
	
	//Searchdata
	@PostMapping("/searchdata")
	public ModelAndView getlist(@RequestParam String UID){
		ModelAndView mv=new ModelAndView();					
	Map<String,Object> searcheddata=service.getByUID(UID);		
	mv.addObject("data", searcheddata);
		mv.setViewName("userdataview");	
		return mv;
		}
	

	
	@PostMapping(value = "/claiminser" )
	public ModelAndView Claim(@RequestParam String UID,Customers cust) {
		ModelAndView mv = new ModelAndView();
		service.Claimdata(UID,cust);//
		mv.setViewName("afterclickclaimrequest");
		return mv;
	}
	
	//FetchData
	@GetMapping("/fetchdata")
		public Iterable<Customers> FetchList(){
			ModelAndView mv=new ModelAndView();
			List<Customers> list=service.FetchList();
			
			mv.addObject("fetch", list);
				return list;	
	} 
	
	
	@PostMapping("/logins")
    public ModelAndView loginn(Agent agent ) 
	{
	ModelAndView mv = new ModelAndView(); 
    if(agent.getUseridl().equals("agopi.VT87@gmail.com" )
    		&& agent.getPassword().equals("9515656429")) 
        {
	mv.setViewName("Agentsearch");
	return mv;
	    }    
    	return new ModelAndView("kjbdckad", HttpStatus.NO_CONTENT);

    }

	
	@GetMapping("/agentsearch")
	public ModelAndView AgentSearch(@RequestParam String UID){
		
		 ModelAndView mv=new ModelAndView();
		Map<String,Object> map=service.getByUIDByAgent(UID);
		
		mv.addObject("data", map);
		 
		 mv.setViewName("Agentsearchview");
		 
		 return mv;
	}
	
	@PostMapping("/AgentMessage")
	public ModelAndView formSubmitTOHospital(@RequestParam String UID, Customers cust) {
		ModelAndView mv=new  ModelAndView();
		Customers cus=service.AgentSubmitClaimdata(UID,cust);
		if(cus!=null) {
		mv.addObject("data", cus);
		mv.setViewName("AgentMessage");
		}
		return mv;
	}
}
	
	
	
	
	
	
	
	