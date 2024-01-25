package com.TTSS03.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.AgencyMaster;
import com.TTSS03.Service.AgencyMasterService;

@RestController
@RequestMapping("/api")
public class AgencyMasterController {
	
	@Autowired
	AgencyMasterService agencyMasterService;
	
	
	@GetMapping("/agency")
	public ResponseEntity<List<AgencyMaster>>findAllAgency(){
		List<AgencyMaster> allAgency = agencyMasterService.getAllAgency();
		return ResponseEntity.ok(allAgency);
		
	}

}
