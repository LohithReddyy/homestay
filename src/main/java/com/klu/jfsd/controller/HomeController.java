package com.klu.jfsd.controller;

import com.klu.jfsd.model.Home;
import com.klu.jfsd.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private HomeService homeService;

    @GetMapping("addhome")
    public ModelAndView addhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("add-home");
        return mv;
    }

    @PostMapping("addhomedetails")
    public ModelAndView addHome(HttpServletRequest request) throws IOException, ServletException {
        String name = request.getParameter("name");
        String location = request.getParameter("location");
        boolean ac = Boolean.parseBoolean(request.getParameter("ac"));
        int maxAdults = Integer.parseInt(request.getParameter("maxAdults"));
        String type = request.getParameter("type");
        boolean available = Boolean.parseBoolean(request.getParameter("available"));
        double pricepernight = Double.parseDouble(request.getParameter("pricepernight"));
        Part filePart = request.getPart("image");

        InputStream inputStream = null;
        byte[] imageBytes = null;
        if (filePart != null && filePart.getSize() > 0) {
            inputStream = filePart.getInputStream();
            imageBytes = inputStream.readAllBytes();
        }

        Home home = new Home();
        home.setName(name);
        home.setLocation(location);
        home.setAc(ac);
        home.setMaxAdults(maxAdults);
        home.setType(type);
        home.setAvailable(available);
        home.setPricepernight(pricepernight);
        home.setImage(imageBytes);

        String message = homeService.addHome(home) != null ? "Home added successfully!" : "Failed to add home.";
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminloginsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("viewallhomes")
    public ModelAndView viewallhomes() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home-list");
        List<Home> homeList = homeService.viewAllHomes();
        mv.addObject("homeslist", homeList);
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
        Home home = homeService.findHomeById(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatehome");
        mv.addObject("home", home);
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

        Home home = new Home();
        home.setId(homeId);
        home.setName(name);
        home.setLocation(location);
        home.setAc(ac);
        home.setMaxAdults(maxAdults);
        home.setType(type);
        home.setAvailable(available);
        home.setPricepernight(pricePerNight);

        String message = homeService.updateHome(homeId, home);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminloginsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping(value = "homeimage/{id}", produces = "image/jpeg")
    @ResponseBody
    public byte[] getHomeImage(@PathVariable int id) {
        Home home = homeService.findHomeById(id);
        return home != null && home.getImage() != null ? home.getImage() : new byte[0];
    }
}
