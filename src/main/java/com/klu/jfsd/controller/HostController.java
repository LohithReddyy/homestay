package com.klu.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;
import com.klu.jfsd.service.HostService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HostController {
	
	@Autowired
	private HostService hostservice;
	
//	@GetMapping("hostregistration")
//	public ModelAndView hostregistration()
//	{
//		ModelAndView mv=new ModelAndView();
//		mv.setViewName("hostregistration");
//		return mv;
//	}
	@GetMapping("hostregistration")
	public ModelAndView hostreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hostreg");
		return mv;
	}
	@PostMapping("inserthost")
	public ModelAndView inserthost(HttpServletRequest request)
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
	@GetMapping("hostlogin")
	public ModelAndView hostlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hostlogin");
		return mv;
	}
	@PostMapping("checkhostlogin")
	public ModelAndView hostlogin(HttpServletRequest request)
	{
		//TODO: process POST request
				String hemail = request.getParameter("hemail");
				String hpwd = request.getParameter("hpwd");
				Host host = hostservice.checkHostLogin(hemail, hpwd);
				ModelAndView mv=new ModelAndView();
				if(host!=null)
				{
					HttpSession session = request.getSession();
					session.setAttribute("tourist", host); // customer is the session object we can use 
					mv.setViewName("hosthome");
					// create a session variable 
					
				}
				else
				{
					mv.setViewName("hostlogin");
					mv.addObject("message","Login Failed");
				}
				return mv;
	}
	
}
