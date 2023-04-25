package com.MedicalInsuranceproject.in.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Agent")
public class Agent {

	@Id
	private String Useridl;
	
	
	private String password;

	public String getUseridl() {
		return Useridl;
	}

	public void setUseridl(String useridl) {
		this.Useridl = useridl;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
