package com.MedicalInsuranceproject.in.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.MedicalInsuranceproject.in.Entity.Customers;


@Component
public interface CustomerRepo extends JpaRepository<Customers, String> {



	

}
