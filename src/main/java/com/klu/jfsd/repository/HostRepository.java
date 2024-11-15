package com.klu.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.model.Host;
import com.klu.jfsd.model.Tourist;

@Repository
public interface HostRepository extends JpaRepository<Host, Integer>{
	@Query("select c from Host c where c.hemail=?1 and c.hpassword=?2")
	public Host checkHostLogin(String email, String password);
	
	
}
