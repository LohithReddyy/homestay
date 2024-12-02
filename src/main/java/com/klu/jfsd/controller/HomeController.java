package com.klu.jfsd.controller;

import com.klu.jfsd.model.Home;
import com.klu.jfsd.service.HomeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/homes")
public class HomeController {

    @Autowired
    private HomeService homeService;

    @GetMapping
    public String viewAllHomes(Model model) {
        List<Home> homes = homeService.viewAllHomes();
        model.addAttribute("homes", homes);
        return "home-list";
    }

    @GetMapping("/add")
    public String showAddHomeForm(Model model) {
        model.addAttribute("home", new Home());
        return "add-home";
    }

    @PostMapping("/add")
    public String addHome(@ModelAttribute Home home) {
        homeService.addHome(home);
        return "redirect:/homes";
    }

    @GetMapping("/edit/{id}")
    public String showEditHomeForm(@PathVariable int id, Model model) {
        Home home = homeService.viewAllHomes()
            .stream()
            .filter(h -> h.getId() == id)
            .findFirst()
            .orElse(null);
        model.addAttribute("home", home);
        return "edit-home";
    }

    @PostMapping("/edit/{id}")
    public String updateHome(@PathVariable int id, @ModelAttribute Home home) {
        homeService.updateHome(id, home);
        return "redirect:/homes";
    }

    @GetMapping("/delete/{id}")
    public String deleteHome(@PathVariable int id) {
        homeService.deleteHome(id);
        return "redirect:/homes";
    }
}
