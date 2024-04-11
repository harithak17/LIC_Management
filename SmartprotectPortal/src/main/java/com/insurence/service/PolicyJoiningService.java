package com.insurence.service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insurence.entity.LocalAgentReg;
import com.insurence.entity.PolicyHolderReg;
import com.insurence.entity.PolicyJoin;
import com.insurence.repository.PolicyJoinRepository;
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
public class PolicyJoiningService {

	@Autowired
	PolicyJoinRepository repo;
	
	public PolicyJoin savePolicyJoining(PolicyJoin p)
	{
		return repo.save(p);
	}
	
	public void deleteById(int id) {
		repo.deleteById(id);
	}
	
	public List<PolicyJoin> getAllPolicyJoiners() {
		return repo.findAll();
	}
	
	public List<PolicyJoin> getNewPolicyJoiners() {
		 return repo.findAll()
	               .stream()
	               .filter(pj -> "0".equals(pj.getStatus()))
	               .collect(Collectors.toList());
	}
	
	public PolicyJoin getDetailsById(int id) {
		return repo.findById(id).get();
	}
	
	public int getCountByAgent(int agentId)
	{
		List<PolicyJoin> pList=getAllPolicyJoiners();		
		long count = pList.stream()
                .filter(policy -> policy.getAgent_name().getAgentId() == agentId)
                .count();

        return (int) count;		
	}
	
	public List<PolicyJoin> getClientsByAgent(int agentId)
	{
		List<PolicyJoin> pList = getAllPolicyJoiners();
	    List<PolicyJoin> filteredList = pList.stream()
	            .filter(policy -> policy.getAgent_name().getAgentId() == agentId)
	            .collect(Collectors.toList());
	    return filteredList;
	}
	

	public Map<LocalAgentReg, Long> getAgentCount(List<LocalAgentReg> clientsList) {
		List<PolicyJoin> anotherList=getAllPolicyJoiners();
		Map<LocalAgentReg, Long> countMap = clientsList.stream()
	            .collect(Collectors.toMap(
	                policyHolder -> policyHolder,
	                policyHolder -> anotherList.stream()
	                    .filter(anotherPolicyHolder ->
	                        anotherPolicyHolder.getAgent_name().getAgentId()== policyHolder.getAgentId()
	                    )
	                    .count()
	            ));

	    return countMap;
	}
	
	
	public Map<PolicyHolderReg, Long> getClientCount(List<PolicyHolderReg> clientsList) {
		List<PolicyJoin> anotherList=getAllPolicyJoiners();
		Map<PolicyHolderReg, Long> countMap = clientsList.stream()
	            .collect(Collectors.toMap(
	                policyHolder -> policyHolder,
	                policyHolder -> anotherList.stream()
	                    .filter(anotherPolicyHolder ->
	                        anotherPolicyHolder.getClientName().getClientId() == policyHolder.getClientId()
	                    )
	                    .count()
	            ));

	    return countMap;
	}

	public List<PolicyJoin> getPolicyByClient(int clientId)
	{
		List<PolicyJoin> pList = getAllPolicyJoiners();
	    List<PolicyJoin> filteredList = pList.stream()
	            .filter(policy -> policy.getClientName().getClientId() == clientId)
	            .collect(Collectors.toList());
	    return filteredList;
	}
	
	public void updatePolicyById(PolicyJoin c)
	{
		boolean isTrue= repo.findById(c.getRegId()).isPresent();
		if(isTrue)
		{
			repo.save(c);
		}
	}
}
