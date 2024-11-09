package com.klu.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	 @Autowired
	 private AdminService adminservice;
//	 @GetMapping("/adminhome")
//     public String adminhome()
//     {
//    	 return "adminhome";
//     }
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
				mv.setViewName("adminloginsuccess");
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
}
