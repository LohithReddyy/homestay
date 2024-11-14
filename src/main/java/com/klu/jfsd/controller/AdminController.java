package com.klu.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;
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

	 @GetMapping("adminlogin")
		public ModelAndView adminlogin()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
	 @GetMapping("/adminhome")
	 public ModelAndView adminHome()
	 {
		 ModelAndView mv = new  ModelAndView();
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
				//long customercount = adminservice.customercount();
				//mv.addObject("count",customercount);
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
	 @PostMapping("addhost")
		public ModelAndView addhost(HttpServletRequest request)
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
}
