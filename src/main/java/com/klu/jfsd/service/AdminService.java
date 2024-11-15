package com.klu.jfsd.service;

import java.util.List;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;

public interface AdminService {
    public Admin checkAdminLogin(String username, String password);
    public List<Host> viewAllHosts();
    public List<Tourist> viewAllTourists();
    public String addHost(Host host);
    public String deleteHost(int id);
    public String updateHost(int id, Host host);
    public String addTourist(Tourist tourist);
    public String deleteTourist(int id);
    public String updateTourist(int id, Tourist tourist);
    public long hostcount(); 
    public long touristcount(); 
}
