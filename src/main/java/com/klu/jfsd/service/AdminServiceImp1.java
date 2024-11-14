package com.klu.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;
import com.klu.jfsd.repository.AdminRepository;
import com.klu.jfsd.repository.HostRepository;
import com.klu.jfsd.repository.TouristRepository;

@Service
public class AdminServiceImp1 implements AdminService {

    @Autowired
    private AdminRepository adminrepository;
    
    @Autowired
    private HostRepository hostrepository;
    
    @Autowired
    private TouristRepository touristrepository;
    
    //C:\Users\gudur\Desktop\SEM_REL\3.1 SEM\TAT\HomestayApp
    @Override
    public Admin checkAdminLogin(String username, String password) {
        return adminrepository.checkAdminLogin(username, password);
    }

	@Override
	public List<Host> viewAllHosts() {
		// TODO Auto-generated method stub
		return hostrepository.findAll();
	}

	@Override
	public List<Tourist> viewAllTourists() {
		// TODO Auto-generated method stub
		return touristrepository.findAll();
	}

	@Override
	public String addHost(Host host) {
		hostrepository.save(host);
		return null;
	}
}
