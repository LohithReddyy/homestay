package com.klu.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.model.Home;

@Repository
public interface HomeRepository extends JpaRepository<Home, Integer> {
}
