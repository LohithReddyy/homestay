package com.klu.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Tourist;
import com.klu.jfsd.service.TouristService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class TouristController {
	
	@Autowired
	private TouristService touristservice;
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("touristregistration")
	public ModelAndView touristregistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("touristregistration");
		return mv;
	}
	@PostMapping("inserttourist")
	public ModelAndView inserttourist(HttpServletRequest request)
	{
		
		    String name = request.getParameter("tname");
	        String gender = request.getParameter("tgender");
	        String dob = request.getParameter("tdob");
	        String email = request.getParameter("temail");
	        String location = request.getParameter("tlocation");
	        String contact = request.getParameter("tcontact");
	        String password = request.getParameter("tpwd"); // Adjusted to match 'cpwd' in JSP
	        
	        Tourist tourist=new Tourist();
	        tourist.setTname(name);
	        tourist.setTgender(gender);
	        tourist.setTdateofbirth(dob);
	        tourist.setTemail(email);
	        tourist.setTlocation(location);
	        tourist.setTcontact(contact);
	        tourist.setTpassword(password);
	        
	        String message = touristservice.touristRegistration(tourist);
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("adminloginsuccess");
	        mv.addObject("message", message);
	        
	        return mv;
	}
	@GetMapping("touristlogin")
	public ModelAndView touristlogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("touristlogin");
		return mv;
	}
	@PostMapping("checktouristlogin")
	public ModelAndView touristlogin(HttpServletRequest request)
	{
		//TODO: process POST request
				String temail = request.getParameter("temail");
				String tpwd = request.getParameter("tpwd");
				Tourist tourist = touristservice.checkTouristLogin(temail, tpwd);
				ModelAndView mv=new ModelAndView();
				if(tourist!=null)
				{
					HttpSession session = request.getSession();
					session.setAttribute("tourist", tourist); // customer is the session object we can use 
					mv.setViewName("touristhome");
					// create a session variable 
					
				}
				else
				{
					mv.setViewName("touristlogin");
					mv.addObject("message","Login Failed");
				}
				return mv;
	}
	
}
