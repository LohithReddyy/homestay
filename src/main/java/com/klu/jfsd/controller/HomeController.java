package com.klu.jfsd.controller;

import com.klu.jfsd.model.Home;
import com.klu.jfsd.model.Host;
import com.klu.jfsd.service.HomeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

@Controller
@MultipartConfig
//@RequestMapping("/homes")
public class HomeController {

    @Autowired
    private HomeService homeService;

//    @GetMapping
//    public String viewAllHomes(Model model) {
//        List<Home> homes = homeService.viewAllHomes();
//        model.addAttribute("homes", homes);
//        return "home-list";
//    }

//    @GetMapping("/add")
//    public String showAddHomeForm(Model model) {
//        model.addAttribute("home", new Home());
//        return "add-home";
//    }

//    @PostMapping("/add")
//    public String addHome(@ModelAttribute Home home) {
//        homeService.addHome(home);
//        return "redirect:/homes";
//    }

//    @GetMapping("/edit/{id}")
//    public String showEditHomeForm(@PathVariable int id, Model model) {
//        Home home = homeService.viewAllHomes()
//            .stream()
//            .filter(h -> h.getId() == id)
//            .findFirst()
//            .orElse(null);
//        model.addAttribute("home", home);
//        return "edit-home";
//    }
//
//    @PostMapping("/edit/{id}")
//    public String updateHome(@PathVariable int id, @ModelAttribute Home home) {
//        homeService.updateHome(id, home);
//        return "redirect:/homes";
//    }
//
//    @GetMapping("/delete/{id}")
//    public String deleteHome(@PathVariable int id) {
//        homeService.deleteHome(id);
//        return "redirect:/homes";
//    }
    
    
    
    
    
    
    @GetMapping("addhome")
	 public ModelAndView addhome() {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("add-home");
	     return mv;
	 }
    @PostMapping("addhomedetails")
    public ModelAndView addHome(HttpServletRequest request) throws IOException, ServletException {
        // Retrieve form parameters from the request
        String name = request.getParameter("name");
        String location = request.getParameter("location");
        boolean ac = Boolean.parseBoolean(request.getParameter("ac")); // Parse boolean value for AC
        int maxAdults = Integer.parseInt(request.getParameter("maxAdults")); // Parse integer value
        String type = request.getParameter("type");
        boolean available = Boolean.parseBoolean(request.getParameter("available")); // Parse boolean value for availability
        double pricepernight = Double.parseDouble(request.getParameter("pricepernight"));
        Part filePart = request.getPart("image");
        
        if (filePart == null || filePart.getSize() == 0) {
            throw new IllegalArgumentException("File part is missing or empty");
        }
        InputStream inputStream = filePart.getInputStream();
        byte[] imageBytes = inputStream.readAllBytes();
        

        // Create a new Home object and populate its fields
        Home home = new Home();
        home.setName(name);
        home.setLocation(location);
        home.setAc(ac);
        home.setMaxAdults(maxAdults);
        home.setType(type);
        home.setAvailable(available);
        home.setPricepernight(pricepernight);
        home.setImage(imageBytes);
        

        // Call the service layer to handle the saving of the Home object
        String message = homeService.addHome(home) != null ? "Home added successfully!" : "Failed to add home.";

        // Prepare the ModelAndView object
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminloginsuccess"); // This should be the success view
        mv.addObject("message", message);

        return mv;
    }
    
    @GetMapping("viewallhomes")
	public ModelAndView viewallhomes()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home-list");
		List<Home> home= homeService.viewAllHomes();
		mv.addObject("homeslist",home); 
		System.out.println("Retrieved Homes: " + home); // Debug output
		return mv;
	}
  
    @GetMapping("deletehomedetails/{id}")
    public ModelAndView deleteHomeDetails(@PathVariable int id) {
        String message = homeService.deleteHome(id);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminloginsuccess");
        mv.addObject("message", message);

        return mv;
    }

    
    @GetMapping("updatehome/{id}")
    public ModelAndView updatehome(@PathVariable("id") int id) {
        // Fetch the Home object based on the provided ID
        Home home = homeService.findHomeById(id);
        
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatehome"); // JSP file name
        mv.addObject("home", home);  // Pass the Home object to the JSP
        return mv;
    }
    @PostMapping("updatehomedetails")
    public ModelAndView updateHomeDetails(HttpServletRequest request) {
        int homeId = Integer.parseInt(request.getParameter("homeid"));
        String name = request.getParameter("hname");
        String location = request.getParameter("hlocation");
        boolean ac = Boolean.parseBoolean(request.getParameter("hac"));
        int maxAdults = Integer.parseInt(request.getParameter("hmaxAdults"));
        String type = request.getParameter("htype");
        boolean available = Boolean.parseBoolean(request.getParameter("havailable"));
        double pricePerNight = Double.parseDouble(request.getParameter("hpricepernight"));

        // Create a Home object using the default constructor
        Home home = new Home();
        home.setId(homeId);
        home.setName(name);
        home.setLocation(location);
        home.setAc(ac);
        home.setMaxAdults(maxAdults);
        home.setType(type);
        home.setAvailable(available);
        home.setPricepernight(pricePerNight);

        // Call service layer to update
        String message = homeService.updateHome(homeId, home);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminloginsuccess");
        mv.addObject("message", message);
        return mv;
    }
//    @GetMapping("/updatehomedetails")
//    public ModelAndView updateHomeDetails(@ModelAttribute Home home) {
//        String message = homeService.updateHome(home.getId(), home);
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("adminloginsuccess");
//        mv.addObject("message", message);
//        return mv;
//    }
}
