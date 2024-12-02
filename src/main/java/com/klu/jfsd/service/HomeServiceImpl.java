package com.klu.jfsd.service;

import com.klu.jfsd.model.Home;
import com.klu.jfsd.repository.HomeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    private HomeRepository homeRepository;

    @Override
    public List<Home> viewAllHomes() {
        return homeRepository.findAll();
    }

    @Override
    public Home addHome(Home home) {
        return homeRepository.save(home);
    }

    @Override
    public String deleteHome(int id) {
        if (homeRepository.existsById(id)) {
            homeRepository.deleteById(id);
            return "Home deleted successfully.";
        } else {
            return "Home not found.";
        }
    }

    @Override
    public String updateHome(int id, Home home) {
        Optional<Home> existingHome = homeRepository.findById(id);
        if (existingHome.isPresent()) {
            Home updatedHome = existingHome.get();
            updatedHome.setName(home.getName());
            updatedHome.setLocation(home.getLocation());
            updatedHome.setAc(home.isAc());
            updatedHome.setMaxAdults(home.getMaxAdults());
            updatedHome.setType(home.getType());
            updatedHome.setAvailable(home.isAvailable());

            homeRepository.save(updatedHome);
            return "Home updated successfully.";
        } else {
            return "Home not found.";
        }
    }
}
