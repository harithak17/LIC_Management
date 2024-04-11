package com.insurence.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insurence.entity.LocalAgentReg;

public interface AgentRepository extends JpaRepository<LocalAgentReg,Integer>{

}
