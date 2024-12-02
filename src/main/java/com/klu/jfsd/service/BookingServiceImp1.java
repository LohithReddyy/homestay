package com.klu.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klu.jfsd.model.Booking;
import com.klu.jfsd.repository.BookingRepository;
import java.util.List;
import java.util.Optional;

@Service
public class BookingServiceImp1 implements BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    @Override
    public String createBooking(Booking booking) {
        bookingRepository.save(booking);
        return "Booking Created Successfully";
    }

    @Override
    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }

    @Override
    public String deleteBooking(int id) {
        Optional<Booking> booking = bookingRepository.findById(id);
        if (booking.isPresent()) {
            bookingRepository.deleteById(id);
            return "Booking Deleted Successfully";
        } else {
            return "Booking Not Found";
        }
    }
}
