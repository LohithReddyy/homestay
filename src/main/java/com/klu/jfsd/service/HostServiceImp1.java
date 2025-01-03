package com.klu.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.model.Host;
import com.klu.jfsd.repository.HostRepository;

@Service
public class HostServiceImp1 implements HostService{

	@Autowired
	private HostRepository hostrepository;
	@Override
	public String hostRegistration(Host host) {
		hostrepository.save(host);
		return null;
	}
	@Override
	public Host checkHostLogin(String email, String password) {
		
		return hostrepository.checkHostLogin(email, password);
	}
	

}
