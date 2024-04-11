package com.insurence.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.insurence.entity.Appointment;
import com.insurence.entity.Contactus;
import com.insurence.entity.LocalAgentReg;
import com.insurence.entity.Location;
import com.insurence.entity.PolicyHolderReg;
import com.insurence.service.Appointmentservice;
import com.insurence.service.Clientservice;
import com.insurence.service.Contactservice;
import com.insurence.service.EmailService;
import com.insurence.service.FileStorageService;
import com.insurence.service.LocalAgentService;
import com.insurence.service.LocationService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@SessionAttributes({"agent"})
public class PageController {
	@Autowired
	LocationService locService;
	@Autowired
	Contactservice contService;
	@Autowired
	Appointmentservice appService;
	@Autowired
	Clientservice userService;
	@Autowired
	LocalAgentService agentService;
	@Autowired
	FileStorageService fileService;
	@Autowired
	EmailService mailService;

	public static String uploadDirectory = System.getProperty("user.dir") + "\\src\\main\\webapp\\Uploads";

	@InitBinder
	public void initBinder(WebDataBinder binder) {

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		CustomDateEditor orderDateEditor = new CustomDateEditor(dateFormat, true);
		binder.registerCustomEditor(Date.class, orderDateEditor);
		System.out.println("Inside initbinder");

	}

	@RequestMapping("/pageAbout")
	public String showAbout() {
		return "About";
	}

	@GetMapping({ "/", "/pageIndex" })
	public String showIndex(Model model) {
		model.addAttribute("appointment", new Appointment());
		return "Index";
	}

	@RequestMapping("/pageService")
	public String showService() {
		return "Service";
	}

	@GetMapping("/pageContactus")
	public String showContactus(Model model) {
		model.addAttribute("contact", new Contactus());
		return "Contactus";
	}

