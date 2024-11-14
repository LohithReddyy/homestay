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
}
