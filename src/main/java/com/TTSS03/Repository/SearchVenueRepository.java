package com.TTSS03.Repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.SearchVenue;

public interface SearchVenueRepository extends JpaRepository<SearchVenue, Integer> {

	
	@Query("SELECT sv FROM SearchVenue sv WHERE sv.vid = :vid")
	List<SearchVenue> findByVId(@Param("vid") int vid);

}
