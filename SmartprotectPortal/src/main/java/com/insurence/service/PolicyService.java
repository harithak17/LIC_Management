package com.insurence.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insurence.entity.Policy;
import com.insurence.entity.PolicyJoin;
import com.insurence.repository.CategoryRepository;
import com.insurence.repository.PolicyRepository;

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
public class PolicyService {

	@Autowired
	PolicyRepository repo;
	
	@Autowired
	CategoryRepository catRepo;
	
	public Policy saveNewPolicy(Policy p)
	{
		return repo.save(p);
	}
	
	public List<Policy> getAllPolicies()
	{
		return repo.findAll();
	}	

	public Map<Policy, Integer> getPolicyCount(List<PolicyJoin> pjList) {
	    List<Policy> policiesList = getAllPolicies();
	    Map<Integer, Integer> policyIdToCountMap = new HashMap<>();
	    Map<Policy, Integer> countMap = new HashMap<>();

	    // Count the occurrences of each policy in pjList
	    for (PolicyJoin pjData : pjList) {
	        int pId = pjData.getClientPolicy().getPolicyId();
	        policyIdToCountMap.put(pId, policyIdToCountMap.getOrDefault(pId, 0) + 1);
	    }

	    // Populate the countMap
	    for (Policy data : policiesList) {
	        int pId = data.getPolicyId();
	        int count = policyIdToCountMap.getOrDefault(pId, 0);
	        countMap.put(data, count);
	    }

	    return countMap;
	}

	
	public Policy getDetailsById(int id) {
		return repo.findById(id).get();
	}
	
	public void updatePolicy(Policy p)
	{
		boolean isTrue=repo.findById(p.getPolicyId()).isPresent();
		if(isTrue)
		{
			repo.save(p);
		}
	}
}
