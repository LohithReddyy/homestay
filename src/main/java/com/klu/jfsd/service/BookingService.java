package com.klu.jfsd.service;

import com.klu.jfsd.model.Booking;
import java.util.List;

public interface BookingService {
    String createBooking(Booking booking);
    List<Booking> getAllBookings();
    String deleteBooking(int id);
}
