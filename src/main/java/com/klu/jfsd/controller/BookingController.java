package com.klu.jfsd.controller;



import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Booking;
import com.klu.jfsd.model.Home;
import com.klu.jfsd.model.Host;
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
	     java.util.List<Tourist> tourist= adminService.viewAllTourists();
		 mv.addObject("touristslist",tourist); 
		 java.util.List<Home> homeList = homeService.viewAllHomes();
	        mv.addObject("homeslist", homeList);
	     return mv;
	 }
    
    @GetMapping("mybookings")
    public ModelAndView myBookings()
    {
    	 ModelAndView mv = new ModelAndView();
    	 mv.setViewName("mybookings");
    	 return mv;
    }
    
    @GetMapping("bookingconform")
    public ModelAndView bookingconfo()
    {
    	 ModelAndView mv = new ModelAndView();
    	 mv.setViewName("bookingconform");
    	 return mv;
    }
 
 // Method to handle booking form submission and display booking details
    @PostMapping("/addbookingdetails")
    public String createBooking(@ModelAttribute Booking booking, Model model) {
        // Save the booking to the database
        String result = bookingService.createBooking(booking);
        
        // Add booking details to the model to pass them to the JSP
        model.addAttribute("homeId", booking.getHomeId());
        model.addAttribute("touristId", booking.getTouristId());
        model.addAttribute("email", booking.getEmail());
        model.addAttribute("numberOfGuests", booking.getNumberOfGuests());
        model.addAttribute("startDate", booking.getStartDate());
        model.addAttribute("endDate", booking.getEndDate());
        
        // Add success message
        model.addAttribute("message", result);

        // Redirect to the booking confirmation page
        return "redirect:/bookingconform"; 
    }

   

    @GetMapping("/bookings/list")
    public String listBookings(Model model) {
        java.util.List<Booking> bookings = bookingService.getAllBookings();
        model.addAttribute("bookings", bookings);
        return "booking-list"; // JSP view name for the list
    }

}