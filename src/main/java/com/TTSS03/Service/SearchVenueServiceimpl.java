package com.TTSS03.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.SearchVenue;
import com.TTSS03.Repository.SearchVenueRepository;

@Service
public class SearchVenueServiceimpl implements SearchVenueService {
	
	@Autowired
	private SearchVenueRepository SearchVenueRepo;

	@Override
	public List<SearchVenue> findByVenueid(String vid) {
		List<SearchVenue> venue = SearchVenueRepo.findByVId(vid);
		return venue;	}

	@Override
	public List<SearchVenue> findAllVenue(SearchVenue searchVenue) {
		List<SearchVenue> allVenue = SearchVenueRepo.findAll();
		return allVenue;
	}


}
