package com.insurence.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insurence.entity.PolicyHolderReg;

public interface ClientRepository extends JpaRepository<PolicyHolderReg, Integer>{

}
