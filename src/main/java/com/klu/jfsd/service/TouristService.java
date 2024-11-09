package com.klu.jfsd.service;

import com.klu.jfsd.model.Tourist;

public interface TouristService {
	public String touristRegistration(Tourist tourist);
	public Tourist checkTouristLogin(String email,String password);

}

