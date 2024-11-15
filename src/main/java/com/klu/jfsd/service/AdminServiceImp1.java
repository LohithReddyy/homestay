package com.klu.jfsd.service;

import java.util.List;
import java.util.Optional;

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

	@Override
	public String deleteHost(int id) {
	    if (hostrepository.existsById(id)) {
	        hostrepository.deleteById(id);
	        return "Host Deleted Successfully";
	    } else {
	        return "Host Not Found";
	    }
	}

	@Override
	public String updateHost(int id, Host host) {
	    Optional<Host> existingHost = hostrepository.findById(id);
	    if (existingHost.isPresent()) {
	        Host updatedHost = existingHost.get();
	        
	        updatedHost.setHname(host.getHname());
	        updatedHost.setHgender(host.getHgender());
	        updatedHost.setHdateofbirth(host.getHdateofbirth());
	        updatedHost.setHpassword(host.getHpassword());
	        updatedHost.setHemail(host.getHemail());
	        updatedHost.setHlocation(host.getHlocation());
	        updatedHost.setHcontact(host.getHcontact());
	        updatedHost.setHpan(host.getHpan());
	        updatedHost.setHbank(host.getHbank());
	        updatedHost.setHifsc(host.getHifsc());

	        hostrepository.save(updatedHost);
	        
	        return "Host Updated Successfully";
	    } else {
	        return "Host Not Found";
	    }
	}

	@Override
	public String addTourist(Tourist tourist) {
		touristrepository.save(tourist);
		return null;
	}

	@Override
	public String deleteTourist(int id) {
	    if (touristrepository.existsById(id)) {
	        touristrepository.deleteById(id);
	        return "Tourist Deleted Successfully";
	    } else {
	        return "Tourist Not Found";
	    }
	}

	@Override
	public String updateTourist(int id, Tourist tourist) {
	    Optional<Tourist> existingTourist = touristrepository.findById(id);
	    if (existingTourist.isPresent()) {
	        Tourist updatedTourist = existingTourist.get();
	        
	        updatedTourist.setTname(tourist.getTname());
	        updatedTourist.setTgender(tourist.getTgender());
	        updatedTourist.setTdateofbirth(tourist.getTdateofbirth());
	        updatedTourist.setTpassword(tourist.getTpassword());
	        updatedTourist.setTemail(tourist.getTemail());
	        updatedTourist.setTlocation(tourist.getTlocation());
	        updatedTourist.setTcontact(tourist.getTcontact());

	        touristrepository.save(updatedTourist);
	        
	        return "Tourist Updated Successfully";
	    } else {
	        return "Tourist Not Found";
	    }
	}

	@Override
	public long hostcount() {
		// TODO Auto-generated method stub
		return hostrepository.count();
	}

	@Override
	public long touristcount() {
		// TODO Auto-generated method stub
		return touristrepository.count();
	}
	
}
