package com.insurence.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.insurence.entity.LocalAgentReg;
import com.insurence.repository.AgentRepository;
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
public class LocalAgentService {

	@Autowired
	AgentRepository repo;

	@PersistenceContext
	private EntityManager entityManager;

	public LocalAgentReg saveAgentdetails(LocalAgentReg agent) {
		return repo.save(agent);
	}

	public long getAllReqCount() {
		return repo.count();
	}

	public List<LocalAgentReg> getAllAgents() {
		return repo.findAll();
	}

	public int getNewreqCount() {

		List<LocalAgentReg> list = repo.findAll();
		int count = 0;
		for (LocalAgentReg agent : list) {
			if (agent.getStatus().equals("0")) {
				count++;
			}
		}
		return count;
	}
	
	public List<LocalAgentReg> getAgentRequests(String status) {

		List<LocalAgentReg> resultList = new ArrayList<LocalAgentReg>();		
		List<LocalAgentReg> list = repo.findAll();
		for (LocalAgentReg agent : list) {
			if (agent.getStatus().equals(status)) {				
				agent.setAgentPhotopath(agent.getAgentPhotopath().replace("\\", "/"));
				agent.setAgentProofpath(agent.getAgentProofpath().replace("\\", "/"));
				System.out.println("Path:"+agent.getAgentPhotopath());
				resultList.add(agent);
			}
		}
		return resultList;
	}
	
	
	public LocalAgentReg viewAgentById(int id) {
		return repo.findById(id).get();
	}
	
	public void updateAgentById(LocalAgentReg c)
	{
		boolean isTrue= repo.findById(c.getAgentId()).isPresent();
		if(isTrue)
		{
			repo.save(c);
		}
	}	
	
}
