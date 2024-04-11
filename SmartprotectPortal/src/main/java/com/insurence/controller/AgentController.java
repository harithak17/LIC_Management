package com.insurence.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.insurence.entity.LocalAgentReg;
import com.insurence.entity.Policy;
import com.insurence.entity.PolicyHolderReg;
import com.insurence.entity.PolicyJoin;
import com.insurence.service.Clientservice;
import com.insurence.service.LocalAgentService;
import com.insurence.service.PolicyJoiningService;
import com.insurence.service.PolicyService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class AgentController {

	@Autowired
	LocalAgentService agentService;

	@Autowired
	PolicyService policyService;

	@Autowired
	Clientservice clientSrevice;

	@Autowired
	PolicyJoiningService joingingService;

	@GetMapping("/pageAgentHome")
	public String agentHome(Model model, HttpSession session) {
		Integer agentId = (Integer) session.getAttribute("agentId");
		System.out.print("User id In session:" + agentId);
		List<PolicyHolderReg> clientsList = clientSrevice.getAllClientsByAgent(agentId);
		model.addAttribute("clientsList", clientsList);
		int clientCount = clientsList.size();
		model.addAttribute("clientCount", clientCount);
		int policyCount = joingingService.getCountByAgent(agentId);
		model.addAttribute("policyCount", policyCount);
		return "Home_Agent";
	}

	@GetMapping("/pageAgentInbox")
	public String getInboxmessages(Model model) {
		return "Home_Agent";
	}

	@GetMapping("/pageAgentProfile")
	public String getProfile(Model model, HttpSession session) {
		Integer agentId = (Integer) session.getAttribute("agentId");
		System.out.print("User id In session:" + agentId);
		LocalAgentReg agentProfile = agentService.viewAgentById(agentId);
		model.addAttribute("agentProfile", agentProfile);
		return "Agent_Profile";
	}

	@GetMapping("/pagePolicyList")
	public String getAllPolicyList(Model model) {
		List<Policy> policyList = policyService.getAllPolicies();
		model.addAttribute("policyList", policyList);
		return "Agent_PolicyList";
	}

	@GetMapping("/pagePolicyReports")
	public String getPolicyReports(Model model, HttpSession session) {
		Integer agentId = (Integer) session.getAttribute("agentId");
		System.out.print("User id In session:" + agentId);
		List<PolicyJoin> policyJoinersList = joingingService.getClientsByAgent(agentId);

		Map<Policy, Integer> countMap = new HashMap<>();
		countMap = policyService.getPolicyCount(policyJoinersList);
		model.addAttribute("countMap", countMap);
		return "Agent_PolicyReport";
	}

	@GetMapping("/pageClientList")
	public String getAllClients(Model model, HttpSession session) {
		Integer agentId = (Integer) session.getAttribute("agentId");
		System.out.print("User id In session:" + agentId);
		List<PolicyHolderReg> clientsList = clientSrevice.getAllClientsByAgent(agentId);
		model.addAttribute("clientsList", clientsList);
		Map<PolicyHolderReg, Long> countMap = new HashMap<>();
		System.out.println("Map Items\n");
		countMap = joingingService.getClientCount(clientsList);
		model.addAttribute("countMap", countMap);
		countMap.entrySet().forEach(entry -> {
			System.out.println(entry.getKey() + " = " + entry.getValue());
		});
		return "Agent_ClientList";
	}

	@GetMapping("/pageClientRegistration")
	public String getClientsRegform(Model model) {
		model.addAttribute("client", new PolicyHolderReg());
		return "Agent_ClientregForm";
	}

	@RequestMapping("/editClientProfile{id}")
	public String getClientsEditform(Model model, @PathVariable(name = "id", required = true) Integer id) {
		PolicyHolderReg client = clientSrevice.getById(id);
		System.out.println("Client Id:\n" + id);
		model.addAttribute("client", client);
		List<PolicyJoin> policyList = joingingService.getPolicyByClient(id);
		model.addAttribute("policyList", policyList);
		return "Agent_ClientEditForm";
	}

	@RequestMapping(value = { "/updateClientDetails" }, method = RequestMethod.POST)
	public String saveClientsEditform(@Valid @ModelAttribute("client") PolicyHolderReg c, BindingResult bindingResult,
			Model model,HttpSession session) {
		PolicyHolderReg exstClient = clientSrevice.getById(c.getClientId());
		c.setClientDob(exstClient.getClientDob());
		c.setClientPasswd(exstClient.getClientPasswd());
		c.setUser_type(exstClient.getUser_type());
		c.setClientPhotopath(exstClient.getClientPhotopath());
		c.setStatus(exstClient.getStatus());
		c.setClientUID(exstClient.getClientUID());
		c.setClientProofpath(exstClient.getClientProofpath());
		c.setClientUID(exstClient.getClientUID());
		c.setClient_regAgent(exstClient.getClient_regAgent());
		if (bindingResult.hasErrors()) {
			model.addAttribute("clientName", c.getClientName());
			model.addAttribute("clientAddr1", c.getClientAddr1());
			model.addAttribute("clientAddr2", c.getClientAddr2());
			model.addAttribute("clientCity", c.getClientCity());
			model.addAttribute("clientPin", c.getClientPin());
			model.addAttribute("clientMob", c.getClientMob());
//			model.addAttribute("clientPhotopath", c.getClientPhotopath());
			System.out.println("Errors:\n"+bindingResult.getAllErrors());
			return "Agent_ClientEditForm";
		}	
		System.out.println("Inside update method.");
		clientSrevice.updateClientdetails(c);
		return "redirect:/pageClientList";
	}

	@GetMapping("/pagePolicyJoining")
	public String getPolicyJoiningform(Model model) {
		List<Policy> policyList = policyService.getAllPolicies();
		model.addAttribute("policyList", policyList);
		List<PolicyHolderReg> clientList = clientSrevice.getAllClients();
		model.addAttribute("clientList", clientList);
		model.addAttribute("joinform", new PolicyJoin());
		return "Agent_PolicyJoinForm";
	}

	@PostMapping("/saveJoiningForm")
	public String saveJoiningForm(@Valid @ModelAttribute("joinform") PolicyJoin pForm, BindingResult bindingResult,
			Model model, HttpSession session) {
		Integer agentId = (Integer) session.getAttribute("agentId");
		System.out.print("saveJoiningForm/ User id In session:" + agentId);
		LocalAgentReg agentProfile = agentService.viewAgentById(agentId);
		pForm.setAgent_name(agentProfile);
		pForm.setStatus("0");
		if (bindingResult.hasErrors()) {
			List<Policy> policyList = policyService.getAllPolicies();
			model.addAttribute("policyList", policyList);
			List<PolicyHolderReg> clientList = clientSrevice.getAllClients();
			model.addAttribute("clientList", clientList);
			System.out.println(bindingResult.getAllErrors());
			model.addAttribute("clientName", pForm.getClientName());
			model.addAttribute("clientPolicy", pForm.getClientPolicy());
			model.addAttribute("paymentMode", pForm.getPaymentMode());
			model.addAttribute("nominee", pForm.getNominee());
			model.addAttribute("nomineeRelation", pForm.getNomineeRelation());
			model.addAttribute("nomineeDob", pForm.getNomineeDob());
			return "Agent_PolicyJoinForm";
		}
		joingingService.savePolicyJoining(pForm);
		return "redirect:/pagePolicyJoining";
	}

	@GetMapping("/pageClientReports")
	public String getClientReports(Model model) {
		List<PolicyHolderReg> clientsList = clientSrevice.getAllClients();
		Map<PolicyHolderReg, Long> countMap = new HashMap<>();
		System.out.println("Map Items\n");
		countMap = joingingService.getClientCount(clientsList);
		model.addAttribute("countMap", countMap);
		return "Agent_ClientReport";
	}

	@GetMapping("/pageClientReportView{id}")
	public String getClientReportsView(Model model, @PathVariable(name = "id", required = true) Integer id) {
		PolicyHolderReg client = clientSrevice.getById(id);
		System.out.println("Client Id:\n" + id);
		model.addAttribute("client", client);

		List<PolicyJoin> policyList = joingingService.getPolicyByClient(id);
		model.addAttribute("policyList", policyList);
		return "Agent_ClientReportView";
	}

}
