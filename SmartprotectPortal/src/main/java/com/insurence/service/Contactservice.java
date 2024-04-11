package com.insurence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insurence.entity.Contactus;
import com.insurence.repository.Contactrepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Service
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Contactservice {
	
	@PersistenceContext
    private EntityManager entityManager;
	
	@Autowired
	Contactrepository contactRepo;
	public Contactus saveContactmsg(Contactus message) {
		return contactRepo.save(message);
	}
	
	public List<Contactus> getAllMessageses() {
		return contactRepo.findAll();
	}
	
	public long getAllMsgCount()
	{
		return contactRepo.count();
	}
	
//	public long getCountByStatus(int status) {
//        String jpql = "SELECT COUNT(c) FROM local_agent_reg c WHERE c.status = :status";
//        return entityManager.createQuery(jpql, Long.class)
//                .setParameter("status", status)
//                .getSingleResult();
//    }
}
