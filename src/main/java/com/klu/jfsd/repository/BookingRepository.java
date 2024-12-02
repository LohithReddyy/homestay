package com.klu.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.model.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {
}
