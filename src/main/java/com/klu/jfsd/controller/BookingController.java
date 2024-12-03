package com.klu.jfsd.controller;



import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Booking;
import com.klu.jfsd.model.Home;
import com.klu.jfsd.model.Tourist;
import com.klu.jfsd.service.AdminService;
import com.klu.jfsd.service.BookingService;
import com.klu.jfsd.service.HomeService;
import com.klu.jfsd.service.TouristService;

@Controller
//@RequestMapping("/bookings")
public class BookingController {

    @Autowired
    private BookingService bookingService;
    @Autowired
    private HomeService homeService;
    @Autowired
    private TouristService touristService;
    @Autowired
    private AdminService adminService;
    

//    @GetMapping("/list")
//    public String listBookings(Model model) {
//        model.addAttribute("bookings", bookingService.getAllBookings());
//        return "booking-list";
//    }
//
//    @GetMapping("/add")
//    public String showBookingForm(Model model) {
//        model.addAttribute("booking", new Booking());
//        return "add-booking";
//    }
//
//    @PostMapping("/add")
//    public String createBooking(@ModelAttribute Booking booking, Model model) {
//        String result = bookingService.createBooking(booking);
//        model.addAttribute("message", result);
//        return "redirect:/bookings/list";
//    }
//
//    @GetMapping("/delete/{id}")
//    public String deleteBooking(@PathVariable("id") int id, Model model) {
//        String result = bookingService.deleteBooking(id);
//        model.addAttribute("message", result);
//        return "redirect:/bookings/list";
//    }
    
    
    
    @GetMapping("addbooking")
	 public ModelAndView bookHome() {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("add-booking");
	     return mv;
	 }
    
 
    // Handle form submission
    @PostMapping("/bookings/add")
    public String createBooking(@ModelAttribute Booking booking, Model model) {
        // Save the booking to the database
        String result = bookingService.createBooking(booking);
        
        // Add success message
        model.addAttribute("message", result);

        // Redirect to a list or success page
        return "redirect:/bookings/list"; // Adjust path based on your app flow
    }

    // Display all bookings (Optional for navigation)
    @GetMapping("/bookings/list")
    public String listBookings(Model model) {
        java.util.List<Booking> bookings = bookingService.getAllBookings();
        model.addAttribute("bookings", bookings);
        return "booking-list"; // JSP view name for the list
    }
}
    

