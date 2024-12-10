package com.klu.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Home;
import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;
import com.klu.jfsd.service.AdminService;
import com.klu.jfsd.service.HomeService;
import com.klu.jfsd.service.TouristService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class TouristController {
	
	@Autowired
	private TouristService touristservice;
	@Autowired
	private AdminService adminservice;
	@Autowired
	private HomeService homeservice;
	
	 @GetMapping("/")
	 public ModelAndView home() {
		    ModelAndView mv = new ModelAndView("home");
		    List<Home> homeList = homeservice.viewAllHomes();
		    mv.addObject("homeList", homeList);
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
	        mv.setViewName("touristlogin");
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
    @GetMapping("touristprofile")
    public ModelAndView touristProfile(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Tourist tourist = (Tourist) session.getAttribute("tourist");

        ModelAndView mv = new ModelAndView("touristprofile");
        if (tourist == null) {
            mv.addObject("errorMessage", "Please log in first.");
            mv.setViewName("touristprofile"); // Redirect to login if tourist not found in session
        }
        
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
					List<Home> homeList = homeservice.viewAllHomes();
					mv.addObject("homeList", homeList);
					// create a session variable 
					
					
				}
				else
				{
					mv.setViewName("touristlogin");
					mv.addObject("message","Login Failed");
				}
				return mv;
	}
	@PostMapping("updateTourist")
    public ModelAndView updateTourist(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Tourist tourist = (Tourist) session.getAttribute("tourist");

        if (tourist != null) {
            // Get updated values from the form
            tourist.setTname(request.getParameter("tname"));
            tourist.setTgender(request.getParameter("tgender"));
            tourist.setTdateofbirth(request.getParameter("tdateofbirth"));
            tourist.setTemail(request.getParameter("temail"));
            tourist.setTlocation(request.getParameter("tlocation"));
            tourist.setTcontact(request.getParameter("tcontact"));

            // Call the service to update the tourist in the database
            touristservice.updateTourist(tourist);

            // Update session with the modified tourist object
            session.setAttribute("tourist", tourist);

            // Redirect to profile page with updated information
            ModelAndView mv = new ModelAndView("touristprofile");
            mv.addObject("message", "Profile updated successfully");
            return mv;
        } else {
            // Handle case if tourist is not found in session
            ModelAndView mv = new ModelAndView("touristlogin");
            mv.addObject("message", "Please log in to update your profile.");
            return mv;
        }
    }
	
}
