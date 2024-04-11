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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.insurence.entity.Category;
import com.insurence.entity.Contactus;
import com.insurence.entity.LocalAgentReg;
import com.insurence.entity.Location;
import com.insurence.entity.PolicyJoin;
import com.insurence.service.CategoryService;
import com.insurence.service.Clientservice;
import com.insurence.service.Contactservice;
import com.insurence.service.EmailService;
import com.insurence.service.LocalAgentService;
import com.insurence.service.LocationService;
import com.insurence.service.PolicyJoiningService;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("agentProfile")
public class AdminController {

	@Autowired
	CategoryService catService;

	@Autowired
	LocationService locService;

	@Autowired
	Contactservice contactServide;
	
	@Autowired
	Clientservice clService;
	
	@Autowired
	LocalAgentService agentService;
	
	@Autowired
	EmailService mailService;
	
	@Autowired 
	PolicyJoiningService joingingService;
	
	@GetMapping("/pageAdminHome")
	public String adminHome(Model model) {

		final long clientAll=clService.getAllCount();		
		model.addAttribute("clientAll", clientAll);
		final long msgAll=contactServide.getAllMsgCount();		
		model.addAttribute("msgAll", msgAll);
		final long agentAll=agentService.getAllReqCount();		
		model.addAttribute("agentAll", agentAll);
		final long agentByStatus=agentService.getNewreqCount();		
		model.addAttribute("agentNew", agentByStatus);
		final long clientByStatus=clService.getNewreqCount();		
		model.addAttribute("clientNew", clientByStatus);
		return "Home_Admin";
	}

	@RequestMapping(value = { "/Location", "/Locations{id}" }, method = RequestMethod.GET)
	public String adminLocation(Model model, @ModelAttribute("location") Location loc,
			@PathVariable(name = "id", required = false) Integer id) {
		List<Location> locList = locService.getAllLocations();
		model.addAttribute("locList", locList);
		if (id != null && id > 0) {
			
			Location locc=locService.getLocById(id);
			model.addAttribute("location", locc);
			model.addAttribute("action", "editLocById/" + id);
		}else {
		model.addAttribute("location", new Location());
		model.addAttribute("action", "saveLocation");
		}
		return "Admin_Location";
	}

	@RequestMapping(value = { "/Category", "/{id}" }, method = RequestMethod.GET)
	public String adminCategory(Model model, @ModelAttribute("category") Category cat,
			@PathVariable(name = "id", required = false) Integer id) {
		System.out.println("id=" + cat.getCatId());
		List<Category> catList = catService.getAllCategories();
		model.addAttribute("catList", catList);
		if (id != null && id > 0) {
			Category catt = catService.getCatById(id);
			model.addAttribute("category", catt);
			model.addAttribute("action", "editCatById/" + id);
		} else {
			model.addAttribute("category", new Category());
			model.addAttribute("action", "saveCategory");
		}
		return "Admin_Category";
	}

	@RequestMapping(value = { "/saveCategory", "/editCatById/{id}" }, method = RequestMethod.POST)
	public String saveAdminCategory(@Valid @ModelAttribute("category") Category cat, BindingResult bindingResult,
			@PathVariable(name = "id", required = false) Integer id, Model model) {
		System.out.println("Controller");
		if (bindingResult.hasErrors()) {
			model.addAttribute("catName", cat.getCatName());
			List<Category> catList = catService.getAllCategories();
			model.addAttribute("catList", catList);
			return "Admin_Category";
		}
		if (id != null && id > 0) {
			System.out.println("Inside editCatById id if case:" + id);
			catService.editCategorydetails(cat);
		}
		catService.saveCategorydetails(cat);
		return "redirect:/Category";
	}
	
	@PostMapping("/delCatById/{id}")
	public String delCatById(@PathVariable int id) {
		catService.deleteCat(id);
		return "redirect:/Category";
	}

