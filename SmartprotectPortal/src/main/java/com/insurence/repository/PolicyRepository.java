package com.insurence.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insurence.entity.Policy;

public interface PolicyRepository extends JpaRepository<Policy,Integer>{

}
