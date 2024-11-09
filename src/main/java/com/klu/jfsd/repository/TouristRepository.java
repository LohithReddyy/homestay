package com.klu.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.model.Tourist;

@Repository
public interface TouristRepository extends JpaRepository<Tourist, Integer>{
	@Query("select c from Tourist c where c.temail=?1 and c.tpassword=?2")
	public Tourist checkTouristLogin(String email, String password);

}