	@RequestMapping(value = { "/saveLocation", "/editLocById/{id}" }, method = RequestMethod.POST)
	public String saveAdminLocation(@Valid @ModelAttribute("location") Location loc, BindingResult bindingResult,
			@PathVariable(name = "id", required = false) Integer id,Model model) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("locName", loc.getLocName());
			model.addAttribute("locAdd", loc.getLocAdd());
			model.addAttribute("locMob", loc.getLocMob());
			List<Location> locList = locService.getAllLocations();
			model.addAttribute("locList", locList);
			return "Admin_Location";
		}
		if (id != null && id > 0) {
			System.out.println("Inside editLocById id if case:" + id);
			locService.editLocationdetails(loc);
		}
		locService.saveLocationdetails(loc);
		return "redirect:/Location";
	}

	@PostMapping("/delLocById/{id}")
	public String delLocationById(@PathVariable int id) {
		locService.deleteLoc(id);
		return "redirect:/Location";
	}

	@GetMapping("/pageAdminInbox")
	public String adminInbox(Model model) {
		List<Contactus> mList = contactServide.getAllMessageses();
		model.addAttribute("msgList", mList);
		return "Admin_Inbox";
	}
	
	
	@GetMapping("/pageAdminLANew")
	public String adminLANewrequest(Model model) {
		
		List<LocalAgentReg> agentnewreqList = agentService.getAgentRequests("0");
		model.addAttribute("newReqList", agentnewreqList);		
		return "Admin_LANewreq";
	}
	
	@GetMapping("/pageAdminLAEdit")
	public String adminLAEditrequest(Model model) {
		List<LocalAgentReg> agentList = agentService.getAllAgents();
		model.addAttribute("agentList", agentList);	
		return "Admin_LAEditreq";
	}

	@GetMapping("/pageAdminLAReport")
	public String adminLAReport(Model model) {
		List<LocalAgentReg> agentList = agentService.getAllAgents();
		model.addAttribute("agentList", agentList);	
		Map<LocalAgentReg, Long> countMap=new HashMap<>();
		countMap=joingingService.getAgentCount(agentList);
		model.addAttribute("countMap", countMap);
		return "Admin_LAReport";
	}
	
	@RequestMapping(value = { "/agentProfile{id}" }, method = RequestMethod.GET)
	public String agentProfilepage(@PathVariable int id, Model m) {		
		LocalAgentReg agentProfile=agentService.viewAgentById(id);
		m.addAttribute("agentProfile",agentProfile);
		return "Admin_LAprofiledetails";
	}
	
	
	@PostMapping("/sendclientResponse")
	public String clientreqResponseByAdmin(@ModelAttribute("newreqItem") PolicyJoin clientProfile,@RequestParam("response") String status,Model m,SessionStatus s) {
		System.out.println("Policy Join Reg Id"+clientProfile.getRegId());
		PolicyJoin newreqItem=joingingService.getDetailsById(clientProfile.getRegId());		
		System.out.println("Policy Join Client mail id"+newreqItem.getClientName().getClientEmail());
		String body="";
		if(status.equals("1"))
		{
			body="Hi "+newreqItem.getClientName().getClientName()+",Your account is Activated.";
			
		}else if(status.equals("2"))
		{
			body="Hi "+newreqItem.getClientName().getClientName()+",Your account status is Pending.Due to "+clientProfile.getReqRemarks();
			
		}else if(status.equals("3"))
		{
			body="Hi "+newreqItem.getClientName().getClientName()+",Your account status is Rejected.Due to "+clientProfile.getReqRemarks();
		}
		System.out.print("Mail Body"+body);
		newreqItem.setStatus(status);
		newreqItem.setReqRemarks(clientProfile.getReqRemarks());
		System.out.println("Remarks:+"+clientProfile.getReqRemarks());
		joingingService.updatePolicyById(newreqItem);
		mailService.sendEmail(newreqItem.getClientName().getClientEmail(), "SmartProtect Insurence Account Verification Response", body);
		s.setComplete();
		return "redirect:/pageAdminLANew";
	}
	

	@PostMapping("/sendResponse")
	public String reqResponseByAdmin(@ModelAttribute("agentProfile") LocalAgentReg agentProfile,@RequestParam("response") String status,Model m,SessionStatus s) {
		System.out.println("Agent Id"+agentProfile.getAgentId());
		System.out.println("Agent Mail Id"+agentProfile.getAgentEmail());
		String body="";
		if(status.equals("1"))
		{
			body="Hi "+agentProfile.getAgentName()+",Your account is Activated.";
			
		}else if(status.equals("2"))
		{
			body="Hi "+agentProfile.getAgentName()+",Your account status is Pending.Due to "+agentProfile.getReqRemarks();
			
		}else if(status.equals("3"))
		{
			body="Hi "+agentProfile.getAgentName()+",Your account status is Rejected.Due to "+agentProfile.getReqRemarks();
		}
		System.out.print("Mail Body"+body);
		agentProfile.setStatus(status);
		agentService.updateAgentById(agentProfile);
		mailService.sendEmail(agentProfile.getAgentEmail(), "SmartProtect Insurence Account Verification Response", body);

		s.setComplete();
		return "redirect:/pageAdminLANew";
	}
	
	@GetMapping("/pageAdminClientNew")
	public String adminClientewrequest(Model model) {
		List<PolicyJoin> newreqList=joingingService.getNewPolicyJoiners();
		model.addAttribute("newreqList",newreqList);
		return "Admin_ClientNewreq";
	}

	@GetMapping("/pageAdminClientNewreqApprv{id}")
	public String adminClientewreqApprv(Model model,@PathVariable int id) {
		PolicyJoin newreqItem=joingingService.getDetailsById(id);		
		model.addAttribute("newreqItem",newreqItem);		
		return "Admin_ClientNewreqview";
	}

	
	@GetMapping("/pageClientEdit")
	public String adminClientEditrequest(Model model) {
		return "Admin_ClientEditreq";
	}

	@GetMapping("/pageClientReport")
	public String adminClientReport(Model model) {
		return "Admin_ClientReport";
	}	

}
