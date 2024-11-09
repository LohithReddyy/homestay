package com.klu.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.model.Tourist;
import com.klu.jfsd.repository.TouristRepository;

@Service
public class TouristServiceImp1 implements TouristService {

	@Autowired
	private TouristRepository touristrepository;
	@Override
	public String touristRegistration(Tourist tourist) {
		touristrepository.save(tourist);
		return null;
	}
	@Override
	public Tourist checkTouristLogin(String email, String password) {
		// TODO Auto-generated method stub
		return touristrepository.checkTouristLogin(email, password);
	}
	
	

}
