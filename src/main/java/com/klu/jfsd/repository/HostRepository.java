package com.klu.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.model.Host;

@Repository
public interface HostRepository extends JpaRepository<Host, Integer>{

}