	@PostMapping("/saveContactus")
	public String saveContactusmessage(@Valid @ModelAttribute("contact") Contactus msg, BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("msgName", msg.getMsgName());
			model.addAttribute("msgEmail", msg.getMsgEmail());
			model.addAttribute("msgSubject", msg.getMsgSubject());
			model.addAttribute("msgMessage", msg.getMsgMessage());
			return "Contactus";
		}
		contService.saveContactmsg(msg);
		return "redirect:/pageContactus";
	}

	@PostMapping("/bookAppointment")
	public String bookAppointments(@Valid @ModelAttribute("appointment") Appointment msg, BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("name", msg.getName());
			model.addAttribute("email", msg.getEmail());
			model.addAttribute("mobile", msg.getMobile());
			model.addAttribute("message", msg.getMessage());
			model.addAttribute("type", msg.getType());
			model.addAttribute("status", msg.getStatus());
			return "Index";
		}
		appService.saveAppointmentreq(msg);
		return "redirect:/pageIndex";
	}

	@GetMapping("/clientRegistration")
	public String userSignup(Model model) {
		model.addAttribute("client", new PolicyHolderReg());
		return "ClientRegistration";
	}

	@PostMapping("/saveClient")
	public String saveClientReg(@Valid @ModelAttribute("client") PolicyHolderReg client, BindingResult bindingResult,
			Model model, @RequestParam(name = "file1") MultipartFile upload1,
			@RequestParam(name = "file2") MultipartFile upload2,HttpSession session) throws IOException {
		Integer agentId = (Integer) session.getAttribute("agentId");
		client.setStatus("0");
		client.setUser_type("Client");
		client.setClientUID("Client"+client.getClientName().substring(0, 3));
		client.setClientPasswd(client.getClientMob());
		LocalAgentReg sessionAgent = agentService.viewAgentById(agentId);
		client.setClient_regAgent(sessionAgent);
		System.out.println("Agent Id"+agentId);
		String filePath2 = File.separator + "Clients_Idproof" + File.separator + client.getClientUID() + "_"
				+ upload2.getOriginalFilename();
		String filePath = File.separator + "Clients_Photo" + File.separator + client.getClientUID() + "_"
				+ upload1.getOriginalFilename();

		if (!upload1.isEmpty()) {
			client.setClientPhotopath("Uploads" + filePath);
		}
		if (!upload2.isEmpty()) {
			client.setClientProofpath("Uploads" + filePath2);
		}
		if (bindingResult.hasErrors()) {
			model.addAttribute("clientName", client.getClientName());
			model.addAttribute("clientEmail", client.getClientEmail());
			model.addAttribute("clientMob", client.getClientMob());
			model.addAttribute("clientDob", client.getClientDob());
			model.addAttribute("clientGen", client.getClientGen());
			model.addAttribute("clientAddr1", client.getClientAddr1());
			model.addAttribute("clientAddr2", client.getClientAddr2());
			model.addAttribute("clientPin", client.getClientPin());
			model.addAttribute("clientCity", client.getClientCity());
			model.addAttribute("user_type", client.getUser_type());
			model.addAttribute("status", "0");
			System.out.println(bindingResult.getAllErrors());
			return "Agent_ClientregForm";
		}
		fileService.storeFile(upload1, upload2, filePath, filePath2);
		userService.saveClientdetails(client);
		String body="Hi "+client.getClientName()+",Your account is Registered to our system by our agent "+sessionAgent.getAgentName()+"\nYour authentication details given below. Please update your password for your security."+"\nUsername:"+client.getClientUID()+"\nPassword:"+client.getClientPasswd();
		mailService.sendEmail(client.getClientEmail(), "SmartProtect Insurence Account Registration", body);
		return "redirect:/pageClientRegistration";
	}

	@GetMapping("/agentRegistration")
	public String agentSignup(Model model) {
		model.addAttribute("agent", new LocalAgentReg());
		List<Location> locList = locService.getAllLocations();
		model.addAttribute("locList", locList);
		return "AgentRegistration";
	}

	@PostMapping("/saveAgent")
	public String saveAgentReg(@Valid @ModelAttribute("agent") LocalAgentReg agent, BindingResult bindingResult,
			Model model, @RequestParam(name = "file") MultipartFile upload,
			@RequestParam(name = "file1") MultipartFile doc) {
		System.out.println("File Path:" + upload.getOriginalFilename());
		agent.setAgentPhotopath(upload.getOriginalFilename());
		agent.setAgentProofpath(doc.getOriginalFilename());
		if (!upload.isEmpty()) {

			try {
				String filePath = File.separator + "Agents" + File.separator + agent.getAgentUname() + "_"
						+ upload.getOriginalFilename();
				String orgPath = uploadDirectory + filePath;
				File dir = new File(orgPath);
				if (!dir.exists())
					dir.mkdirs();
				upload.transferTo(new File(orgPath));
				System.out.println("Server File Location=" + dir);
				agent.setAgentPhotopath("Uploads" + filePath);
			} catch (Exception e) {
				agent.setAgentPhotopath("");
			}
		}
		if (!doc.isEmpty()) {

			try {
				String filePath = File.separator + "Agentsdocs" + File.separator + agent.getAgentUname() + "_"
						+ doc.getOriginalFilename();
				String orgPath = uploadDirectory + filePath;
				File dir = new File(orgPath);
				if (!dir.exists())
					dir.mkdirs();
				doc.transferTo(new File(orgPath));
				System.out.println("Server File Location=" + dir);
				agent.setAgentProofpath("Uploads" + filePath);
			} catch (Exception e) {
				agent.setAgentProofpath("");
			}
		}
		agent.setStatus("0");
		agent.setUser_type("Agent");
		if (bindingResult.hasErrors()) {
			model.addAttribute("agentName", agent.getAgentName());
			model.addAttribute("agentEmail", agent.getAgentEmail());
			model.addAttribute("agentMob", agent.getAgentMob());
			model.addAttribute("agentDob", agent.getAgentDob());
			model.addAttribute("agentGen", agent.getAgentGen());
			model.addAttribute("agentAddr1", agent.getAgentAddr1());
			model.addAttribute("agentAddr2", agent.getAgentAddr2());
			model.addAttribute("agentPin", agent.getAgentPin());
			model.addAttribute("agentCity", agent.getAgentCity());
			model.addAttribute("agentUname", agent.getAgentUname());
			model.addAttribute("agentPasswd", agent.getAgentPasswd());
			model.addAttribute("user_type", agent.getUser_type());
//		    model.addAttribute("agentPhotopath", agent.getAgentPhotopath());
			model.addAttribute("status", "0");
			model.addAttribute("agentLoc", agent.getAgentLoc());
			model.addAttribute("agentProofpath", agent.getAgentProofpath());
			model.addAttribute("agentEmpId", agent.getAgentEmpId());
			System.out.println(bindingResult.getAllErrors());
			List<Location> locList = locService.getAllLocations();
			model.addAttribute("locList", locList);
			return "AgentRegistration";
		}
		agentService.saveAgentdetails(agent);
		return "redirect:/agentRegistration";
	}

	@GetMapping("/pageLogin")
	public String login(@RequestParam("user") String name, Model m) {

		if (name.equals("Admin")) {
			System.out.println("Admin:" + name);
			m.addAttribute("signup", "#");
			m.addAttribute("reset", "#");
		} else if (name.equals("Agent")) {
			System.out.println("Agent:" + name);
			m.addAttribute("signup", "agentRegistration");
			m.addAttribute("reset", "#");
		} else if (name.equals("Client")) {
			m.addAttribute("signup", "clientRegistration");
			m.addAttribute("reset", "#");
		}
		m.addAttribute("name", name);
		return "Login";
	}

	@PostMapping("/checkAuthentication")
	public String checkLogin(@RequestParam("uname") String uname, @RequestParam("passwd") String pwd,
			@RequestParam("user") String user, Model model,HttpSession session) {		
		String homePage = "";	
		
		if (user.equals("Admin")) {
			if (uname.equals("admin") && pwd.equals("admin"))
				homePage = "redirect:/pageAdminHome";
		} else if (user.equals("Agent")) {
			List<LocalAgentReg> agentList = agentService.getAllAgents();
			for (LocalAgentReg agent : agentList) {
				if (uname.equals(agent.getAgentUname()) && pwd.equals(agent.getAgentPasswd())
						&& (agent.getStatus().equals("1"))) {	
					System.out.print("Session starts here:"+agent.getAgentId()+agent.getAgentName());
					session.setAttribute("role", "Agent");
					session.setAttribute("agentId", agent.getAgentId());
					session.setAttribute("agentName", agent.getAgentName());
					session.setAttribute("agentPic", agent.getAgentPhotopath());
					homePage = "redirect:/pageAgentHome";
				}
			}
		} else if (user.equals("Client")) {	
			List<PolicyHolderReg> clientList = userService.getAllClients();
			for (PolicyHolderReg client : clientList) {
				if (uname.equals(client.getClientUID()) && pwd.equals(client.getClientPasswd())) {					
					System.out.print("Session starts here:"+client.getClientId()+client.getClientName());
					session.setAttribute("role", "Client");
					session.setAttribute("clientId", client.getClientId());
					session.setAttribute("clientName", client.getClientName());
					session.setAttribute("clientPic", client.getClientPhotopath());
					homePage = "redirect:/pageAgentHome";
				}
			}
			homePage = "redirect:/pageClientHome";
		}
		return homePage;
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
	    HttpSession session = request.getSession(false); // Get the session if it exists
	    if (session != null) {
	        session.invalidate(); // Invalidate the session
	    }
	    return "redirect:/pageIndex";
	}

}
