package com.insurence.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.insurence.entity.PolicyHolderReg;
import com.insurence.repository.ClientRepository;
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
public class Clientservice {

	@Autowired
	ClientRepository clientRepo;
	
	public PolicyHolderReg saveClientdetails(PolicyHolderReg client) {
		return clientRepo.save(client);
	}
	
	public long getAllCount()
	{
		return clientRepo.count();
	}
	
	public int getNewreqCount() {

		List<PolicyHolderReg> list = clientRepo.findAll();
		int count = 0;
		for (PolicyHolderReg client : list) {
			if (client.getStatus().equals("1")) {
				count++;
			}
		}
		return count;
	}
	
	public PolicyHolderReg getById(int id)
	{
		return clientRepo.findById(id).get();
	}
	
	public List<PolicyHolderReg> getAllClients()
	{
		return clientRepo.findAll();
	}
	
	public List<PolicyHolderReg> getAllClientsByAgent(int agentId)
	{
		List<PolicyHolderReg> list = clientRepo.findAll();
		
		List<PolicyHolderReg> filteredList = list.stream()
			    .filter(item -> item.getClient_regAgent().getAgentId() == agentId)
			    .collect(Collectors.toList());
		return filteredList;
	}
	
	public void updateClientdetails(PolicyHolderReg c) {
		boolean isTrue= clientRepo.findById(c.getClientId()).isPresent();
		System.out.print("Inside update method:"+c.getClientId());
		System.out.println(isTrue);
		if(isTrue)
		{
			clientRepo.save(c);
		}
	}

}
