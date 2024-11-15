package com.klu.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;
import com.klu.jfsd.repository.HostRepository;
import com.klu.jfsd.service.AdminService;
import com.klu.jfsd.service.HostService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	 @Autowired
	 private AdminService adminservice;
	 
	 @Autowired
	 private HostService hostservice;
	 
	 @Autowired
	 private HostRepository hostrepository;

	 @GetMapping("adminlogin")
		public ModelAndView adminlogin()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("adminlogin");
			
			return mv;
		}
	
	 @GetMapping("/adminhome")
	 public ModelAndView adminHome(@RequestParam("hid") int hid) {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     
	     return mv;
	 }
	 @PostMapping("/checkadminlogin")
	 public ModelAndView checkAdminLogin(HttpServletRequest request)
	 {
		 String auname = request.getParameter("auname");
			String apwd = request.getParameter("apwd");
			Admin admin = adminservice.checkAdminLogin(auname, apwd);
			ModelAndView mv=new ModelAndView();
			if(admin!=null)
			{
				HttpSession session = request.getSession();
				session.setAttribute("admin", admin);
				mv.setViewName("adminhome");
				long hostcount = adminservice.hostcount();
				mv.addObject("hostcount",hostcount);
				long touristcount = adminservice.touristcount();
				mv.addObject("touristcount",touristcount);
			}
			else
			{
				mv.setViewName("adminloginfail");
				mv.addObject("message","Login Failed");
			}
			return mv;
	 }
	 @GetMapping("viewallhosts")
		public ModelAndView viewallhosts()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("viewallhosts");
			List<Host> host= adminservice.viewAllHosts();
			mv.addObject("hostslist",host); 
			System.out.println("Retrieved Hosts: " + host); // Debug output
			return mv;
		}
	 @GetMapping("viewalltourists")
		public ModelAndView viewalltourists()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("viewalltourists");
			List<Tourist> tourist= adminservice.viewAllTourists();
			mv.addObject("touristslist",tourist); 
			System.out.println("Retrieved Tourists: " + tourist); // Debug output
			return mv;
		}
	 @GetMapping("addhost")
		public ModelAndView hostreg()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("addhost");
			return mv;
		}
	 
	 @PostMapping("addhostdetails")
		public ModelAndView addHost(HttpServletRequest request)
		{
			
			    String name = request.getParameter("hname");
		        String gender = request.getParameter("hgender");
		        String dob = request.getParameter("hdob");
		        String email = request.getParameter("hemail");
		        String location = request.getParameter("hlocation");
		        String contact = request.getParameter("hcontact");
		        String password = request.getParameter("hpwd"); // Adjusted to match 'cpwd' in JSP
		        String pan = request.getParameter("hpan");
		        String bankacc = request.getParameter("hbank");
		        String bankifsc = request.getParameter("hifsc");
		        
		        Host host=new Host();
		        
		        host.setHname(name);
		        host.setHgender(gender);
		        host.setHdateofbirth(dob);
		        host.setHemail(email);
		        host.setHlocation(location);
		        host.setHcontact(contact);
		        host.setHpassword(password);
		        host.setHpan(pan);
		        host.setHbank(bankifsc);
		        host.setHifsc(bankifsc);
		        
		        String message = hostservice.hostRegistration(host);
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("adminloginsuccess");
		        mv.addObject("message", message);
		        
		        return mv;
		}
	 @GetMapping("deletehost")
		public ModelAndView deletehost()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("deletehost");
			return mv;
		}
	 @PostMapping("deletehostdetails")
	 public ModelAndView deleteHostDetails(HttpServletRequest request) {
	     int hostId = Integer.parseInt(request.getParameter("hostid"));
	     
	     String message = adminservice.deleteHost(hostId);
	     
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminloginsuccess"); 
	     mv.addObject("message", message);
	     
	     return mv;
	 }
	 @GetMapping("updatehost")
		public ModelAndView updatehost()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("updatehost");
			return mv;
		}
	 @PostMapping("updatehostdetails")
	 public ModelAndView updateHostDetails(HttpServletRequest request) {
	     int hostId = Integer.parseInt(request.getParameter("hostid"));
	     String name = request.getParameter("hname");
	     String gender = request.getParameter("hgender");
	     String dob = request.getParameter("hdob");
	     String email = request.getParameter("hemail");
	     String location = request.getParameter("hlocation");
	     String contact = request.getParameter("hcontact");
	     String password = request.getParameter("hpwd");
	     String pan = request.getParameter("hpan");
	     String bankacc = request.getParameter("hbank");
	     String bankifsc = request.getParameter("hifsc");

	     Host host = new Host();
	     host.setHname(name);
	     host.setHgender(gender);
	     host.setHdateofbirth(dob);
	     host.setHemail(email);
	     host.setHlocation(location);
	     host.setHcontact(contact);
	     host.setHpassword(password);
	     host.setHpan(pan);
	     host.setHbank(bankacc);
	     host.setHifsc(bankifsc);

	     String message = adminservice.updateHost(hostId, host);

	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminloginsuccess");
	     mv.addObject("message", message);

	     return mv;
	 }
	 @GetMapping("addtourist")
	 public ModelAndView touristReg() {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("addtourist");
	     return mv;
	 }

	 @PostMapping("addtouristdetails")
	 public ModelAndView addTourist(HttpServletRequest request) {
	     String name = request.getParameter("tname");
	     String gender = request.getParameter("tgender");
	     String dob = request.getParameter("tdob");
	     String email = request.getParameter("temail");
	     String location = request.getParameter("tlocation");
	     String contact = request.getParameter("tcontact");
	     String password = request.getParameter("tpwd");

	     Tourist tourist = new Tourist();
	     tourist.setTname(name);
	     tourist.setTgender(gender);
	     tourist.setTdateofbirth(dob);
	     tourist.setTemail(email);
	     tourist.setTlocation(location);
	     tourist.setTcontact(contact);
	     tourist.setTpassword(password);

	     String message = adminservice.addTourist(tourist);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminloginsuccess");
	     mv.addObject("message", message);

	     return mv;
	 }

	 @GetMapping("deletetourist")
	 public ModelAndView deleteTourist() {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("deletetourist");
	     return mv;
	 }

	 @PostMapping("deletetouristdetails")
	 public ModelAndView deleteTouristDetails(HttpServletRequest request) {
	     int touristId = Integer.parseInt(request.getParameter("touristid"));

	     String message = adminservice.deleteTourist(touristId);

	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminloginsuccess");
	     mv.addObject("message", message);

	     return mv;
	 }

	 @GetMapping("updatetourist")
	 public ModelAndView updateTourist() {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("updatetourist");
	     return mv;
	 }

	 @PostMapping("updatetouristdetails")
	 public ModelAndView updateTouristDetails(HttpServletRequest request) {
	     int touristId = Integer.parseInt(request.getParameter("touristid"));
	     String name = request.getParameter("tname");
	     String gender = request.getParameter("tgender");
	     String dob = request.getParameter("tdob");
	     String email = request.getParameter("temail");
	     String location = request.getParameter("tlocation");
	     String contact = request.getParameter("tcontact");
	     String password = request.getParameter("tpwd");

	     Tourist tourist = new Tourist();
	     tourist.setTname(name);
	     tourist.setTgender(gender);
	     tourist.setTdateofbirth(dob);
	     tourist.setTemail(email);
	     tourist.setTlocation(location);
	     tourist.setTcontact(contact);
	     tourist.setTpassword(password);

	     String message = adminservice.updateTourist(touristId, tourist);

	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminloginsuccess");
	     mv.addObject("message", message);

	     return mv;
	 }

}
