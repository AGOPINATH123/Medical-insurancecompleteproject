package com.MedicalInsuranceproject.in.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.MedicalInsuranceproject.in.Entity.Agent;




public interface AgentRepo extends  JpaRepository<Agent, String> {

}
