package com.TTSS03.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.SearchVenue;
import com.TTSS03.Service.SearchVenueService;

@RestController
@RequestMapping("/api")
public class SearchVenueController {
	
	
	@Autowired
	private SearchVenueService searchVenueService;
	
	@GetMapping("/search/venue")
	public ResponseEntity<List<SearchVenue>>findAllVenue(SearchVenue searchVenue){
		
		List<SearchVenue> venue = searchVenueService.findAllVenue(searchVenue);
		
		return  ResponseEntity.ok(venue);
		
	}
	@GetMapping("/search/venueId")

    public ResponseEntity<List<SearchVenue>>findVenue(@RequestParam int vid){
		
		List<SearchVenue> venue = searchVenueService.findByVenueid(vid);
		
		return  ResponseEntity.ok(venue);
		
	}
}

