package com.klu.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.klu.jfsd.model.Booking;
import com.klu.jfsd.service.BookingService;

@Controller
@RequestMapping("/bookings")
public class BookingController {

    @Autowired
    private BookingService bookingService;

    @GetMapping("/list")
    public String listBookings(Model model) {
        model.addAttribute("bookings", bookingService.getAllBookings());
        return "booking-list";
    }

    @GetMapping("/add")
    public String showBookingForm(Model model) {
        model.addAttribute("booking", new Booking());
        return "add-booking";
    }

    @PostMapping("/add")
    public String createBooking(@ModelAttribute Booking booking, Model model) {
        String result = bookingService.createBooking(booking);
        model.addAttribute("message", result);
        return "redirect:/bookings/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteBooking(@PathVariable("id") int id, Model model) {
        String result = bookingService.deleteBooking(id);
        model.addAttribute("message", result);
        return "redirect:/bookings/list";
    }
}
