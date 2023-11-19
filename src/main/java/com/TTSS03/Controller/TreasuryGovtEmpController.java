package com.TTSS03.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.AdminLogin;
import com.TTSS03.Entity.LoginCredentials;
import com.TTSS03.Entity.TreasuryGovt;
import com.TTSS03.Service.TreasuryGovtService;

import jakarta.servlet.http.HttpSession;
@RestController
@RequestMapping("/api")
public class TreasuryGovtEmpController {
	
	@Autowired
	TreasuryGovtService treasuryGovtService;
	
	
	
	@GetMapping("/findteacher")
	public ResponseEntity<List<TreasuryGovt>>findteacherByTreasuryId(@RequestParam String treasuryid){
		List<TreasuryGovt> byTreasuryId = treasuryGovtService.getByTreasuryId(treasuryid);
		
		return ResponseEntity.ok(byTreasuryId);
	}
	
	@PostMapping("/teacher/login")
	public ResponseEntity<String> login(@RequestBody LoginCredentials credentials,  HttpSession session) {
	    Optional<TreasuryGovt> user = treasuryGovtService.findByTreasuryIdAndMobileNumber(credentials.getTreasuryid(), credentials.getMobilenumberteacher());

	    if (user.isPresent()) {
	        return ResponseEntity.ok("Login successful for " + credentials.getTreasuryid());
	    } else {
	        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Login failed");
	    }
	}
	
	@PostMapping("/admin/login")
	public ResponseEntity<String> login(@RequestBody AdminLogin user) {
	    if (treasuryGovtService.isValidUser(user.getUsername(), user.getPassword())) {
	        return ResponseEntity.ok("Login successful!");
	    } else {
	        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Login failed. Please check your username and password.");
	    }
	}

}
