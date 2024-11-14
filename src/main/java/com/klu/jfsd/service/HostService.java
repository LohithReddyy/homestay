package com.klu.jfsd.service;

import java.util.List;

import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;

public interface HostService {
	public String hostRegistration(Host host);
	public Host checkHostLogin(String email,String password);
	
}
