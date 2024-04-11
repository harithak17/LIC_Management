package com.insurence.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.insurence.entity.Category;
import com.insurence.entity.Policy;
import com.insurence.service.CategoryService;
import com.insurence.service.PolicyService;

import jakarta.validation.Valid;

@Controller
public class PolicyController {
	public static String uploadDirectory = System.getProperty("user.dir") + "\\src\\main\\webapp\\Uploads";

	@Autowired
	CategoryService catService;	
	
	@Autowired
	PolicyService pservice;
	
	public PolicyController() {
	}

	@GetMapping("/pageAdminPolicyNew")
	public String adminAddPolicy(Model model) {		
		List<Category> catList = catService.getAllCategories();	
        model.addAttribute("catList", catList);
        model.addAttribute("policy", new Policy());
		return "Admin_AddPolicy";
	}
	
	@PostMapping("/savePolicy")
	public String savePolicy(@Valid @ModelAttribute("policy") Policy p,BindingResult bindingResult,Model model,@RequestParam(name="file1") MultipartFile upload)
	{
		
		if (!upload.isEmpty()) {	
			 
 			try {
 				String filePath=File.separator +"Policies"+File.separator+p.getPolicyCode()+"_" +upload.getOriginalFilename();
				String fullPath = uploadDirectory + filePath;
				File dir = new File(fullPath);
				if (!dir.exists())
					dir.mkdirs();
				upload.transferTo(new File(fullPath));
				System.out.println("Server File Location="+dir);
				p.setPolicyDocpath("Uploads"+filePath);			
			} catch (Exception e) {
				p.setPolicyDocpath("");
			} 
 		} 
		if (bindingResult.hasErrors()) {
			List<Category> catList = catService.getAllCategories();	
	        model.addAttribute("catList", catList);
			model.addAttribute("policyCategory", p.getPolicyCategory());
			model.addAttribute("policyCode", p.getPolicyCode());
			model.addAttribute("policyName", p.getPolicyName());
//			model.addAttribute("policyDocpath", p.getPolicyDocpath());
			model.addAttribute("policySumassurance", p.getPolicySumassurance());
			model.addAttribute("policyPremium", p.getPolicyPremium());
			model.addAttribute("policyTenure", p.getPolicyTenure());					
			System.out.println(bindingResult.getAllErrors());
			return "Admin_AddPolicy";	
		}
		pservice.saveNewPolicy(p);
		return "redirect:/pageAdminPolicyNew";
	}

	@GetMapping("/pagePolicyEdit")
	public String adminEditPolicy(Model model) {
		List<Policy> polList = pservice.getAllPolicies();	
        model.addAttribute("policyList", polList);
		return "Admin_EditPolicy";
	}
	
	@GetMapping("/pageUpdatePolicy{id}")
	public String updatePolicyDetails(Model model,@PathVariable int id) {
		System.out.print("Inside pageUpdatePolicy"+id);
		Policy pol = pservice.getDetailsById(id);
        model.addAttribute("p", pol);
        List<Category> catList = catService.getAllCategories();	
        model.addAttribute("catList", catList);
		return "Admin_UpdatePolicy";
	}
    
	@PostMapping("/savePolicyUpdate")
	public String saveUpdatedPolicy(@Valid @ModelAttribute("p") Policy p,BindingResult bindingResult,Model model,@RequestParam(name="file1") MultipartFile upload)
	{
		System.out.println("Inside Update Method:"+p.getPolicyId());
		Policy pol = pservice.getDetailsById(p.getPolicyId());
		if (!upload.isEmpty()) {	
			 
 			try {
 				String filePath=File.separator +"Policies"+File.separator+p.getPolicyCode()+"_" +upload.getOriginalFilename();
				String fullPath = uploadDirectory + filePath;
				File dir = new File(fullPath);
				if (!dir.exists())
					dir.mkdirs();
				upload.transferTo(new File(fullPath));
				System.out.println("Server File Location="+dir);
				p.setPolicyDocpath("Uploads"+filePath);			
			} catch (Exception e) {
				p.setPolicyDocpath(pol.getPolicyDocpath());
			} 
 		} 
		else
		{
			p.setPolicyDocpath(pol.getPolicyDocpath());
		}
		if (bindingResult.hasErrors()) {
			List<Category> catList = catService.getAllCategories();	
	        model.addAttribute("catList", catList);
			model.addAttribute("policyCategory", p.getPolicyCategory().getCatId());
			model.addAttribute("policyCode", p.getPolicyCode());
			model.addAttribute("policyId", p.getPolicyId());
			model.addAttribute("policyName", p.getPolicyName());
//			model.addAttribute("policyDocpath", p.getPolicyDocpath(.));
			model.addAttribute("policySumassurance", p.getPolicySumassurance());
			model.addAttribute("policyPremium", p.getPolicyPremium());
			model.addAttribute("policyTenure", p.getPolicyTenure());					
			System.out.println(bindingResult.getAllErrors());
			return "Admin_UpdatePolicy";	
		}
		pservice.updatePolicy(p);
		return "redirect:/pagePolicyEdit";
	}
	
	@GetMapping("/pagePolicyReport")
	public String adminPolicyReport(Model model) {
		List<Policy> polList = pservice.getAllPolicies();	
        model.addAttribute("policyList", polList);
        List<Category> catList = catService.getAllCategories();	
        model.addAttribute("catList", catList);
		return "Admin_ViewPolicy";
	}
}
