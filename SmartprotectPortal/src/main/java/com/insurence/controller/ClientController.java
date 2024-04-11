package com.insurence.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.insurence.entity.Policy;
import com.insurence.entity.PolicyHolderReg;
import com.insurence.entity.PolicyJoin;
import com.insurence.service.Clientservice;
import com.insurence.service.PolicyJoiningService;
import com.insurence.service.PolicyService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {

	@Autowired
	PolicyService policyService;
	
	@Autowired
	Clientservice clientService;	
	

	@Autowired
	PolicyJoiningService joingingService;

	
	@GetMapping("/pageClientHome")
	public String clientHome(Model model, HttpSession session)
	{
		Integer agentId = (Integer) session.getAttribute("clientId");
		System.out.print("User id In session:" + agentId);
		List<Policy> policyList = policyService.getAllPolicies();
		model.addAttribute("policyList", policyList);
		model.addAttribute("policyListCount", policyList.size());
		List<PolicyJoin> policyCount = joingingService.getPolicyByClient(agentId);
		model.addAttribute("policyCount", policyCount.size());
		return "Home_Client";
	}
	
	@GetMapping("/pageClientAllPolicyList")
	public String clientGetALlPolicies(Model model)
	{
		List<Policy> policyList = policyService.getAllPolicies();
		model.addAttribute("policyList", policyList);
		return "Client_PolicyList";
	}
	
	@GetMapping("/pageClientPolicyList")
	public String clientGetPolicies(Model model)
	{
		return "Client_myPolicy";
	}
	
	@RequestMapping(value = { "/pageClientProfile" }, method = RequestMethod.GET)
	public String clientGetProfile(Model m, HttpSession session)
	{
		Integer clientId = (Integer) session.getAttribute("clientId");
		System.out.print("User id In session:" + clientId);
		PolicyHolderReg profile=clientService.getById(clientId);
		m.addAttribute("client",profile);
		List<PolicyJoin> policyList = joingingService.getPolicyByClient(clientId);
		m.addAttribute("policyList", policyList);
		return "Client_Profile";
	}
	
	
	@PostMapping("/resetPassword")
	public String UpdateClientPassword(Model m,@RequestParam("currentPassword") String pwd, @RequestParam("newPassword") String newpwd,
			@RequestParam("renewPassword") String renewpwd, Model model,HttpSession session) {	
		System.out.println("<----------Inside Restpass word Controller------------>"+(Integer) session.getAttribute("clientId"));
		Integer clientId = (Integer) session.getAttribute("clientId");
		System.out.print("User id In session:" + clientId);
		System.out.print("Existing Password" + pwd);
		System.out.print("New Password" + newpwd);
		System.out.print("Confirm Password" + renewpwd);
		PolicyHolderReg profile=clientService.getById(clientId);
		m.addAttribute("client",profile);		
		if(pwd.equals(profile.getClientPasswd()))
		{
			if(renewpwd.equals(newpwd))
			{
				profile.setClientPasswd(newpwd);
				clientService.updateClientdetails(profile);
			}
		}
		return "Client_Profile";
	}
	
	@GetMapping("/pageClientPolicyAdd")
	public String clientGetAddPolicy(Model model)
	{
		return "Client_AddPolicy";
	}
}
