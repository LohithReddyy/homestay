package com.klu.jfsd.service;

import com.klu.jfsd.model.Home;

import java.util.List;

public interface HomeService {
    List<Home> viewAllHomes();
    Home addHome(Home home);
    String deleteHome(int id);
    String updateHome(int id, Home home);
}
